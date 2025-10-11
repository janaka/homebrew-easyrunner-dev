class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev39+3f70902/easyrunner_cli-0.6.0.dev39+3f70902-py3-none-any.whl"
  sha256 "088b3b7cf55a2d27a1e21aa2c81dfcbe7b9d0e5c1ff28429ebcdc1d1c3c89004"
  version "0.6.0.dev39+3f70902"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
