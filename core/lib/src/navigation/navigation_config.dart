abstract class NavigationConfig {
  /// The id of the navigation config
  final String id;

  const NavigationConfig({required this.id});

  @override
  String toString() => id;
}

abstract class FeatureNavigationConfig extends NavigationConfig {
  /// The name of the feature
  final String id;

  final ScreenNavigationConfig? destination;

  const FeatureNavigationConfig({
    required this.id,
    this.destination,
  }) : super(id: id);

  @override
  String toString() => id;
}

/// The configuration for a screen navigation
abstract class ScreenNavigationConfig<T> extends NavigationConfig {
  /// The name of the screen
  final String name;

  /// The name of the feature the screen belongs to
  final String id;

  const ScreenNavigationConfig({
    required this.name,
    required this.id,
  }) : super(id: name);

  @override
  String toString() => '$id/$name';
}
