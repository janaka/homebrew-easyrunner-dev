class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev24+352e4c7/easyrunner_cli-0.6.0.dev24+352e4c7-py3-none-any.whl"
  sha256 "83b3f5f2669eb3954b9dedbc76b5c0abd44013cf4830a8e16531016008833ecd"
  version "0.6.0.dev24+352e4c7"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
