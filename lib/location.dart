import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:webnav2/article.dart';
import 'package:webnav2/blog.dart';
import 'package:webnav2/contact.dart';
import 'package:webnav2/home.dart';

class AppLocation extends BeamLocation {
  AppLocation(BeamState state) : super(state);
  @override
  List<String> get pathBlueprints => ['/', '/article', '/blog', '/contact'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(key: ValueKey('home'), child: HomePage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('article')) BeamPage(key: ValueKey('article'), child: ArticlePage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('blog')) BeamPage(key: ValueKey('blog'), child: BlogPage(), type: BeamPageType.noTransition),
        if (state.uri.pathSegments.contains('contact')) BeamPage(key: ValueKey('contact'), child: ContactPage(), type: BeamPageType.noTransition),
      ];
}
