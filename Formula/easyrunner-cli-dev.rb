class EasyrunnerCliDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://files.pythonhosted.org/packages/81/7d/677e4cd844a35e53b318703cb5d9bd6946457502a75e1807c363b3d6e4ab/easyrunner_cli-0.0.8.dev98.tar.gz"
  sha256 "071b57b431d8e5699d0b0dad9805343f98c21bec4ca719cc488dfd9ac369742b"
  version "0.0.8.dev98"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
