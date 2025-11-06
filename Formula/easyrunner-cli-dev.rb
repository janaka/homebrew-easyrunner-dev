class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/5c/2b/3468c9a9c6f997f015fcf9e97120dd5adb7eed2b00f8d92672cf809bcb18/easyrunner_cli-0.0.8.dev131.tar.gz"
  sha256 "50d78a432d1e78de092ccb167d11bd30862c30bd966b422f3f5e62bb6dad9c82"

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
    system pip, "install", "easyrunner-cli==0.0.8.dev131"
    
    # Create wrapper script for the er command
    bin.install_symlink venv/"bin/er"
  end

  test do
    system bin/"er", "--version"
  end
end
