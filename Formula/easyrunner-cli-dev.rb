class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.0.8.dev74%2B95e7890/easyrunner_cli-0.0.8.dev74+95e7890-py3-none-any.whl"
  sha256 "143a93f79b44adfe4f0364b9592ad94c42ddc57922cd1911f3c096584cbbd6c5"
  version "0.0.8.dev74+95e7890"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
