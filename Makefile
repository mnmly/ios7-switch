
build: components index.js ios7-switch.css template.js
	@component build --dev

ios7-switch.css: ios7-switch.styl
	@styl -w < ios7-switch.styl > ios7-switch.css

template.js: template.html
	@component convert $<

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
