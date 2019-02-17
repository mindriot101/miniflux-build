all: miniflux_2.0.14_amd64.deb

miniflux_2.0.14_amd64.deb: package-deb/miniflux_2.0.14_amd64.deb
	cp $< $@

package-deb/miniflux_2.0.14_amd64.deb: package-deb/miniflux/miniflux
	$(MAKE) -C package-deb

package-deb/miniflux/miniflux: miniflux/miniflux-linux-amd64
	cp $< $@

miniflux/miniflux-linux-amd64:
	$(MAKE) -C miniflux linux-amd64

.PHONY: miniflux/miniflux-linux-amd64
