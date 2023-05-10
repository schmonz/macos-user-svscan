# macos-user-svscan

## What I wanted

Per-user [process supervision trees](https://cr.yp.to/daemontools/svscan.html) on macOS, managed by [daemontools from pkgsrc](https://github.com/schmonz/pkgsrc-daemontools).

## What I tried

Because it works on many other platforms: [rc.d-boot from pkgsrc](https://github.com/schmonz/pkgsrc-rc.d-boot) plus [daemontools-run from pkgsrc](https://github.com/schmonz/pkgsrc-daemontools-run).

## What happened

On macOS, services failed to start with e.g. `opening configfile /Users/schmonz/Sites/schmonz.local/conf/lighttpd failed: Operation not permitted`.

## What I discovered

If I ever get around to digging, I'll tell you.

## What I did instead

1. Stop trying to use `daemontools-run` on macOS.
2. Configure `launchd` to run `svscan` when I log in.

## What's suboptimal about this

1. Extending `rc.d-boot` + `daemontools-run` to this platform is going to require additional work.
2. If my user isn't logged in, its services don't run.
