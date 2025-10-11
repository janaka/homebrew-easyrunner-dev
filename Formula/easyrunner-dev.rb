class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev36+f6c360d/easyrunner_cli-0.6.0.dev36+f6c360d-py3-none-any.whl"
  sha256 "9479d2a9616bb207c51e26ee7a18136ef98b7fde15b20952a821300cc72245d8"
  version "0.6.0.dev36+f6c360d"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
