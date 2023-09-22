import 'package:flutter/material.dart';
import 'package:hp_app/presentation/content/widgets/content_card.dart';
import 'package:hp_app/shared/custom_app_bar.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Conteúdos',
        subtitle:
            'Você pode conhecer seus colegas e também conhecer previamente alguns feitiços.',
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ContentCard(),
          ],
        ),
      ),
    );
  }
}
