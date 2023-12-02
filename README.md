# macos-user-svscan

## What I wanted

Per-user [process supervision trees](https://cr.yp.to/daemontools/svscan.html) on macOS, managed by [daemontools from pkgsrc](https://github.com/schmonz/pkgsrc-daemontools).

## What I tried

Because it works on many other platforms: [rc.d-boot from pkgsrc](https://github.com/schmonz/pkgsrc-rc.d-boot) plus [daemontools-run from pkgsrc](https://github.com/schmonz/pkgsrc-daemontools-run).

## What happened

On macOS with FileVault 2, services failed to start with e.g. `opening configfile /Users/schmonz/Sites/schmonz.local/conf/lighttpd failed: Operation not permitted`.

## What I discovered

1. The root `svscan` is unable to start the user `svscan` until the user has logged in.
2. The user `svscan` probably was itself started with insufficient filesystem privileges.

On a system without FileVault enabled, things work as I wanted.

## What I did instead

1. Stop trying to use `daemontools-run` on macOS when FileVault is enabled.
2. Configure `launchd` to run `svscan` when I log in.
3. Make sure `mksh` has Full Disk Access.

## What's suboptimal about this

1. If my user isn't logged in, its services don't run.
2. On macOS with FileVault, there might not be anything I can do to make `daemontools-run` work as I'd want.
