class Uuid < Formula
  desc "A CLI tool to generate UUID v1, v3, v4, v5, v6, v7, and v8"
  homepage "https://github.com/antruongnguyen/uuid"
  license "MIT"
  
  on_macos do
    on_arm do
      url "https://github.com/antruongnguyen/uuid/releases/download/v1.0.0/uuid-1.0.0-aarch64-macos.tar.gz"
      sha256 "879294fe11b2d57c919158cb9c89c99d6874592b8df926cb238aef27c9130d58"
    end
    
    on_intel do
      url "https://github.com/antruongnguyen/uuid/releases/download/v1.0.0/uuid-1.0.0-x86_64-macos.tar.gz"
      sha256 "1b01f2bb511cdb4e04c5a1df25884b1727116b12db30016f80e677824827fcd5"
    end
  end
  
  on_linux do
    on_arm do
      url "https://github.com/antruongnguyen/uuid/releases/download/v1.0.0/uuid-1.0.0-aarch64-linux.tar.gz"
      sha256 "78bfe086c926e9a9c9638f46886b84589022f88f3dbbfe05cd8cf090a9ff2428"
    end
    
    on_intel do
      url "https://github.com/antruongnguyen/uuid/releases/download/v1.0.0/uuid-1.0.0-x86_64-linux.tar.gz"
      sha256 "b8368319d728ef7dd8f08871f6a81e38e58866b2562ada41174d7d732bf92e1e"
    end
  end
  
  def install
    bin.install "uuid"
  end

  test do
    assert_match /[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}/, shell_output("#{bin}/uuid")
  end
end
