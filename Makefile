VERSION=0.1

DIST_FILES=group_vars/thinlinc \
	inventory.template \
	README.md \
	LICENSE \
	thinlinc-install.yml \
	files/tl-setup.answers \
	library/tlconfig.py

.PHONY: dist
dist: ansible-thinlinc-$(VERSION).tar.gz

ansible-thinlinc-$(VERSION).tar.gz: $(DIST_FILES)
	rm -f $@
	tar --transform="s@^@ansible-thinlinc-$(VERSION)/@g" -czf $@ $^
