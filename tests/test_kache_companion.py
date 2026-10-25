"""Run the actual formula install methods against both archive layouts."""

import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[1]
ENGINE = """#!/bin/sh
printf 'formula fixture\\n'
"""
FRONTEND = """#!/bin/sh
exec "$(dirname "$0")/kache-engine" "$@"
"""
INSTALL = """
require "fileutils"
require "pathname"

class Formula
  def self.test
  end

  def self.method_missing(*)
    # Platform and metadata declarations do not change the install method.
  end

  def initialize(source, destination)
    @source = Pathname(source)
    @destination = destination
  end

  def buildpath
    @source
  end

  def bin
    Bin.new(@destination)
  end
end

class Bin
  def initialize(path)
    @path = path
  end

  def install(*files)
    FileUtils.mkdir_p(@path)
    files.each { |file| FileUtils.mv(file, File.join(@path, File.basename(file))) }
  end
end

load ARGV[0]
Dir.chdir(ARGV[2]) { Object.const_get(ARGV[1]).new(ARGV[2], ARGV[3]).install }
"""


class CompanionInstallationTests(unittest.TestCase):
    def render(self, root, channel):
        workflow = ROOT / ".github/workflows/update-kache-formula.yml"
        result = subprocess.run(
            ["ruby", "-rjson", "-ryaml", "-e",
             'puts YAML.load_file(ARGV[0])["jobs"]["update-formula"]["steps"]'
             '.find { |step| step["name"] == "Render formula" }["run"].to_json',
             str(workflow)],
            check=True, capture_output=True, text=True,
        )
        formula = root / "Formula/kache.rb"
        name = "Kache" if channel == "stable" else "KacheUnstable"
        environment = dict(
            os.environ, VERSION="1.2.3" if channel == "stable" else "1.2.3-rc.1",
            CHANNEL=channel, FORMULA_FILE=str(formula), FORMULA_CLASS=name,
            FORMULA_DESC="Fixture", SHA256_AARCH64="1" * 64,
            SHA256_X86_64="2" * 64, SHA256_LINUX_AARCH64="3" * 64,
            SHA256_LINUX_X86_64="4" * 64,
        )
        subprocess.run(
            ["bash", "-e", "-c", json.loads(result.stdout)],
            cwd=root, env=environment, check=True, capture_output=True, text=True,
        )
        return formula, name

    def install(self, layout, companion):
        with tempfile.TemporaryDirectory(prefix="kache formula ") as directory:
            root = Path(directory)
            if layout.startswith("rendered-"):
                formula, name = self.render(root, layout.removeprefix("rendered-"))
            else:
                formula = ROOT / "Formula" / f"{layout}.rb"
                name = "Kache" if layout == "kache" else "KacheUnstable"
            source = root / "archive"
            source.mkdir()
            destination = root / "installed/bin"
            frontend = source / "kache"
            frontend.write_text(FRONTEND if companion else ENGINE)
            frontend.chmod(0o755)
            if companion:
                engine = source / "kache-engine"
                engine.write_text(ENGINE)
                engine.chmod(0o755)
            install = subprocess.run(
                ["ruby", "-e", INSTALL, str(formula), name, str(source), str(destination)],
                capture_output=True, text=True,
            )
            self.assertEqual(install.returncode, 0, install.stderr)
            expected = {"kache", "kache-engine"} if companion else {"kache"}
            self.assertEqual({file.name for file in destination.iterdir()}, expected)
            result = subprocess.run(
                [str(destination / "kache"), "--version"],
                check=True, capture_output=True, text=True,
            )
            self.assertEqual(result.stdout, "formula fixture\n")

    def test_legacy_archives_install_and_run(self):
        for layout in ["kache", "kache-unstable", "rendered-stable", "rendered-unstable"]:
            with self.subTest(layout=layout):
                self.install(layout, companion=False)

    def test_companion_archives_install_and_run(self):
        for layout in ["kache", "kache-unstable", "rendered-stable", "rendered-unstable"]:
            with self.subTest(layout=layout):
                self.install(layout, companion=True)


if __name__ == "__main__":
    unittest.main()
