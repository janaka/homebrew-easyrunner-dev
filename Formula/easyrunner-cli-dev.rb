class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/79/de/cc7d51312d1b9990a6f1289edc453e67c1065f50ab891d6c9c432adfa5c8/easyrunner_cli-0.0.8.dev99.tar.gz"
  sha256 "862eea2b9716cc5e90ea783015065e65b0e8ddb79c246e43141856c524af5d53"
  version "0.0.8.dev99"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
