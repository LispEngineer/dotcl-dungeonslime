# Makefile for MonoGameLispDemo

.PHONY: all build test run clean

all: build test

build:
	dotnet build MonoGameLispDemo.csproj -v d -c Debug

test:
	bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo --test

run:
	bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo

clean:
	dotnet clean MonoGameLispDemo.csproj

mgcb:
	dotnet tool restore
	dotnet tool run mgcb-editor-linux


