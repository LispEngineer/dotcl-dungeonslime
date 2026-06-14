# Makefile for DungeonSlime

REF_DIR = /usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
BIN_DIR = bin/Debug/net10.0/ubuntu.24.04-x64/
OUT_DIR = cspackages
EXECUTABLE = bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime

.PHONY: all build test run clean cspackages repl

all: build test

build: build-actual # cspackages build-actual

build-actual:
	# Build the base project, which may or may not have any of the
	# cspackages/ files
	dotnet build DungeonSlime.csproj -v d -c Debug

cspackages:
	mkdir -p obj $(OUT_DIR)
	$(EXECUTABLE)  --assembly $(REF_DIR)System.Console.dll --output obj/System.Console.lispy.metadata
	$(EXECUTABLE)  --assembly $(REF_DIR)System.Runtime.dll --output obj/System.Runtime.lispy.metadata
	$(EXECUTABLE)  --assembly $(BIN_DIR)MonoGame.Framework.dll --output obj/MonoGame.Framework.lispy.metadata
	$(EXECUTABLE)  --assembly-metadata obj/System.Console.lispy.metadata --class System.Console --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.TimeSpan --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Vector2 --output $(OUT_DIR)

test:
	bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime --test

run:
	bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime

clean:
	dotnet clean DungeonSlime.csproj
	# Keep our "vendored" cspackages that we previously created intentionally
	# rm -rf $(OUT_DIR)

mgcb:
	dotnet tool restore
	dotnet tool run mgcb-editor-linux

repl:
	dotcl --eval '(load "load-repl.lisp")' --eval '(in-package :dungeon-slime)' repl
