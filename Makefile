help:
		@echo "Available targets:"
		@echo
		@echo "make test"
		@echo "make test-blogic"
		@echo "make owl"

test:
	eye --nope --quiet --pass lib-owl-p.n3 t/*.n3

test-blogic:
	eye --nope --quiet --blogic lib-owl-p.n3 t/*.n3s

owl:
	cp /Users/hochsten/github.com/eyereasoner/eye/reasoning/rpo/owl-*.n3 .
	eye --nope --quiet --pass-all owl-*.n3 > lib-owl-e.n3
