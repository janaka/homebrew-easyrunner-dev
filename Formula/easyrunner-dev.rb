class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev27+ccf85dc/easyrunner_cli-0.6.0.dev27+ccf85dc-py3-none-any.whl"
  sha256 "1912c59b541028470ef354de549090e30f81853613837992a7ca0d8f0921cd3f"
  version "0.6.0.dev27+ccf85dc"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
