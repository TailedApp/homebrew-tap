# Generated with JReleaser 1.9.0 at 2023-12-28T10:53:28.2552902Z
class Tailed < Formula
  desc "Simple and quick monitoring of short-term processes over the web."
  homepage "https://tailed.live/"
  version "0.1.5"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TailedApp/cli/releases/download/v0.1.5/tailed-0.1.5-aarch64-apple-darwin.zip"
    sha256 "5422d7dc2830b468dc0754cb4325868624198388578f8c8f978b1b6f14be0dc0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/TailedApp/cli/releases/download/v0.1.5/tailed-0.1.5-x86_64-apple-darwin.zip"
    sha256 "dc531f98a6332427ca373e82f5127c59eae710e4b5a56ebf7d28fe6e4db9abc6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tailed" => "tailed"
  end

  test do
    output = shell_output("#{bin}/tailed --version")
    assert_match "0.1.5", output
  end
end
