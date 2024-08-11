import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/core/constants/general_constants.dart';

class PageDecorator extends ConsumerWidget {
  const PageDecorator({
    required this.body,
    super.key,
    this.title,
    this.backgroundColor,
    this.appbarHeight,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.scaffoldKey,
    this.bottomSheet,
    this.checkInternetConnection = true,
    this.hasPadding = true,
    this.paddingValue = kPadding,
    this.hasSingleChildScrollView = true,
  });

  final String? title;
  final double? appbarHeight;
  final Widget body;
  final Color? backgroundColor;
  final Widget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Widget? bottomSheet;
  final Widget? drawer;
  final Key? scaffoldKey;
  final bool checkInternetConnection;
  final bool hasPadding;
  final double paddingValue;
  final bool hasSingleChildScrollView;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: backgroundColor,
        key: scaffoldKey,
        drawer: drawer,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: appBar != null
            ? PreferredSize(
                preferredSize:
                    Size(double.infinity, appbarHeight ?? kAppbarHeight),
                child: appBar!,
              )
            : null,
        body: hasSingleChildScrollView
            ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: hasPadding
                      ? EdgeInsets.symmetric(horizontal: paddingValue)
                      : EdgeInsets.zero,
                  child: body,
                ),
              )
            : Padding(
                padding: hasPadding
                    ? EdgeInsets.symmetric(horizontal: paddingValue)
                    : EdgeInsets.zero,
                child: body,
              ),
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        bottomSheet: bottomSheet,
      ),
    );
  }
}
