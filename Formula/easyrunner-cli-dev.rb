class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/a9/88/ed3429611d741e8abb8223cd7033c02cbee71e0a3ef5f7445c1531095560/easyrunner_cli-0.0.8.dev127.tar.gz"
  sha256 "e427cf68fcafc0f9fc8a61c9806a985a3f614fe951c17f2e8356c13e8234fe7e"

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
    system pip, "install", "easyrunner-cli==0.0.8.dev127"
    
    # Create wrapper script for the er command
    bin.install_symlink venv/"bin/er"
  end

  test do
    system bin/"er", "--version"
  end
end
