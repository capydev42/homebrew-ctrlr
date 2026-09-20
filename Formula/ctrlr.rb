# Rendered by packaging/homebrew/render-formula.sh from a release's
# checksums.txt, then pushed to the tap repo. Do not edit the copy in the tap.
class Ctrlr < Formula
  desc "Turn your shell history into a searchable command palette"
  homepage "https://github.com/capydev42/ctrlr"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.1/ctrlr-aarch64-apple-darwin.tar.gz"
      sha256 "e82fbf519472528be29c72f5914e735edc3290e26822544e90944328143fa44c"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.1/ctrlr-x86_64-apple-darwin.tar.gz"
      sha256 "88b9124bcde6353deb6b1857f191f8632ccc4116ca3c9d77e2a791e7e9131b9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.1/ctrlr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b71889129d8b99511bd19747b841f3e10ca71458b1bd4d0efc5391d6e67274f"
    end
    on_intel do
      url "https://github.com/capydev42/ctrlr/releases/download/v0.11.1/ctrlr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00d6db46b8c72948467b7ecd5e85b844092856f96cd661d5c86d959ffef3a91b"
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
