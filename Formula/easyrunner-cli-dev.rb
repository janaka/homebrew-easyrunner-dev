class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/79/33/d450b81b381a9a7a71035ee938531df63fffcd90e0cd1721f04b6845e813/easyrunner_cli-0.0.8.dev118.tar.gz"
  sha256 "0310bcb8811f72ab3397140cff79039aacbc4000c47f9c60580b924a9b262065"

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
    system pip, "install", "easyrunner-cli==0.0.8.dev118"
    
    # Create wrapper script for the er command
    bin.install_symlink venv/"bin/er"
  end

  test do
    system bin/"er", "--version"
  end
end
