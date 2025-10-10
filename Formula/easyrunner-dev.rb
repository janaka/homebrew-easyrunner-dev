class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev22+0c322a3/easyrunner_cli-0.6.0.dev22+0c322a3-py3-none-any.whl"
  sha256 "a8c5be8dfc659d93d9958d62b0528162fe56a0678a81dbc6326a2160b450516c"
  version "0.6.0.dev22+0c322a3"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
