import 'package:flutter/material.dart';

enum Flavor { dev, staging, prod }

class FlavorConfig {
  FlavorConfig._(this.flavor);

  final Flavor flavor;
  static FlavorConfig? _instance;

  static FlavorConfig get instance => _instance ??= FlavorConfig._(_detectFlavor());

  static FlavorConfig initialize([Flavor? flavor]) {
    _instance = FlavorConfig._(flavor ?? _detectFlavor());
    return _instance!;
  }

  String get name => flavor.name.toUpperCase();

  String get displayName {
    switch (flavor) {
      case Flavor.dev:
        return 'Development';
      case Flavor.staging:
        return 'Staging';
      case Flavor.prod:
        return 'Production';
    }
  }

  Color get accentColor {
    switch (flavor) {
      case Flavor.dev:
        return Colors.green;
      case Flavor.staging:
        return Colors.orange;
      case Flavor.prod:
        return Colors.blue;
    }
  }

  String get baseUrl {
    switch (flavor) {
      case Flavor.dev:
        return 'https://dev-api.jikan.moe/';
      case Flavor.staging:
        return 'https://staging-api.jikan.moe/';
      case Flavor.prod:
        return 'https://api.jikan.moe/';
    }
  }

  static Flavor _detectFlavor() {
    const flavorString = String.fromEnvironment('FLAVOR', defaultValue: 'prod');
    switch (flavorString.toLowerCase()) {
      case 'dev':
        return Flavor.dev;
      case 'staging':
        return Flavor.staging;
      case 'prod':
      case 'production':
      default:
        return Flavor.prod;
    }
  }
}

