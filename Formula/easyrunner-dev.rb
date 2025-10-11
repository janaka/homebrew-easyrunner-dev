class EasyrunnerDev < Formula
  include Language::Python::Virtualenv

  desc "Development builds of EasyRunner - Single server self-hosting PaaS"
  homepage "https://github.com/janaka/easyrunner"
  url "https://github.com/janaka/easyrunner/releases/download/v0.6.0.dev45+9c490bb/easyrunner_cli-0.6.0.dev45+9c490bb-py3-none-any.whl"
  sha256 "8cfcf6d14b83657162381fa784d23993c0236fabe3b705502fbe4c7b2aa44f5f"
  version "0.6.0.dev45+9c490bb"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"er", "--version"
  end
end
