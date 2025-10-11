class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev32+71ec42d/easyrunner_cli-0.6.0.dev32+71ec42d-py3-none-any.whl"
  sha256 "7d8ac7ce15d33612441799c58c636b897c2354002ce15f51e388796b981b6900"
  version "0.6.0.dev32+71ec42d"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
