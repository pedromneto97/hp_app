import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hp_app/shared/custom_app_bar.dart';
import 'package:hp_app/theme/colors.dart';

import '../../data/api_provider.dart';

class SpellsPage extends StatelessWidget {
  const SpellsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Feitiços',
        subtitle:
            'Os feitiços que estão aqui serão aprendidos durante os sete anos em Hogwarts.',
      ),
      backgroundColor: AppColors.yellowishWhite,
      body: FutureBuilder(
        future: GetIt.I.get<ApiProvider>().getSpells(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar os dados'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final spell = snapshot.data![index];

              return ExpansionTile(
                title: Text(spell.name),
                iconColor: AppColors.lightOrange,
                collapsedIconColor: AppColors.lightOrange,
                collapsedShape: const Border(
                  top: BorderSide(
                    color: AppColors.lightOrange,
                    width: 1,
                  ),
                ),
                shape: const Border(
                  top: BorderSide(
                    color: AppColors.lightOrange,
                    width: 1,
                  ),
                ),
                expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: AppColors.white,
                    padding: const EdgeInsets.all(16),
                    child: Text(spell.description),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
