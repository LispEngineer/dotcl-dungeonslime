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
	# `make deploy`), version >= 2.18.0 (single-pass CLI). The generated cspackages/
	# are vendored/committed, so this target only needs to be re-run when
	# regenerating or adding new classes.
	#
	# Additionally this can only be run after make build, because it references the
	# assemblies that are copied to the output (MonoGame). At least the first part
	# of the build. Or, it needs to look at the actual location of the MonoGame
	# assembly. So, there is a bootstrapping problem with the current implementation.
	#
	# One single-pass invocation reflects metadata and generates every class's
	# package below, all sharing one creation timestamp. Metadata files
	# (System.Console.lispy.metadata, etc.) now land in $(OUT_DIR) alongside the
	# generated packages, rather than a separate obj/ directory. Groups below, in
	# order: System.Console, System.Runtime, then MonoGame.Framework (core,
	# Input/Keyboard, Input/Mouse, Input/GamePad, Input/Touch, Graphics, Audio,
	# Media). Add more classes by adding another --class line (optionally with its
	# own --constant-properties) to the appropriate --assembly group below.
	mkdir -p $(OUT_DIR)
	dotcl-packagegen --out-dir $(OUT_DIR) \
	    --assembly $(REF_DIR)System.Console.dll \
	      --class System.Console \
	    --assembly $(REF_DIR)System.Runtime.dll \
	      --class System.TimeSpan --constant-properties "*" \
	      --class System.UriKind --constant-properties "*" \
	      --class System.Uri --constant-properties "*" \
	      --class System.Convert \
	      --class System.AppDomain \
	      --class System.IO.Path \
	      --class System.Boolean \
	      --class System.Type \
	      --class System.Object \
	      --class System.Single \
	      --class System.Double \
	      --class System.Reflection.MemberInfo \
	    --assembly $(BIN_DIR)MonoGame.Framework.dll \
	      --class Microsoft.Xna.Framework.Vector2 --constant-properties "*" \
	      --class Microsoft.Xna.Framework.Rectangle --constant-properties "*" \
	      --class Microsoft.Xna.Framework.Point --constant-properties "*" \
	      --class Microsoft.Xna.Framework.GameTime \
	      --class Microsoft.Xna.Framework.Game \
	      --class Microsoft.Xna.Framework.GameWindow \
	      --class Microsoft.Xna.Framework.Input.Keyboard \
	      --class Microsoft.Xna.Framework.Input.KeyboardState \
	      --class Microsoft.Xna.Framework.Input.Keys \
	      --class Microsoft.Xna.Framework.Input.Mouse \
	      --class Microsoft.Xna.Framework.Input.MouseState \
	      --class Microsoft.Xna.Framework.Input.ButtonState \
	      --class Microsoft.Xna.Framework.Input.GamePad \
	      --class Microsoft.Xna.Framework.Input.GamePadState \
	      --class Microsoft.Xna.Framework.Input.GamePadDPad \
	      --class Microsoft.Xna.Framework.Input.GamePadThumbSticks \
	      --class Microsoft.Xna.Framework.Input.GamePadTriggers \
	      --class Microsoft.Xna.Framework.Input.Buttons \
	      --class Microsoft.Xna.Framework.Input.Touch.TouchPanel \
	      --class Microsoft.Xna.Framework.Input.Touch.TouchCollection \
	      --class Microsoft.Xna.Framework.Input.Touch.TouchLocation \
	      --class Microsoft.Xna.Framework.Input.Touch.GestureSample \
	      --class Microsoft.Xna.Framework.Color --constant-properties "*" \
	      --class Microsoft.Xna.Framework.Content.ContentManager \
	      --class Microsoft.Xna.Framework.GraphicsDeviceManager \
	      --class Microsoft.Xna.Framework.Graphics.SpriteEffects \
	      --class Microsoft.Xna.Framework.Graphics.SpriteSortMode \
	      --class Microsoft.Xna.Framework.Graphics.SamplerState --constant-properties "*" \
	      --class Microsoft.Xna.Framework.Graphics.GraphicsDevice \
	      --class Microsoft.Xna.Framework.Graphics.SpriteBatch \
	      --class Microsoft.Xna.Framework.Graphics.SpriteFont \
	      --class Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph \
	      --class Microsoft.Xna.Framework.Graphics.PresentationParameters \
	      --class Microsoft.Xna.Framework.PlayerIndex \
	      --class Microsoft.Xna.Framework.Audio.SoundEffect \
	      --class Microsoft.Xna.Framework.Audio.SoundEffectInstance \
	      --class Microsoft.Xna.Framework.Audio.SoundState --constant-properties "*" \
	      --class Microsoft.Xna.Framework.Media.Song \
	      --class Microsoft.Xna.Framework.Media.MediaPlayer \
			--assembly $(BIN_DIR)GumCommon.dll \
				--class Gum.Wireframe.Anchor \
				--class Gum.Wireframe.Dock \
        --class RenderingLibrary.Content.IContentLoader \
        --class RenderingLibrary.Camera \
			--assembly $(BIN_DIR)MonoGameGum.dll \
			  --class MonoGameGum.GumService \
				--class Gum.Forms.Controls.FrameworkElement \
				--class Gum.Forms.Controls.Panel \
				--class Gum.Forms.Controls.Button \
        --class Gum.Forms.Controls.Primitives.ButtonBase \
				--class MonoGameGum.GueDeriving.TextRuntime \
				--class Gum.Forms.Controls.Label \
				--class Gum.Forms.Controls.Slider \
				--class Gum.Forms.DefaultVisualsVersion \
        --class RenderingLibrary.Content.ContentLoader \
        --class Gum.Forms.Controls.KeyCombo \
        --class RenderingLibrary.Graphics.Renderer \
        --class MonoGameGum.GraphicalUiElementExtensionMethods \
			--assembly $(REF_DIR)System.Collections.dll \
        --class 'System.Collections.Generic.List`1'
	# Add more classes here: --class X [--constant-properties "..."]
	#
	# Cleaning up unchanged packages
	./revert-cspackages-timestamps.sh
	#
	# Package list for top level packages.lisp
	echo "" ; fgrep -h in-package cspackages/* | fgrep -v cl-user | sed 's/in-/def/' ; echo ""

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
