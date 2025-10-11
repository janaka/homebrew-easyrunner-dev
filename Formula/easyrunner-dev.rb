class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev43+1a30103/easyrunner_cli-0.6.0.dev43+1a30103-py3-none-any.whl"
  sha256 "f6510f097aad10a0809d748022b55bc8b504d44265d584a01d2d090c0ed034ea"
  version "0.6.0.dev43+1a30103"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
