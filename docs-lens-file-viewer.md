# Lens File Viewer for Confluence

Open CSV, Excel, JSONL, Parquet, log and text attachments as paged tables on the Confluence page.

## Install

Install the app from its Atlassian Marketplace listing, or in Confluence under Settings, then Apps. Two read scopes get requested: read:page:confluence, so the macro can list what a page has attached, and read:attachment:confluence, so it can read the file you open. There are no vendor servers involved and the app keeps no copy of your data anywhere. The macro keeps its own settings (the pinned file, the second page and the height) inside the page it sits on, and your browser keeps two small records, your answer to the review line and your Strand pick, both described below.

## Use

Edit a page that has data file attachments and insert the Lens File Viewer macro (type /lens in the editor). The macro lists the page's data files; click one and it opens as a table. Click any row to see the whole record, with a copy button.

Log and plain text files open as lines. After the level scan finishes, chips show how many ERROR, WARN, INFO, DEBUG and TRACE lines the file has, and a FATAL line counts on the ERROR chip. Chips combine as a set: with ERROR and WARN on, the status reads ERROR + WARN only, and a second click drops a chip. A line with no level, such as the continuation of a stack trace, counts as other; it stays in the full view and leaves when a set is on.

The arrow beside ERROR jumps to the next ERROR line, and Shift+click goes to the previous one. The Go to row box takes a file line number (Ctrl+G puts the cursor there); under a set it lands on the nearest kept line at or after that number.

The level of a line is read from a bare or bracketed token, a JSON level key, a logfmt pair, a numeric level on a known ladder (syslog 0 to 7, the 10 to 50 ladder, or the 10 to 60 ladder where 30 is INFO; the key picks the ladder), or the logcat prefix. Terminal color codes are stripped before the read and before display.

Export CSV writes the open table as one download, with a progress line and Cancel. It covers the open file, the open sheet of a workbook, or a log as level, timestamp and message columns; with a chip set on, a log exports the lines the set keeps. The file is assembled in the page and nothing leaves the browser.

Search scans the whole file and reports a hit count. The arrows jump between matches and Aa toggles case sensitivity. Parquet files get a Schema tab: column types, codecs, encodings and per column statistics. Excel workbooks use the same tab to list every sheet, with the row count of the open one and a hidden mark on hidden sheets.

Excel workbooks render the first visible sheet, with headers detected and date and number formats applied, and search matches what the grid shows. Cached formula results display without recalculation, unusual number formats fall back to the stored text, and macros are never read.

To pin a file, edit the macro and pick an attachment in its configuration. The page then opens straight into that file for every reader. A pinned file that is gone or cannot be opened falls back to the list, with a note saying so.

The configuration can also name a second page. Give its id or its exact title; the title lookup is site-wide among the pages you can see, and when several pages share the title the first one found is used and the configuration says so. That page's data files are listed under this page's own, with a page column to tell them apart, and a pinned file may come from either page. A page you cannot read shows as one plain row saying so; a page with no attachments says that instead.

The license state of the site reads as one line inside the viewer: on an evaluation, the end date; on an inactive license, the Manage apps page in Confluence administration where a site admin handles it. An active license shows nothing.

After the fifth file the macro has opened in your browser, it asks once for a marketplace review; a review helps us decide what to build next. Write a review opens the listing, No thanks closes the line, and either answer is kept in this browser so the question does not come back.

The configuration has a height choice for the macro. The default is 560 px; 800 and 1000 px are the other two. The grid scrolls inside that height, so a long file never stretches the page.

A Strand picker, a choice of palette for the grid, sits in the toolbar. Default keeps the host theme, and eleven named strands tint the values, stripe the rows and color the selection. The pick is remembered in this browser.

## Formats and limits

JSONL and NDJSON. CSV and TSV, with delimiter sniffing, header detection and quoted fields. Log and plain text: .log, .txt, .out. Parquet, with snappy, gzip, zstd or lz4 compressed columns. Excel .xlsx and .xlsm; an encrypted workbook or a legacy .xls file is refused with a message that says so.

Gzipped line formats (.jsonl.gz, .ndjson.gz, .csv.gz, .tsv.gz, .log.gz, .txt.gz, .out.gz) open in place. The gzip is inflated as a stream, up to 384 MB unpacked; a larger one asks for a download instead, and a gzip cut short is refused rather than shown as part of a file. Parquet and Excel need plain bytes and do not open from .gz.

A file over 512 MB is not opened; its row loses the open button and says so on hover, pointing to the download. When something else fails, the viewer says what happened and what to do next in one plain sentence. A damaged file is named as damaged, a removed attachment is called removed. A missing permission is called that, and a busy or failing server says to try again.

The attachment list shows the first 50 attachments of a page and says so when there are more. The viewer is read only: it never changes an attachment, a page or anything else on your site. Reads happen with the permissions of the person viewing the page, so someone who cannot download an attachment cannot see it through the viewer either.

## Support

Open an issue at https://github.com/twilightventures13/lens/issues. Say roughly how big the file was, its format and compression, and paste a sample line if sharing one is ok.
