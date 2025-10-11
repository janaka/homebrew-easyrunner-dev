class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev33+c040aaf/easyrunner_cli-0.6.0.dev33+c040aaf-py3-none-any.whl"
  sha256 "82941210a9cee00b94e6cceb308439d7651c7a2e629dedd56af94580946f5080"
  version "0.6.0.dev33+c040aaf"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
