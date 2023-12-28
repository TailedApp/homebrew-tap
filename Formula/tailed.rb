# Generated with JReleaser 1.9.0 at 2023-12-28T09:15:04.47610917Z
class Tailed < Formula
  desc "Simple and quick monitoring of short-term processes over the web."
  homepage "https://tailed.live/"
  version "0.1.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TailedApp/cli/releases/download/v0.1.1/tailed-0.1.1-darwin-aarch_64.zip"
    sha256 "b02b0ecda9a5e62b1fbc39b60e603f74ea9fbecf5a6111ce7479724a1a48d29b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/TailedApp/cli/releases/download/v0.1.1/tailed-0.1.1-darwin-amd64.zip"
    sha256 "2d1c9cca46a51df2de6ca4d71f66f2151a0fc926a827d7b6495fd0b9c0a9a571"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tailed" => "tailed"
  end

  test do
    output = shell_output("#{bin}/tailed --version")
    assert_match "0.1.1", output
  end
end
