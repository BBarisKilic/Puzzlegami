import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

/// Represents the layout size passed to [ResponsiveLayoutBuilder.child].
enum ResponsiveLayoutSize {
  /// Small layout
  small,

  /// Medium layout
  medium,

  /// Large layout
  large
}

/// Signature for the individual builders (`small`, `medium`, `large`).
typedef ResponsiveLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

/// {@template responsive_layout_builder}
/// A wrapper around [LayoutBuilder] which exposes builders for
/// various responsive breakpoints.
/// {@endtemplate}
class ResponsiveLayoutBuilder extends StatelessWidget {
  /// {@macro responsive_layout_builder}
  const ResponsiveLayoutBuilder({
    Key? key,
    required this.small,
    required this.medium,
    required this.large,
    this.child,
  }) : super(key: key);

  /// [ResponsiveLayoutWidgetBuilder] for small layout.
  final ResponsiveLayoutWidgetBuilder small;

  /// [ResponsiveLayoutWidgetBuilder] for medium layout.
  final ResponsiveLayoutWidgetBuilder medium;

  /// [ResponsiveLayoutWidgetBuilder] for large layout.
  final ResponsiveLayoutWidgetBuilder large;

  /// Optional child widget builder based on the current layout size
  /// which will be passed to the `small`, `medium` and `large` builders
  /// as a way to share/optimize shared layout.
  final Widget Function(ResponsiveLayoutSize currentSize)? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double screenWidth = MediaQuery.of(context).size.width;

        if (screenWidth <= LayoutBreakpoints.small) {
          return small(context, child?.call(ResponsiveLayoutSize.small));
        } else if (screenWidth <= LayoutBreakpoints.medium) {
          return medium(context, child?.call(ResponsiveLayoutSize.medium));
        } else if (screenWidth <= LayoutBreakpoints.large) {
          return large(context, child?.call(ResponsiveLayoutSize.large));
        } else {
          return large(context, child?.call(ResponsiveLayoutSize.large));
        }
      },
    );
  }
}
