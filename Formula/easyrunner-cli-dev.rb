class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "EasyRunner CLI - Development version"
  homepage "https://easyrunner.xyz"
  url "https://files.pythonhosted.org/packages/e2/18/1a09f98dae8d3dc65bf465845c2b53c94df707c20e448054a52747099d8b/easyrunner_cli-0.0.8.dev107.tar.gz"
  sha256 "95e0ffbc922fbde41878f4965a11a9b5fcaba4444803ca7972366c9d58fcc258"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
