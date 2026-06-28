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
	# First, build the C# project without DotCL targets to ensure all NuGet
	# dependencies (like MonoGame.Framework.dll) are fully copied to the bin/ directory.
	# This prevents the Lisp compiler from crashing during compile-time assembly loading.
	dotnet build DungeonSlime.csproj -c Debug -p:DotclProjectAsd=""
	# Then, perform the actual build including the DotCL Lisp compilation targets.
	# dotnet build DungeonSlime.csproj -v d -c Debug
	# The // at the end of CL_SOURCE_REGISTRY is required!! Removing it breaks the build.
	# In ASDF's CL_SOURCE_REGISTRY:
	# - A single trailing / means: scan only this directory for .asd files.
	# - A double trailing // means: recursively scan this directory and all subdirectories for .asd files.
	CL_SOURCE_REGISTRY="$(HOME)/quicklisp/dists/quicklisp/software//" dotnet build DungeonSlime.csproj -v d -c Debug

cspackages:
	mkdir -p obj $(OUT_DIR)
	# System.Console
	$(EXECUTABLE)  --assembly $(REF_DIR)System.Console.dll --output obj/System.Console.lispy.metadata
	$(EXECUTABLE)  --assembly-metadata obj/System.Console.lispy.metadata --class System.Console --output $(OUT_DIR)
	# System.Runtime
	$(EXECUTABLE)  --assembly $(REF_DIR)System.Runtime.dll --output obj/System.Runtime.lispy.metadata
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.TimeSpan --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.UriKind --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Uri --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Convert --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.AppDomain --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.IO.Path --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Boolean --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Type --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Object --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Reflection.MemberInfo --output $(OUT_DIR)
	# MonoGame.Framework
	$(EXECUTABLE)  --assembly $(BIN_DIR)MonoGame.Framework.dll --output obj/MonoGame.Framework.lispy.metadata
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Vector2 --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Rectangle --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Point --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GameTime --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Game --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GameWindow --output $(OUT_DIR)
  #
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Keyboard --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.KeyboardState --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Keys --output $(OUT_DIR)
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Mouse --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.MouseState --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.ButtonState --output $(OUT_DIR)
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePad --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadState --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadDPad --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadThumbSticks --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadTriggers --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Buttons --output $(OUT_DIR)
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.TouchPanel --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.TouchCollection --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.TouchLocation --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GestureSample --output $(OUT_DIR)
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Color --output $(OUT_DIR) --constant-properties "*"
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Content.ContentManager --output $(OUT_DIR)
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GraphicsDeviceManager --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteEffects --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteSortMode --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SamplerState --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.GraphicsDevice --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteBatch --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteFont --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteFont.Glyph --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.PresentationParameters --output $(OUT_DIR)
	#
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.PlayerIndex --output $(OUT_DIR)
  #
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundEffect --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundEffectInstance --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundState --output $(OUT_DIR) --constant-properties "*"
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Media.Song --output $(OUT_DIR)
	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Media.MediaPlayer --output $(OUT_DIR)
	# Add more classes here:
	# $(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class X --output $(OUT_DIR)


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
  # rlwrap should work as of 0.1.12 but still does not as of 0.1.14 for me.
  # The // at the end is required!
	CL_SOURCE_REGISTRY="$(HOME)/quicklisp/dists/quicklisp/software//" \
	# rlwrap \
	dotcl --eval '(load "load-repl.lisp")' \
	      --eval '(in-package :dungeon-slime)' repl
