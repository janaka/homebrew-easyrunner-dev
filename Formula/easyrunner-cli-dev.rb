class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.0.8.dev72+e2f2252/easyrunner_cli-0.0.8.dev72+e2f2252-py3-none-any.whl"
  sha256 "a65623c1dcd51158c31fe8adf98be0eab8e7ca254dba5dbae8d2fc4281612f42"
  version "0.0.8.dev72+e2f2252"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
