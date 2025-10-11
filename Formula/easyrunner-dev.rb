class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev34+d12de70/easyrunner_cli-0.6.0.dev34+d12de70-py3-none-any.whl"
  sha256 "770f38d844d51f34e7dac177d9878307adc881605e98b7b66ea9d2a7f7fcfeda"
  version "0.6.0.dev34+d12de70"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
