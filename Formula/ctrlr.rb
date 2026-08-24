# Rendered by packaging/homebrew/render-formula.sh from a release's
# checksums.txt, then pushed to the tap repo. Do not edit the copy in the tap.
class Ctrlr < Formula
  desc "Turn your shell history into a searchable command palette"
  homepage "https://github.com/capydev42/ctrlr"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.10.0/ctrlr-aarch64-apple-darwin.tar.gz"
      sha256 "008dad98c03a8785147f5c2de21c44e8e27573fdbe740b68e9a1354d712129e5"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.10.0/ctrlr-x86_64-apple-darwin.tar.gz"
      sha256 "dc2e4e6ba3660f23be602add1e58a81dcdb55b0811006874d01452978011ce28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.10.0/ctrlr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07e92310c81267b5af75e0f0a66efff2c0a476ec8a9657e1d87b69e83f12d91c"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.10.0/ctrlr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c2234cd677c0155cb46cc70aa257afbdaf06aecddbada3d31f211a6d6913da0"
    end
  end

  def install
    bin.install "ctrlr"
  end

  def caveats
    <<~EOS
      Shell integration is not installed by brew. Add it with:
        ctrlr init
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ctrlr --version")
  end
end
