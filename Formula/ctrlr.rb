# Rendered by packaging/homebrew/render-formula.sh from a release's
# checksums.txt, then pushed to the tap repo. Do not edit the copy in the tap.
class Ctrlr < Formula
  desc "Turn your shell history into a searchable command palette"
  homepage "https://github.com/capydev42/ctrlr"
  version "0.11.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.4/ctrlr-aarch64-apple-darwin.tar.gz"
      sha256 "90c04f8f62403829cd4543b5177a9d97887613fe57c1db4089f8cd25a308c2cf"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.4/ctrlr-x86_64-apple-darwin.tar.gz"
      sha256 "b0a43053ba6f8f0262f90b81e2c2e31d74a1acd56c8853f152892227ee482403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.4/ctrlr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d12e5963adf4695a3f0bd1568228b10913e40d688ff2e1d93ac54243ddf765fe"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.4/ctrlr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "387e05ba763d104f1291c8a4f098bba86b9b25509171a135598aebd3e28a7c09"
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
