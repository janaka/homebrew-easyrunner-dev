class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev37+dd49442/easyrunner_cli-0.6.0.dev37+dd49442-py3-none-any.whl"
  sha256 "e7cbfcbb7a07b98c309c95093449df29f9f4ed6c096dc0d56244922c98eb8572"
  version "0.6.0.dev37+dd49442"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
