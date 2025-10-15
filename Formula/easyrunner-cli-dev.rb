class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/82/9f/4e363d7ca667d9914b33e82a295aadd0109b422090efeb5a97840ad8a133/easyrunner_cli-0.0.8.dev96.tar.gz"
  sha256 "a19a4063303a374a69403541e4b051b86234471aabaed9c02a9c64268bf0d701"
  version "0.0.8.dev96"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
