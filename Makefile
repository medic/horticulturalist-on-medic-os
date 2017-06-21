
all: medic-sentinel medic-api

medic-sentinel:
	./scripts/build-package medic-sentinel 0.1.0

medic-api:
	./scripts/build-package medic-api 0.1.0

clean:
	rm -f output/packages/* staging/packages/*/*

