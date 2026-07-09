
bin/tpbin: src/*.go
	GO111MODULE=off go build -o $@ src/*.go
