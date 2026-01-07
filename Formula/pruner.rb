class Pruner < Formula
  desc "Code formatter orchestrator built with Treesitter"
  homepage "https://github.com/julienvincent/pruner"
  license "MIT"
  version "1.0.0-alpha.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/julienvincent/pruner/releases/download/v1.0.0-alpha.4/pruner-macos-amd64"
      sha256 "fbd54da10808f78a69dd257ed594c1e24d9e8d1692a1b0be24805566dafd18d8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/julienvincent/pruner/releases/download/v1.0.0-alpha.4/pruner-macos-arm64"
      sha256 "fbd54da10808f78a69dd257ed594c1e24d9e8d1692a1b0be24805566dafd18d8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/julienvincent/pruner/releases/download/v1.0.0-alpha.4/pruner-linux-amd64"
      sha256 "0ef14b2078d00cf060203ba79477c829abc18018b7b665f2199c5a47a32e2d2b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/julienvincent/pruner/releases/download/v1.0.0-alpha.4/pruner-linux-arm64"
      sha256 "5ce764411e5517ad60c46ed66a6fcee722a1b981740a772adccbd5cdf6ad91c7"
    end
  end

  def install
    bin.install Dir["pruner-*"].first => "pruner"
  end
end
