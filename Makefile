default: none

none:

svscan:
	mkdir -p $${HOME}/Library/LaunchAgents
	cd etc; \
	for i in com.schmonz.svscan.plist; do \
		cp `pwd`/$${i} $${HOME}/Library/LaunchAgents/ || true; \
	done
