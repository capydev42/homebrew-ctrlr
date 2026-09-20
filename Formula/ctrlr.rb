# Rendered by packaging/homebrew/render-formula.sh from a release's
# checksums.txt, then pushed to the tap repo. Do not edit the copy in the tap.
class Ctrlr < Formula
  desc "Turn your shell history into a searchable command palette"
  homepage "https://github.com/capydev42/ctrlr"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.2/ctrlr-aarch64-apple-darwin.tar.gz"
      sha256 "d0fae9fb0ab98cb05f1fdb0752a7874f8fb267f5f2c91c1a5dfb21fa6f43e455"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.2/ctrlr-x86_64-apple-darwin.tar.gz"
      sha256 "325d95e42d3839bc095688b53002b4ad4be6e8ed9e36219e084d91209adf8bdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.2/ctrlr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28512ebf964fbfaa949e70c0ccc9bb71d7fea5f55fe253c22a4d65447dd2cd75"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.2/ctrlr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec6a45e586048bf289b3b948999f5e18e5317ac6af7859f74ea2327540772c43"
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
