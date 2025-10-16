class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/38/ce/26986f429cd63689c97f01504ecdf81be53d74a1a8e441e77cd73f9a511f/easyrunner_cli-0.0.8.dev103.tar.gz"
  sha256 "1f78c295e7559f515d8a25df35955d27f99f5b8c1b13901c8e63395524c1a222"
  version "0.0.8.dev103"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
