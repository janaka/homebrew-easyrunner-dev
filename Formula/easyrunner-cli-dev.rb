class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/8a/36/d2781867554974978cb8229383dadd181deb51ef1de4f7279a8da423504d/easyrunner_cli-0.0.8.dev113.tar.gz"
  sha256 "a4e44616324d8552ace6558becad0f6c2f95a3493cc4d365911a76a203b6b039"

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
