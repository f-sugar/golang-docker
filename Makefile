.PHONY: run
run:
	realize start --run

.PHONY: tidy
tidy:
	go mod tidy -v