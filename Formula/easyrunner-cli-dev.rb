class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.0.8.dev73%2B46161f6/easyrunner_cli-0.0.8.dev73+46161f6-py3-none-any.whl"
  sha256 "3b4e46f27c38fb2cfe9cf36a3e257361bf89a776e34592cfb434fb528568842e"
  version "0.0.8.dev73+46161f6"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
