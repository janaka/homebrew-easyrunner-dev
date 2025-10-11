class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev42+177c703/easyrunner_cli-0.6.0.dev42+177c703-py3-none-any.whl"
  sha256 "1ce0e40a683859403bedfdc1a1a5f3da6af1a958a89b6a246a503f6fa9848dfe"
  version "0.6.0.dev42+177c703"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
