class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/9a/0b/7bd995c53451064346d2f96211c86316a0bf45b7f86d4cf46b3855a93a25/easyrunner_cli-0.0.8.dev101.tar.gz"
  sha256 "719651c63523201a1281710169a92579678cce674e0edcbf9269b20075d14520"
  version "0.0.8.dev101"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
