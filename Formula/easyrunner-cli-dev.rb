class EasyrunnerCliDev < Formula
  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/f6/c4/61e11a5e9db4675d49845ba0f2654ba26598e0640447fa5a029e0a43618c/easyrunner_cli-0.0.8.dev112.tar.gz"
  sha256 "1641fb32f77adfba24dc2fd6d33178fe84ecf24160f7fe5de565a34115fd4d71"

  depends_on "python@3.13"

  def install
    # Create a virtual environment and install the package with all dependencies
    venv = libexec/"venv"
    system "python3.3.13", "-m", "venv", venv
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
