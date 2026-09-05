# privacy

last updated 2026-09-05

This page covers every Lens viewer from Twilight Ventures: the eight JetBrains plugins (JSONL Lens, Log Lens, Parquet Lens, SQLite Lens, XLSX Lens, Notebook Lens, DuckDB Lens, Heap Dump Lens) and the two VS Code extensions (JSONL Lens, Parquet Lens Viewer).

The viewers read the file you open, and for a database also the journal and write-ahead sidecar files that sit beside it (the -wal, -shm and -journal files a SQLite or DuckDB database keeps), because those hold the newest pages. Images in a notebook are drawn from the bytes saved inside the notebook; nothing is fetched. The viewers make no network calls, collect no telemetry, keep no account, and never send a file, a file name or a record anywhere. The one network call in any Lens product is the VS Code Pro license key, described below.

On JetBrains IDEs the Pro license state is read from the IDE's own licensing system. The plugin itself never talks to the network; the IDE handles the subscription the way it handles its own.

On VS Code the free viewer makes no network calls at all. Pasting a Pro license key makes one call to Polar, the store that issued it, carrying the key, our store id and the name of your computer, so the key can be tied to that machine. There is no periodic check afterwards; the extension does not call again until you remove the key, which sends one more call to release the machine. The key itself is kept in VS Code's secret storage on your machine. The 14-day trial is local and makes no call.

What we do receive comes from the stores, not the software. When you buy Pro on the JetBrains Marketplace, JetBrains shows us a customer number, the country and the order; when you buy a key through Polar, Polar shows us the name, email address and country you gave at checkout, the amount, and the key. We keep those order records in our own books for as long as tax law asks, and we use the email address only to answer you. We never sell them, and the only party that sees them beyond us is the tax filing the law requires.

Privacy questions can go to twilightventures13@gmail.com, or to the issue tracker or the discussions of this repository if you prefer them public.
