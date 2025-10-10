class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev23+6fd38e3/easyrunner_cli-0.6.0.dev23+6fd38e3-py3-none-any.whl"
  sha256 "ac0f87ecbdaff296f897c8515def3a9b912d0a897d872ddc81d96e371fce8295"
  version "0.6.0.dev23+6fd38e3"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
