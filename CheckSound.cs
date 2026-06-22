using System;
using System.Reflection;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Media;

class CheckSound {
    static void Main() {
        Console.WriteLine("SoundEffect Static Properties:");
        foreach (var prop in typeof(SoundEffect).GetProperties(BindingFlags.Public | BindingFlags.Static)) {
            Console.WriteLine("  - " + prop.Name + " (" + prop.PropertyType.Name + ") canWrite: " + prop.CanWrite);
        }
        Console.WriteLine("MediaPlayer Static Properties:");
        foreach (var prop in typeof(MediaPlayer).GetProperties(BindingFlags.Public | BindingFlags.Static)) {
            Console.WriteLine("  - " + prop.Name + " (" + prop.PropertyType.Name + ") canWrite: " + prop.CanWrite);
        }
    }
}
