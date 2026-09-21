# Rendered by packaging/homebrew/render-formula.sh from a release's
# checksums.txt, then pushed to the tap repo. Do not edit the copy in the tap.
class Ctrlr < Formula
  desc "Turn your shell history into a searchable command palette"
  homepage "https://github.com/capydev42/ctrlr"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.3/ctrlr-aarch64-apple-darwin.tar.gz"
      sha256 "2774d3ceb2df199e449d8d018209c85f505c594ae3ce2f6ddb212559766d083f"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.3/ctrlr-x86_64-apple-darwin.tar.gz"
      sha256 "ed0806880dd9d63ca6c928fd3a12654d60160a26bbfd8b7b88934ca9ccfb0707"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.3/ctrlr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc3c1e0e547401f05109e339a9e1002e9124bbc0b23f89774210d78db9201291"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.3/ctrlr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5e8f00f7593fdc567144cd7b84a73348106d96f82cfb1087c558ca4ea7272c0"
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
