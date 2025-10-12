class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev46+eac6509/easyrunner_cli-0.6.0.dev46+eac6509-py3-none-any.whl"
  sha256 "9bd7592ecde1f2396e121bd3058a7cf62da64dd2c15c5c65b4ecac501dfc067e"
  version "0.6.0.dev46+eac6509"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
