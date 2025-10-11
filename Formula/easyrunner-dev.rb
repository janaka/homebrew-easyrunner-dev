class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev41+3e57da2/easyrunner_cli-0.6.0.dev41+3e57da2-py3-none-any.whl"
  sha256 "393aaf7fdded8cb9068bb77a6f250fd34ced78b582071fb2cec961934c2163e7"
  version "0.6.0.dev41+3e57da2"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
