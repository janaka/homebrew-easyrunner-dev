class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev30+13e3c55/easyrunner_cli-0.6.0.dev30+13e3c55-py3-none-any.whl"
  sha256 "e4b83bd7fa263e64d3710f702a11ea2a8413de617216d4c3aec444636dc6ef8b"
  version "0.6.0.dev30+13e3c55"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
