default: none

none:

svscan:
	cd etc; \
	for i in com.schmonz.svscan.plist; do \
		ln -s `pwd`/$${i} $${HOME}/Library/LaunchAgents/$${i} || true; \
	done
