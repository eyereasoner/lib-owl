help:
		@echo "Available targets:"
		@echo
		@echo "make test"
		@echo "make test-blogic"
		@echo "make owl"

test:
	@ ./test.sh lib-owl-e.n3 t/*.n3

owl:
	cp /Users/hochsten/github.com/eyereasoner/eye/reasoning/rpo/owl-*.n3 .
	eye --nope --quiet --pass-all owl-*.n3 > lib-owl-e.n3
