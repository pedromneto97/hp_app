import 'package:dio/dio.dart';
import 'package:hp_app/entities/spell.dart';

class ApiProvider {
  final Dio _client;

  const ApiProvider(this._client);

  Future<List<Spell>> getSpells() async {
    final response = await _client.get<List<dynamic>>('/spells');

    final spells = <Spell>[];

    for (final Map<String, dynamic> spell in response.data!) {
      spells.add(
        Spell(
          name: spell['name'] as String,
          description: spell['description'] as String,
        ),
      );
    }

    return spells;
  }
}
