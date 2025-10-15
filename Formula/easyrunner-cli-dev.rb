class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/0c/2d/2dab54a792b40babd7f96ae5efac8bacadf345a766548076027438c6176b/easyrunner_cli-0.0.8.dev95-py3-none-any.whl"
  sha256 "56525eaf5c5c9bc008499789fe3d61afe06bd049f6f0496d63c82f33613f1d33"
  version "0.0.8.dev95"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
