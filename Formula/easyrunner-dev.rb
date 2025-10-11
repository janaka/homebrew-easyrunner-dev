class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev28+ba1dcbb/easyrunner_cli-0.6.0.dev28+ba1dcbb-py3-none-any.whl"
  sha256 "9594889c1e0bdc2b86af09de93d89db2be5dc734a13c68470261959a37aa5ad7"
  version "0.6.0.dev28+ba1dcbb"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
