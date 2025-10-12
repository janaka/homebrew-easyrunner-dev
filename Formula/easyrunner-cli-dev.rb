class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.0.8.dev71+554e293/easyrunner_cli-0.0.8.dev71+554e293-py3-none-any.whl"
  sha256 "b57799eda8488cff72f9d60bd5c9d80ed83a2fd0f0a5ef454f0003bf93687649"
  version "0.0.8.dev71+554e293"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
