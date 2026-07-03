# Makefile for DungeonSlime

# Ubuntu
#REF_DIR = /usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
# Arch
REF_DIR = /usr/share/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
BIN_DIR := $(shell dotnet build DungeonSlime.csproj -getProperty:OutputPath)
OUT_DIR = cspackages
EXECUTABLE := $(BIN_DIR)DungeonSlime

.PHONY: all build test run clean cspackages repl check-parens

all: build test

build: build-actual # cspackages build-actual

check-parens:
	find . -type f \( -name "*.lisp" -o -name "*.asd" \) ! -path "*/obj/*" ! -path "*/bin/*" ! -path "*/.git/*" | xargs python3 check_parens.py

build-actual:
	# Build the project, compiling both C# and DotCL Common Lisp code in one step.
	# NuGet reference dependencies are automatically copied to the bin directory
	# before Lisp dependency resolution and compilation targets run, and
	# Quicklisp-installed libraries are resolved via build-setup.lisp.
	dotnet build DungeonSlime.csproj -v d -c Debug

cspackages:
	# Requires the dotcl-packagegen tool to be installed (see ../package-generator,
	# `make deploy`). The generated cspackages/ are vendored/committed, so this
	# target only needs to be re-run when regenerating or adding new classes.
	#
	# Additionally this can only be run after make build, because it references the
	# assemblies that are copied to the output (MonoGame). At least the first part
	# of the build. Or, it needs to look at the actual location of the MonoGame
	# assembly. So, there is a bootstrapping problem with the current implementation.
	mkdir -p obj $(OUT_DIR)
	# System.Console
	dotcl-packagegen --assembly $(REF_DIR)System.Console.dll --output obj/System.Console.lispy.metadata
	dotcl-packagegen --assembly-metadata obj/System.Console.lispy.metadata --class System.Console --output $(OUT_DIR)
	# System.Runtime
	dotcl-packagegen --assembly $(REF_DIR)System.Runtime.dll --output obj/System.Runtime.lispy.metadata
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.TimeSpan --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.UriKind --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Uri --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Convert --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.AppDomain --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.IO.Path --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Boolean --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Type --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Object --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Single --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Double --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Reflection.MemberInfo --output $(OUT_DIR)
	# MonoGame.Framework
	dotcl-packagegen --assembly $(BIN_DIR)MonoGame.Framework.dll --output obj/MonoGame.Framework.lispy.metadata
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Vector2 --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Rectangle --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Point --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GameTime --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Game --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GameWindow --output $(OUT_DIR)
  #
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Keyboard --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.KeyboardState --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Keys --output $(OUT_DIR)
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Mouse --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.MouseState --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.ButtonState --output $(OUT_DIR)
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePad --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadState --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadDPad --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadThumbSticks --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadTriggers --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Buttons --output $(OUT_DIR)
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.TouchPanel --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.TouchCollection --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.TouchLocation --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.GestureSample --output $(OUT_DIR)
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Color --output $(OUT_DIR) --constant-properties "*"
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Content.ContentManager --output $(OUT_DIR)
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GraphicsDeviceManager --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteEffects --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteSortMode --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SamplerState --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.GraphicsDevice --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteBatch --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteFont --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteFont.Glyph --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.PresentationParameters --output $(OUT_DIR)
	#
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.PlayerIndex --output $(OUT_DIR)
  #
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundEffect --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundEffectInstance --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundState --output $(OUT_DIR) --constant-properties "*"
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Media.Song --output $(OUT_DIR)
	dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Media.MediaPlayer --output $(OUT_DIR)
	# Add more classes here:
	# dotcl-packagegen --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class X --output $(OUT_DIR)


test:
	$(EXECUTABLE) --test

run:
	$(EXECUTABLE)

clean:
	dotnet clean DungeonSlime.csproj
	# Keep our "vendored" cspackages that we previously created intentionally
	# rm -rf $(OUT_DIR)

mgcb:
	dotnet tool restore
	dotnet tool run mgcb-editor-linux

repl:
	dotcl --eval '(load "load-repl.lisp")' \
	      --eval '(in-package :dungeon-slime)' repl
