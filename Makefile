.PHONY: all medic-sentinel medic-api horticulturalist clean

all: medic-sentinel medic-api horticulturalist

medic-sentinel:
	./scripts/build-package medic-sentinel 0.1.0

medic-api:
	./scripts/build-package medic-api 0.1.0

horticulturalist:
	cd packages/horticulturalist/software/horticulturalist/current && \
		npm install --production
	./scripts/build-package horticulturalist 0.0.1

clean:
	rm -f output/packages/* staging/packages/*/*

.PHONY: alex
alex: all
	scp -P 33696 output/packages/*.vpkg vm@alpha.dev.medicmobile.org:alex/
