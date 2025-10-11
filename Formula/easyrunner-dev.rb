class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev25+a30dcf5/easyrunner_cli-0.6.0.dev25+a30dcf5-py3-none-any.whl"
  sha256 "d3b59696996be205e4135fb447a3573a6d2ee5a79a2f981961a3d8aa63ab0442"
  version "0.6.0.dev25+a30dcf5"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
