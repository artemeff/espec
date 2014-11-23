all: generate

deps:
	./rebar get-deps

compile: deps
	./rebar compile

generate: compile
	./rebar escriptize
	mv espec bin/espec

spec: generate
	./bin/espec

clean:
	./rebar clean
	rm -Rf .eunit
	rm -Rf bin/espec
