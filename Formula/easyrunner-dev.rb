class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev31+bfacb7d/easyrunner_cli-0.6.0.dev31+bfacb7d-py3-none-any.whl"
  sha256 "8484546403efed60e0058c0d03d1329fb9c7fabbd4ca58f86bffbc9a515912f2"
  version "0.6.0.dev31+bfacb7d"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
