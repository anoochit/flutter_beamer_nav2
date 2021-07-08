import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:webnav2/pages/article.dart';
import 'package:webnav2/pages/blog.dart';
import 'package:webnav2/pages/contact.dart';
import 'package:webnav2/pages/home.dart';
import 'package:webnav2/pages/product.dart';

class AppLocation extends BeamLocation {
  AppLocation(BeamState state) : super(state);
  @override
  List<String> get pathBlueprints => ['/', '/product', '/article', '/blog', '/contact'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(key: ValueKey('home'), child: HomePage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('product')) BeamPage(key: ValueKey('product'), child: ProductPage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('article')) BeamPage(key: ValueKey('article'), child: ArticlePage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('blog')) BeamPage(key: ValueKey('blog'), child: BlogPage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('contact')) BeamPage(key: ValueKey('contact'), child: ContactPage(), type: BeamPageType.noTransition),
      ];
}
