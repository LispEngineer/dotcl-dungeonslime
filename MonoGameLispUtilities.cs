using System;
using System.Linq;
using System.Reflection;
using System.Reflection.Emit;

using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Content;

public static class MonoGameLispUtilities {
  /** Helper function to load a Texture2D from MonoGame's ContentManager. */
  // TODO: Make a generic version of this that can be used with dotnet:static-generic
  public static Texture2D? LoadTexture2D(ContentManager contentManager, string assetName) {
    if (contentManager == null) {
      throw new ArgumentNullException(nameof(contentManager));
    }
    return contentManager.Load<Texture2D>(assetName);
  } // LoadTexture2D


  /*
  public static object? LoadTexture2D(object contentManager, string assetName) {
      if (contentManager == null) {
          throw new ArgumentNullException(nameof(contentManager));
      }
      var method = contentManager.GetType().GetMethods()
          .FirstOrDefault(m => m.Name == "Load" && m.IsGenericMethodDefinition && m.GetParameters().Length == 1);
      if (method == null) {
          throw new InvalidOperationException("Could not find generic Load method on ContentManager.");
      }
      var textureType = GetType("Microsoft.Xna.Framework.Graphics.Texture2D");
      if (textureType == null) {
          throw new InvalidOperationException("Could not find Texture2D type.");
      }
      var genericMethod = method.MakeGenericMethod(textureType);
      return genericMethod.Invoke(contentManager, new object[] { assetName });
  }
  */

}
