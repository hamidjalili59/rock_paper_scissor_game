import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/config/themes/app_themes.dart';
import 'package:rockie/src/core/constants/routes.dart';
import 'package:rockie/src/presentation/shared/components/button_component.dart';
import 'package:rockie/src/presentation/shared/components/outlined_text_field_component.dart';

class JoinServerPage extends ConsumerStatefulWidget {
  const JoinServerPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _JoinServerPageState();
}

class _JoinServerPageState extends ConsumerState<JoinServerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              child: OutlinedTextFieldComponent(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 4,
                hintText: '0000',
                style: kHeading5BoldTextStyle,
                hintTextStyle:
                    kHeading5TextStyle.copyWith(color: Colors.black45),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 120,
              child: ButtonComponent(
                title: 'Accept',
                height: 50,
                onTap: () => context.push(gameRoute),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
