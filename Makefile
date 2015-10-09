
PROTOBUFS=merkledag.pb unixfs.pb

all: $(PROTOBUFS)
	cabal build

stack: $(PROTOBUFS)
	stack build

%.pb: pb/%.proto
	hprotoc -I src -d src $<
