part of '../flutter_extend.dart';

extension NavigatorContextExtensions on BuildContext {
  /// Navigates to a new screen using [MaterialPageRoute].
  ///
  /// This is a simplified wrapper for [Navigator.push].
  ///
  /// @param page The new [Widget] page to navigate to.
  ///
  /// Example:
  /// ```dart
  /// ElevatedButton(
  ///   onPressed: () => context.navigateTo(const DetailScreen()),
  ///   child: const Text('Go to Details'),
  /// )
  /// ```
  ///
  /// **Note:** For more advanced navigation (named routes, replacement), use [push], [pushNamed], or [pushReplacement].
  void navigateTo(Widget page) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }

  /// Pops the current route off the navigator stack.
  ///
  /// This is a simplified wrapper for [Navigator.pop].
  ///
  /// Example:
  /// ```dart
  /// IconButton(
  ///   onPressed: () => context.popScreen(),
  ///   icon: const Icon(Icons.arrow_back),
  /// )
  /// ```
  ///
  /// **Note:** This method is often replaced by [pop] for better consistency with Flutter's API.
  void popScreen() => Navigator.pop(this);

  /// Pops all routes off the navigator stack until the root route is reached.
  ///
  /// This is equivalent to calling [Navigator.popUntil] with a predicate that
  /// checks for [Route.isFirst].
  ///
  /// Example (Clearing the stack after login/checkout):
  /// ```dart
  /// ElevatedButton(
  ///   onPressed: () => context.popUntilRoot(),
  ///   child: const Text('Go to Home'),
  /// )
  /// ```
  void popUntilRoot() => Navigator.popUntil(this, (route) => route.isFirst);

  /// Pushes a new page onto the navigator stack and returns a [Future]
  /// that completes when the new page is popped.
  ///
  /// This is the preferred method for standard navigation and waiting for a result.
  Future<T?> push<T extends Object?>(Widget page) {
    return Navigator.push<T>(
        this, MaterialPageRoute(builder: (context) => page));
  }

  /// Pushes a named route onto the navigator stack.
  ///
  /// Use this when your application uses the [onGenerateRoute] or [routes] mechanism.
  Future<T?> pushNamed<T extends Object?>(String routeName,
      {Object? arguments}) {
    return Navigator.pushNamed<T>(this, routeName, arguments: arguments);
  }

  /// Replaces the current route with a new page.
  ///
  /// Useful for scenarios like post-login screens, splash screens, or checkout flows
  /// where the user should not be able to navigate back to the previous screen.
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
      Widget page) {
    return Navigator.pushReplacement<T, TO>(
        this, MaterialPageRoute(builder: (context) => page));
  }
}
