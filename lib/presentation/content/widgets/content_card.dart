import 'package:flutter/material.dart';
import 'package:hp_app/presentation/spells/spells_page.dart';
import 'package:hp_app/theme/harry_potter_app_icons.dart';
import 'package:hp_app/theme/text_styles.dart';

import '../../../theme/colors.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 20,
            offset: const Offset(0, 4),
          )
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(
            'assets/images/spell.webp',
            width: 92,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Icon(
                      HarryPotterApp.wand,
                      size: 24,
                      color: AppColors.gryffindor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Feitiços',
                      style: TextStyles.boldText14.copyWith(
                        color: AppColors.darkGray,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Aqui estão os principais feitiços que serão aprendidos na escola.',
                  style: TextStyles.regularText12.copyWith(
                    color: AppColors.darkGray,
                  ),
                ),
                FilledButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SpellsPage(),
                    ),
                  ),
                  child: Text(
                    'Acessar',
                    style: TextStyles.boldButtonText.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
