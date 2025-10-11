class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev40+b02b67d/easyrunner_cli-0.6.0.dev40+b02b67d-py3-none-any.whl"
  sha256 "4b104c52e2d929dd926c8d9475ac6abed1ff2b2620e6c40f746d64baa8d11501"
  version "0.6.0.dev40+b02b67d"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
