# Mesa Homebrew Tap

The official [Homebrew](https://brew.sh) tap for [Mesa](https://www.mesa.dev) products.

## What is Mesa?

Mesa provides senior-level code review for engineering teams. Mesa's agents adapt to your codebase and style guides, reviewing changes in the context of your overall architecture -- not just the PR diff. Learn more at [mesa.dev](https://www.mesa.dev).

## What is a Homebrew Tap?

A tap is a third-party repository of Homebrew packages (called "formulae"). Adding this tap lets you install Mesa's tools with a single command. For more on taps, see the [Homebrew docs](https://docs.brew.sh/Taps).

## Quick Start

Install a Mesa formula directly (this adds the tap automatically):

```sh
brew install mesa-dot-dev/tap/<formula>
```

Or add the tap first, then install:

```sh
brew tap mesa-dot-dev/tap
brew install <formula>
```

## Available Packages

*No formulas published yet. Check back soon.*

## Updating

After adding the tap, Homebrew keeps it up to date automatically. To manually update:

```sh
brew update
```

Then upgrade installed packages:

```sh
brew upgrade
```

## Troubleshooting

**Tap not found?** Make sure you have Homebrew installed ([brew.sh](https://brew.sh)), then try:

```sh
brew tap mesa-dot-dev/tap
```

**Formula conflicts?** If another tap provides a formula with the same name, use the fully qualified name:

```sh
brew install mesa-dot-dev/tap/<formula>
```

**Other issues?** [Open an issue](https://github.com/mesa-dot-dev/homebrew-tap/issues) on this repository.

## Learn More

- [Mesa](https://www.mesa.dev) -- Mesa's homepage
- [Homebrew](https://brew.sh) -- The missing package manager for macOS (and Linux)
- [Homebrew Taps](https://docs.brew.sh/Taps) -- How third-party taps work
