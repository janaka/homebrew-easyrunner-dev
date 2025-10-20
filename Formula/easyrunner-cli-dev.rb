class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/ab/14/365a291a8070c7f6533325744c362d0b51bab3034f0ad86c66b3260093b5/easyrunner_cli-0.0.8.dev125.tar.gz"
  sha256 "555f36194ddd1d6fcc178f523d20303d94d21227acd5fe4df773ff3c5b66e85a"

  depends_on "python@3.13"

  def install
    # Create a virtual environment and install the package with all dependencies
    python_version = "3.13"
    python = Formula["python@#{python_version}"].opt_bin/"python#{python_version}"
    venv = libexec/"venv"
    system python, "-m", "venv", venv
    pip = venv/"bin/pip"
    system pip, "install", "--upgrade", "pip"
    system pip, "install", "--upgrade", "setuptools", "wheel"
    system pip, "install", "easyrunner-cli==0.0.8.dev125"
    
    # Create wrapper script for the er command
    bin.install_symlink venv/"bin/er"
  end

  test do
    system bin/"er", "--version"
  end
end
