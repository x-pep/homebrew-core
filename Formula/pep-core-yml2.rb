class PepCoreYml2 < Formula
  include Language::Python::Virtualenv

  desc "YML2"
  homepage "https://fdik.org/yml/toolchain"
  version "5.5"

  url "https://github.com/x-pep/yml2/archive/f8b8a5d97a2a12d785a60bcdcefce2ac8c6f9127.zip"
  sha256 "468d7d20def6fb308723493936482500c15cc0b6ebbd8808737efa9075ac1c26"

  depends_on "python" if MacOS.version <= :snow_leopard
  # One day: depends_on "python3"
  depends_on "libxml2"

  # Copied from Ansible /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/ansible.rb
  resource "lxml" do
      url "https://files.pythonhosted.org/packages/e1/4c/d83979fbc66a2154850f472e69405572d89d2e6a6daee30d18e83e39ef3a/lxml-4.1.1.tar.gz"
      sha256 "940caef1ec7c78e0c34b0f6b94fe42d0f2022915ffc78643d28538a5cfd0f40e"
  end

  def install 
      virtualenv_install_with_resources
  end

end

