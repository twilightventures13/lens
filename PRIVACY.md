# privacy

last updated 2026-09-05

This page covers every Lens viewer from Twilight Ventures: the eight JetBrains plugins (JSONL Lens, Log Lens, Parquet Lens, SQLite Lens, XLSX Lens, Notebook Lens, DuckDB Lens, Heap Dump Lens) and the two VS Code extensions (JSONL Lens, Parquet Lens Viewer).

The viewers read the file you open, and for a database also the journal and write-ahead sidecar files that sit beside it (the -wal, -shm and -journal files a SQLite or DuckDB database keeps), because those hold the newest pages. Images in a notebook are drawn from the bytes saved inside the notebook; nothing is fetched. The viewers make no network calls, collect no telemetry, keep no account, and never send a file, a file name or a record anywhere. The one network call in any Lens product is the VS Code Pro license key, described below.

On JetBrains IDEs the Pro license state is read from the IDE's own licensing system. The plugin itself never talks to the network; the IDE handles the subscription the way it handles its own.

On VS Code the free viewer makes no network calls at all. Pasting a Pro license key makes one call to Polar, the store that issued it, carrying the key, our store id, a label (your platform name, a hash of your computer name and the extension name) and a digest of the editor's machine id, so the key can be tied to that machine. About once a month the extension checks the key with Polar again, sending the key, its activation id and the same digest. When Polar cannot be reached the key keeps working for up to 45 days and the check is tried again at every start and once a day; after that Pro turns off until a check gets through. Removing the key sends one more call, carrying the key and its activation id, to release the machine. The key itself is kept in VS Code's secret storage on your machine. The record of its activation, kept in VS Code's own storage, is signed with a secret from that secret storage and the machine id, so a copy of the record does not work elsewhere. The 30-day trial is local and makes no call; its start date is written to .twilightventures-lens.json in your home folder as well as to VS Code's own storage, so a new profile does not start a second trial.

What we do receive comes from the stores, not the software. When you buy Pro on the JetBrains Marketplace, JetBrains shows us a customer number, the country and the order; when you buy a key through Polar, Polar shows us the name, email address and country you gave at checkout, the amount, and the key. We keep those order records in our own books for as long as tax law asks, and we use the email address only to answer you. We never sell them, and the only party that sees them beyond us is the tax filing the law requires.

Privacy questions can go to support@twilightventures.dev, or to the issue tracker or the discussions of this repository if you prefer them public.
