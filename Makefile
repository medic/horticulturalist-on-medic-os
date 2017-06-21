
all: simplest-possible

simplest-possible:
	./scripts/build-package medic-sentinel 10000

clean:
	rm -f output/packages/* staging/packages/*/*

