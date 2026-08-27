# Lens File Viewer for Confluence

Open JSONL, CSV, Parquet and Excel attachments as paged tables on the Confluence page.

## Install

Install the app from its Atlassian Marketplace listing, or in Confluence under Settings, then Apps. Two read scopes get requested: pages, so the macro can list what a page has attached, and attachments, so it can read the file you open. There are no vendor servers involved and nothing gets stored.

## Use

Edit a page that has data file attachments and insert the Lens File Viewer macro (type /lens in the editor). The macro lists the page's data files; click one and it opens as a table. Click any row to see the whole record as JSON, with a copy button.

Search scans the whole file and reports a hit count. The arrows jump between matches and Aa toggles case sensitivity. Parquet files get a Schema tab: column types, codecs, encodings and per column statistics. Excel workbooks use the same tab to list every sheet with its row count.

To pin a file, edit the macro and pick an attachment in its configuration. The page then opens straight into that file for every reader.

## Formats and limits

JSONL and NDJSON. CSV and TSV, with delimiter sniffing, header detection and quoted fields. Parquet, with snappy, gzip, zstd or lz4 compressed columns. Excel XLSX and XLSM: the first visible sheet renders with headers detected and date and number formats applied, and search matches what the grid shows. Cached formula results display without recalculation, unusual number formats fall back to the stored text, and macros are never read. Legacy .xls files are named as such rather than misread.

The attachment list shows the first 50 attachments of a page. The viewer is read only and never modifies anything. Reads happen with the permissions of the person viewing the page, so someone who cannot download an attachment cannot see it through the viewer either.

## Support

Open an issue at https://github.com/twilightventures13/lens/issues. Say roughly how big the file was, its format and compression, and paste a sample line if sharing one is ok.
