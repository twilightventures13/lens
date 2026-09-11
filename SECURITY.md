# Security policy

Last updated 11 September 2026.

Twilight Ventures makes file viewers for developer tools: the Lens plugins for JetBrains IDEs and Visual Studio Code, and Lens File Viewer for Confluence and for Jira. This page says how we handle security for those products and how to reach us about a security problem.

## Security issues and incidents

Write to security@twilightventures.dev. The mailbox alerts us the moment a message arrives; we answer within three business days and keep you informed until the fix ships. Please include the product and its version, the file or the steps that show the problem, and what you saw. We ask for 90 days to fix an issue before details are published, and we will say so if we need less. The fix is noted in the release notes of the version that carries it, with credit to the reporter if they wish.

Should an incident touch customer data, or should a publishing account or key of ours be compromised, we raise a P1 ticket with Atlassian Marketplace support within 24 hours of learning of it for the Forge apps, and write to the JetBrains Marketplace or the two VS Code stores the same day for the plugins; we keep those tickets updated while we contain the problem.

The affected version is replaced. On Forge that is a new version, which installed sites receive as Atlassian rolls it out, or once the site admin approves it when the version asks for new permissions. The two VS Code stores get an updated extension, and on the JetBrains Marketplace the bad version is hidden first and a fixed one follows.

Customers who were affected hear from us within 72 hours of the moment we learned of the incident, by mail to the technical contact on each license where the store gives us one, and through a notice on the listing and in the release notes. The notice says what happened, which data was involved and what we changed.

## What the products do with your data

Lens File Viewer for Confluence and for Jira run on Atlassian Forge. They have no backend of their own and make no request to any server outside Atlassian: the app reads the attachment bytes through the Confluence or Jira product API with the viewing user's own permissions and renders them in the browser. Neither app keeps a copy of your data anywhere. The Confluence macro stores its own settings inside the page it sits on, and both apps keep one small record in your browser storage, the counter behind the one-time request for a review. The scopes are read scopes only (read:page:confluence and read:attachment:confluence for Confluence; read:jira-work for Jira).

The JetBrains plugins and the VS Code extensions read files on your machine and send no file contents anywhere. The JetBrains plugins make no network call of their own; the IDE handles the license. The DuckDB engine inside DuckDB Lens could fetch an extension from the internet when a query named one, so from version 1.2.7 the plugin opens the engine with extension auto-install and auto-load switched off, and the engine fetches nothing by itself; an INSTALL statement typed into the SQL console is the user's call. The VS Code extensions call Polar, the store that sells their licenses, for the license check and nothing else. A link a product offers, such as the review page or the issue reporter, opens in your browser only when you click it.

## Vulnerability management

A release ships the exact set of third-party components we tested. From September 2026 on, every release of the Forge apps and the VS Code extensions is checked against the public advisory database for its components, and a moderate or worse advisory in a shipped component holds the release until that component is fixed; if we ever ship past such an advisory because the code it names is not reached, the release notes say so. The JetBrains plugins pin their libraries by exact version (the Parquet readers, the SQLite and DuckDB engines). We have no advisory scanner on that side yet; a daily job of ours watches the release feeds of the Parquet, Arrow and DuckDB projects and rings when a new release lands, and every plugin release passes the JetBrains compatibility checks for the oldest and newest IDE versions it declares.

We fix confirmed vulnerabilities on the schedule the Atlassian Marketplace sets for cloud apps (https://developer.atlassian.com/platform/marketplace/security-bugfix-policy/), on every product: critical within 10 days, high within 4 weeks, medium within 12 weeks, low within 25 weeks, and sooner when we can. A fix ships as a new version on the same marketplace.

## Security controls

- Every release passes an automated gate before it ships: the test suites, a scan of the shipped files for anything that does not belong in them, and the checks each store runs on a submission (for the Forge apps, the Runs on Atlassian eligibility check). A security defect goes ahead of everything else in the queue.
- The Forge apps ship two third-party packages beside our own engine code, and the engine carries the file readers it is built from. The licenses file shipped inside each app lists every one of them with its license.
- One person holds the publishing accounts, and each of those accounts has two-step verification on. The publishing tokens live on a single machine of ours that is reached only with keys tied to one account; they are listed in a register, a token that carries an expiry date is replaced before that date, and any token is replaced at once if exposed.

## Supported versions

We support the newest published version of each product. The Forge apps update on the Atlassian side; the IDE plugins update through the IDE.
