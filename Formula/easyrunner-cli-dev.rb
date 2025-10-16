class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/1d/19/40db6704853f0150f7ad1632926dc2cbcee896287af28fbfcfe3df4ca8db/easyrunner_cli-0.0.8.dev114.tar.gz"
  sha256 "c4a8f52733556ea1c283f58727c4d2bfea2e8034e03e07ae12fe7de399f9159e"

  depends_on "python@3.13"

  def install
    # Create a virtual environment and install the package with all dependencies
    python = Formula["python@3.13"].opt_bin/"python3"
    venv = libexec/"venv"
    system python, "-m", "venv", venv
    pip = venv/"bin/pip"
    system pip, "install", "--upgrade", "pip"
    system pip, "install", "--upgrade", "setuptools", "wheel"
    system pip, "install", "easyrunner-cli==#{version}"
    
    # Create wrapper script for the er command
    bin.install_symlink venv/"bin/er"
  end

  test do
    system bin/"er", "--version"
  end
end
