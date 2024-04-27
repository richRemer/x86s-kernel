default: dist/loader.efi dist/hello.app

clean:
	rm -rf dist/*

clean-all: clean
	make -C app clean
	make -C boot clean

dist/hello.app: app/hello.app
	cp $< $@

dist/loader.efi: boot/loader.efi
	cp $< $@

app/hello.app:
	make -C $(@D)

boot/loader.efi:
	make -C $(@D)

.PHONY: default clean clean-all
