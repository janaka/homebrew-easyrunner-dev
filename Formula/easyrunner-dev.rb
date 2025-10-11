class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev44+882a3f7/easyrunner_cli-0.6.0.dev44+882a3f7-py3-none-any.whl"
  sha256 "2184ea5782a8b28f371bdb4d43b8182faaabc4d6b3736ab804ae9a11d46e643f"
  version "0.6.0.dev44+882a3f7"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
