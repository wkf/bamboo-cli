PREFIX := /usr/local
VERSION := 0.0.1

deb:
	mkdir -p target/build$(PREFIX)/bin
	cp bin/* target/build$(PREFIX)/bin
	fpm -p target -C target/build -s dir -t deb -n bamboo-cli -v $(VERSION) -a all -d curl .

clean:
	rm -rf target

install:
	cp bin/bamboo-cli $(DESTDIR)$(PREFIX)/bin/bamboo-cli

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/bamboo-cli

.PHONY: deb clean install uninstall
