install:
	mkdir -p /usr/local/bin
	cp -f notify-server.sh /usr/local/bin/notify-server
	chmod +x /usr/local/bin/notify-server

desktop:
	mkdir -p $(HOME)/.config/autostart
	cp -f notify-server.desktop $(HOME)/.config/autostart/

