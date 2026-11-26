// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<String> eliminarFotoAnterior(String? urlAnterior) async {
  if (urlAnterior == null || urlAnterior.isEmpty) return 'sin url anterior';

  const marcador = '/storage/v1/object/public/avatars/';
  final indice = urlAnterior.indexOf(marcador);
  if (indice == -1) return 'url no es del bucket: $urlAnterior';

  final ruta = Uri.decodeComponent(
    urlAnterior.substring(indice + marcador.length).split('?').first,
  );

  try {
    final borrados =
        await Supabase.instance.client.storage.from('avatars').remove([ruta]);
    return 'ruta: $ruta, borrados: ${borrados.length}';
  } catch (e) {
    return 'error: $e';
  }
}
