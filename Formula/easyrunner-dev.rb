class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev26+1d12998/easyrunner_cli-0.6.0.dev26+1d12998-py3-none-any.whl"
  sha256 "501e232790b23212bfe1fbbeec9187667d9686dc751d16db042294adc0f7d2a7"
  version "0.6.0.dev26+1d12998"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
