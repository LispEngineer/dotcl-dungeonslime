# Makefile for MonoGameLispDemo

REF_DIR = /usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.8/ref/net10.0/
BIN_DIR = bin/Debug/net10.0/ubuntu.24.04-x64/
OUT_DIR = cspackages

.PHONY: all build test run clean cspackages

all: build test

build: build-actual # cspackages build-actual

build-actual:
	# Build the base project, which may or may not have any of the
	# cspackages/ files
	dotnet build MonoGameLispDemo.csproj -v d -c Debug

cspackages:
	mkdir -p obj $(OUT_DIR)
	dotnet run --project MonoGameLispDemo.csproj -- --assembly $(REF_DIR)System.Console.dll --output obj/System.Console.lispy.metadata
	dotnet run --project MonoGameLispDemo.csproj -- --assembly $(REF_DIR)System.Runtime.dll --output obj/System.Runtime.lispy.metadata
	dotnet run --project MonoGameLispDemo.csproj -- --assembly $(BIN_DIR)MonoGame.Framework.dll --output obj/MonoGame.Framework.lispy.metadata
	dotnet run --project MonoGameLispDemo.csproj -- --assembly-metadata obj/System.Console.lispy.metadata --class System.Console --output $(OUT_DIR)
	dotnet run --project MonoGameLispDemo.csproj -- --assembly-metadata obj/System.Runtime.lispy.metadata --class System.TimeSpan --output $(OUT_DIR)
	dotnet run --project MonoGameLispDemo.csproj -- --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Vector2 --output $(OUT_DIR)

test:
	bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo --test

run:
	bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo

clean:
	dotnet clean MonoGameLispDemo.csproj
	# Keep our "vendored" cspackages that we previously created intentionally
	# rm -rf $(OUT_DIR)

mgcb:
	dotnet tool restore
	dotnet tool run mgcb-editor-linux


