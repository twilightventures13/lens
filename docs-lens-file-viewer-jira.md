# Lens File Viewer for Jira

Open CSV, Excel XLSX, JSONL, Parquet and log attachments as paged tables on the Jira issue.

## Install

Install the app from its Atlassian Marketplace listing, or in Jira under Settings, then Apps. One read scope gets requested, the classic Jira work read, so the panel can list what an issue has attached and read the file you open. There are no vendor servers involved and nothing gets stored.

## Use

Open an issue that has data file attachments, press the app actions button under the title and choose Lens File Viewer. The panel lists the issue's data files; click one and it opens as a table. When exactly one attachment is a supported format it opens directly. Click any row to see the whole record, with a copy button.

Log and plain text files are line indexed. After the level scan finishes, chips show how many ERROR, WARN, INFO, DEBUG and TRACE lines the file has; clicking a chip filters the view to that level and clicking it again clears the filter. Stack trace continuation lines stay attached to the view unleveled.

Search scans the whole file and reports a hit count. The arrows jump between matches and Aa toggles case sensitivity. Excel workbooks render the first sheet and list every sheet in the Schema tab. Parquet files get a Schema tab with column types, codecs, encodings and per column statistics.

## Formats and limits

Log and plain text: .log, .txt, .out. JSONL and NDJSON. CSV and TSV, with delimiter sniffing, header detection and quoted fields. Excel .xlsx and .xlsm, read as data with macros never executed; legacy .xls is refused with a plain message. Parquet, with snappy, gzip, zstd or lz4 compressed columns. Gzip-wrapped line formats (.log.gz, .jsonl.gz, .csv.gz) inflate in the browser under a 384 MB decompressed ceiling; larger files ask for a download instead.

The viewer is read only and never modifies anything. Reads happen with the permissions of the person viewing the issue, so someone who cannot download an attachment cannot see it through the viewer either.

## Support

Open an issue at https://github.com/twilightventures13/lens/issues. Say roughly how big the file was, its format and compression, and paste a sample line if sharing one is ok.
