# Lens

Website: https://twilightventures.dev

Support: support@twilightventures.dev (name the product and its version). Bugs and requests: [the issues page](https://github.com/twilightventures13/lens/issues).

The terms and policies the store listings link to are in this repository: the Pro EULA of each JetBrains plugin ([EULA-jsonl-lens-pro.md](EULA-jsonl-lens-pro.md), [EULA-log-lens-pro.md](EULA-log-lens-pro.md), [EULA-parquet-lens-pro.md](EULA-parquet-lens-pro.md), [EULA-sqlite-lens-pro.md](EULA-sqlite-lens-pro.md), [EULA-duckdb-lens-pro.md](EULA-duckdb-lens-pro.md), [EULA-xlsx-lens-pro.md](EULA-xlsx-lens-pro.md), [EULA-notebook-lens-pro.md](EULA-notebook-lens-pro.md), [EULA-heapdump-lens-pro.md](EULA-heapdump-lens-pro.md)), [PRIVACY.md](PRIVACY.md), [SECURITY.md](SECURITY.md) and [SUPPORT.md](SUPPORT.md).

Data file viewers for JetBrains IDEs and VS Code, from twilight ventures. They open
big JSONL, log, Parquet, Avro, TFRecord, SQLite, DuckDB, Excel workbooks (.xlsx), Jupyter notebook and JVM heap dump
files in place,
paging through them instead of loading everything into memory. The JetBrains plugins
make no network calls, and their licensing is the IDE's own; the VS Code builds make
none either, apart from the two a pasted Pro key makes, one to activate it and one to
release it when you remove the key. None of them collect anything: your files stay on
your machine.

On Atlassian, Lens File Viewer for Confluence (in review on the Atlassian Marketplace) and
[Lens File, Log, & Attachment Viewer for Jira](https://marketplace.atlassian.com/apps/249455342/lens-file-log-attachment-viewer-for-jira)
open a CSV, JSONL, Parquet or Excel attachment on a Confluence page or a Jira issue as a
paged table, and the Jira app opens log attachments too. The file is read as the viewing
user and never leaves your Atlassian site.

## The plugins

- [JSONL Lens](https://plugins.jetbrains.com/plugin/33397) is a JSONL viewer for
  IntelliJ IDEA, PyCharm and the rest of the JetBrains family: it reads .jsonl and
  .ndjson, gzipped included, however large.
- [Log Lens](https://plugins.jetbrains.com/plugin/33416) is a log viewer built for
  large files, in plain, JSONL, logfmt and ANSI flavors, and can follow them as
  they grow.
- [Parquet Lens](https://plugins.jetbrains.com/plugin/33510) is a Parquet viewer
  that opens Parquet, Avro, TFRecord, Arrow and Feather datasets straight from the editor, no
  export step.
- [SQLite Lens](https://plugins.jetbrains.com/plugin/33684) is a read-only SQLite
  viewer: browse the schema, page through tables, inspect cells, without loading
  or locking the database.
- [DuckDB Lens](https://plugins.jetbrains.com/plugin/33853) is its DuckDB
  counterpart: a read-only viewer for .duckdb files, every schema in a tree,
  tables paged in constant memory.
- [XLSX Lens](https://plugins.jetbrains.com/plugin/33721) does the same for Excel
  workbooks: a read-only .xlsx viewer that pages sheets of any size.

[Notebook Lens](https://plugins.jetbrains.com/plugin/33811) needs no kernel and no
Jupyter install. It renders Jupyter notebooks as readable documents, outputs
included.

[Heap Dump Lens](https://plugins.jetbrains.com/plugin/33908) reads JVM heap dumps,
thread dumps and GC logs. The .hprof summaries and class histograms are free;
retained sizes and dominator trees are Pro.

Notebook Lens is listed in [awesome-jupyter](https://github.com/markusschanta/awesome-jupyter), and DuckDB Lens in [awesome-duckdb](https://github.com/davidgasquez/awesome-duckdb).

Each listing also carries a Lens Suite page on how the family fits together:
[JSONL](https://plugins.jetbrains.com/plugin/33397-jsonl-lens-json-lines--ndjson-viewer/lens-suite),
[Log](https://plugins.jetbrains.com/plugin/33416-log-lens-large--structured-log-viewer-jsonl-logfmt-ansi-/lens-suite),
[Parquet](https://plugins.jetbrains.com/plugin/33510-parquet-lens-parquet-arrow--feather-dataset-viewer/lens-suite),
[SQLite](https://plugins.jetbrains.com/plugin/33684-sqlite-lens-sqlite-database-file-viewer/lens-suite),
[DuckDB](https://plugins.jetbrains.com/plugin/33853-duckdb-lens-duckdb-database-file-viewer/lens-suite),
[XLSX](https://plugins.jetbrains.com/plugin/33721-xlsx-lens-excel-xlsx-spreadsheet-viewer/lens-suite),
[Notebook](https://plugins.jetbrains.com/plugin/33811-notebook-lens-jupyter-ipynb-viewer/lens-suite),
[Heap Dump](https://plugins.jetbrains.com/plugin/33908-heap-dump-lens-jvm-heap-dump-thread-dump--gc-log-viewer/lens-suite).

VS Code builds of JSONL Lens, Parquet Lens and Log Lens are published on
[Open VSX](https://open-vsx.org/namespace/twilightventures) and on the Visual Studio
Marketplace ([JSONL Lens](https://marketplace.visualstudio.com/items?itemName=twilightventures.jsonl-lens-viewer),
[Parquet Lens](https://marketplace.visualstudio.com/items?itemName=twilightventures.parquet-lens-viewer),
[Log Lens](https://marketplace.visualstudio.com/items?itemName=twilightventures.log-lens-viewer)).

## Free and Pro

Every Lens plugin is free to use and stays useful without paying: each one opens
files of any size and pages through them. Search is free on JSONL, Log, Parquet,
SQLite, DuckDB and XLSX Lens; Notebook Lens keeps the free find to the current cell
and puts the scan across every cell in Pro; Heap Dump Lens has no text search, and
its class histogram sorts and filters for free. Pro is the paid tier. What it adds
differs per plugin, so each listing spells out its own split (for example filter
queries, exports, stats, global sort, filtered follow). On Log Lens, following a log
as it grows is free, and following only the lines that match a query is Pro. Each
JetBrains plugin comes with its own free 30-day Pro trial, and a year of continuous
subscription earns JetBrains' perpetual fallback license: the version available when
that year started stays yours for good. The VS Code builds of JSONL Lens, Parquet
Lens and Log Lens are free to use as well; their Pro is one Lens Pro key, bought once,
that covers all three and includes 12 months of updates, and each machine gets a 30-day
Pro trial with no key to enter.

## Bugs and requests

This repository is the tracker for every Lens plugin. If something breaks or you
want a plugin to do more, [open an issue](https://github.com/twilightventures13/lens/issues/new/choose)
and pick a template. SUPPORT.md covers what helps a bug report get fixed fast.
