class Uuid < Formula
  desc "A CLI tool to generate UUID v1, v3, v4, v5, v6, v7, and v8"
  homepage "https://github.com/antruongnguyen/uuid"
  url "https://github.com/antruongnguyen/uuid/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f3d593c5b3df54892deb535ab08b0d5e02fd92146ab3d5b2db9cca5ef401d063"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match /[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}/, shell_output("#{bin}/uuid")
  end
end
