# Lens

Data file viewers for JetBrains IDEs and VS Code, from Twilight Ventures. They open
big JSONL, log, Parquet, SQLite and Excel files in place, paging through them
instead of loading everything into memory. None of them make network calls or
collect anything: your files stay on your machine.

## The plugins

- [JSONL Lens](https://plugins.jetbrains.com/plugin/33397) is a JSONL viewer for
  IntelliJ IDEA, PyCharm and the rest of the JetBrains family: it reads .jsonl and
  .ndjson, gzipped included, however large.
- [Log Lens](https://plugins.jetbrains.com/plugin/33416) is a log viewer built for
  large files, in plain, JSONL, logfmt and ANSI flavors, and can follow them as
  they grow.
- [Parquet Lens](https://plugins.jetbrains.com/plugin/33510) is a Parquet viewer
  that opens Parquet, Arrow and Feather datasets straight from the editor, no
  export step.
- [SQLite Lens](https://plugins.jetbrains.com/plugin/33684) is a read-only SQLite
  viewer: browse the schema, page through tables, inspect cells, without loading
  or locking the database.
- [XLSX Lens](https://plugins.jetbrains.com/plugin/33721) does the same for Excel
  workbooks: a read-only .xlsx viewer that pages sheets of any size.

Each listing also carries a Lens Suite page on how the family fits together:
[JSONL](https://plugins.jetbrains.com/plugin/33397-jsonl-lens-ndjson-viewer/lens-suite),
[Log](https://plugins.jetbrains.com/plugin/33416-log-lens-large--structured-log-viewer-jsonl-logfmt-ansi-/lens-suite),
[Parquet](https://plugins.jetbrains.com/plugin/33510-parquet-lens-parquet-arrow--feather-dataset-viewer/lens-suite),
[SQLite](https://plugins.jetbrains.com/plugin/33684-sqlite-lens-sqlite-database-file-viewer/lens-suite).

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

This repository is the tracker for every Lens plugin. If something breaks or you
want a plugin to do more, [open an issue](https://github.com/twilightventures13/lens/issues/new/choose)
and pick a template. SUPPORT.md covers what helps a bug report get fixed fast.
