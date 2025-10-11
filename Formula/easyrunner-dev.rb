class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev38+cf674f2/easyrunner_cli-0.6.0.dev38+cf674f2-py3-none-any.whl"
  sha256 "4513b990b3649561683f7a0e8e1e5548f1456e299714d2365512419ee21ff404"
  version "0.6.0.dev38+cf674f2"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
