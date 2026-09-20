# Rendered by packaging/homebrew/render-formula.sh from a release's
# checksums.txt, then pushed to the tap repo. Do not edit the copy in the tap.
class Ctrlr < Formula
  desc "Turn your shell history into a searchable command palette"
  homepage "https://github.com/capydev42/ctrlr"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.0/ctrlr-aarch64-apple-darwin.tar.gz"
      sha256 "708810e242d6dc2f7778fba25336aff19c826b3f1635fd427272a02e14b2766a"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.0/ctrlr-x86_64-apple-darwin.tar.gz"
      sha256 "834141f2d355488de5e6e7e85f3a9d1601e3bcd9e7a65cc9cb2aa2fbb06b3a0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.0/ctrlr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de908283ac6f444db81a64ca45453dc944298e89161e18a0da89cf80232940a0"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.0/ctrlr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7fa8c8bf214aaaacf6b9a036ad9d12d9e05baf43713136583da12dd2d7b80af7"
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
