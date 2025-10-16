class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/c3/af/d7306341d8c3ecd1a196da507dc85d4b7faff0170c095fefcc7d0b7416f6/easyrunner_cli-0.0.8.dev100.tar.gz"
  sha256 "d42916f01c673c833e982ea76a7f0025b4707dd5abe9386de639aa31a1d111be"
  version "0.0.8.dev100"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
