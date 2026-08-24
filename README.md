# homebrew-ctrlr

Homebrew tap for [ctrlr](https://github.com/capydev42/ctrlr) — turn your shell
history into a searchable command palette.

```bash
brew install capydev42/ctrlr/ctrlr
```

Then add the shell integration (this is not done by brew):

```bash
ctrlr init
```

## Formula/ctrlr.rb is generated

Every ctrlr release renders the formula from `packaging/homebrew/ctrlr.rb.tmpl`
in the main repo and pushes the result here, with the sha256 values taken from
that release's `checksums.txt`. Edit the template there — a change made to the
formula in this repo is overwritten by the next release.
