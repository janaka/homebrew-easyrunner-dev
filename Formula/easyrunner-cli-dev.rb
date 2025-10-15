class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/3e/cc/0bcac58d187e16c394c82db70d5e77efd83282c445861f32a6ccd19c3b71/easyrunner_cli-0.0.8.dev93-py3-none-any.whl"
  sha256 "4415fd2723df51f498b06a8a53ed473a4f64e90c17583555451c448f2a3ce865"
  version "0.0.8.dev93"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
