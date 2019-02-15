/// An annotation that generates code for translation Jsons
/// located in the directory described in [Stone.path] parameter.
class Stone {
  /// Translation files' directory path. The translation files
  /// should be named according to the [Locale.languageCode] of
  /// the represented [Locale].
  /// Must not be [null].
  final String path;
  /// In case of a mono repo approach you can add the package
  /// where the translation file is located.
  /// When both are specified we expect the file to be located
  /// inside the `lib` folder of the specified package and inside
  /// the specified path.
  /// Can be [null]
  final String package;

  /// Create an annotation that will generate the Helper and
  /// Delegate classes for the translations located at [path] and/or [package].
  const Stone({
    this.path,
    this.package
  }) : assert(path != null);
}
