class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/97/ee/fad5867b12af9882aaae2cd4bb682a24ae009d72dcd62477aeec54a56ff7/easyrunner_cli-0.0.8.dev111.tar.gz"
  sha256 "9bac1da6b3cb50d3ad730d689fb54ce3788a90f9ff102c9fa35d5ec06762bf7c"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
