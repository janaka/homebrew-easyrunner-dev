class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/9c/64/3fc43564f411b08153840747ac301e0744562d48bab806cb92533cc74e4e/easyrunner_cli-0.0.8.dev97.tar.gz"
  sha256 "1af2986b76a1e18c218d7fbc1ca16a28288ea43c4bc47544521f2c8a226997ec"
  version "0.0.8.dev97"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
