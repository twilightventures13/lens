# Lens

Data file viewers for JetBrains IDEs and VS Code, from Twilight Ventures. They open
big JSONL, log, Parquet, Arrow and Feather files in place, paging through them
instead of loading everything into memory. None of them make network calls or
collect anything: your files stay on your machine.

## The plugins

- [JSONL Lens](https://plugins.jetbrains.com/plugin/33397) reads .jsonl and .ndjson,
  gzipped included, however large.
- [Log Lens](https://plugins.jetbrains.com/plugin/33416) handles large log files in
  plain, JSONL, logfmt and ANSI flavors, and can follow them as they grow.
- [Parquet Lens](https://plugins.jetbrains.com/plugin/33510) opens Parquet, Arrow
  and Feather datasets straight from the editor, no export step.

VS Code builds of JSONL Lens and Parquet Lens Viewer are published on
[Open VSX](https://open-vsx.org/namespace/twilightventures).

## Free and Pro

The viewers are free and stay useful without paying: browse, search, follow, page
through files of any size. Pro adds a power layer that differs per plugin, so each
listing spells out its own split (filter queries, exports, stats, global sort,
filtered follow). One 30-day trial covers enough time to try the whole family, and
a Pro license keeps working perpetually for every version released while it was
active. Pro is new features, never a takeback.

## Bugs and requests

This repository is the tracker for all three plugins. If something breaks or you
want a plugin to do more, [open an issue](https://github.com/twilightventures13/lens/issues/new/choose)
and pick a template. SUPPORT.md covers what helps a bug report get fixed fast.
