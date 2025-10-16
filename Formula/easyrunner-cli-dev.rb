class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/75/96/ebef7cfffa1a8685f10227da59069a58e2d13cbc5d9c70f99b9c84d0fea8/easyrunner_cli-0.0.8.dev102.tar.gz"
  sha256 "401ea2128c93dc25e98670b7b8ea9387c2a3ff390cb273b60a7f9df0d6aba055"
  version "0.0.8.dev102"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
