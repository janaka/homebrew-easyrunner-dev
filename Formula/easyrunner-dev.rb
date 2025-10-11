class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev35+42859c6/easyrunner_cli-0.6.0.dev35+42859c6-py3-none-any.whl"
  sha256 "41a5990a6edf9067014a1ae3983622c50a0752ce23cb50e713c53dcba375598d"
  version "0.6.0.dev35+42859c6"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
