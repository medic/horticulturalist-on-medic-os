
all: simplest-possible

simplest-possible:
	./scripts/build-package sentinel 10000

clean:
	rm -f output/packages/* staging/packages/*/*

