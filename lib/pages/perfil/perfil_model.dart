import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataFak = false;
  FFUploadedFile uploadedLocalFile_uploadDataFak =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataFak = '';

  // Stores action output result for [Custom Action - eliminarFotoAnterior] action in Button widget.
  String? resultadoBorrado;
  Completer<List<ProfilesRow>>? requestCompleter;
  // State field(s) for NombreUsuario widget.
  FocusNode? nombreUsuarioFocusNode;
  TextEditingController? nombreUsuarioTextController;
  String? Function(BuildContext, String?)? nombreUsuarioTextControllerValidator;
  String? _nombreUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre es obligatorio';
    }

    if (val.length > 50) {
      return 'maximo 50 letras.';
    }

    return null;
  }

  // State field(s) for Telfono widget.
  FocusNode? telfonoFocusNode;
  TextEditingController? telfonoTextController;
  String? Function(BuildContext, String?)? telfonoTextControllerValidator;
  String? _telfonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El teléfono es obligatorio';
    }

    if (val.length > 15) {
      return 'maximo son 15';
    }

    return null;
  }

  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  String? _direccionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La dirección es obligatoria';
    }

    if (val.length > 150) {
      return 'maximo 150 letras ';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreUsuarioTextControllerValidator =
        _nombreUsuarioTextControllerValidator;
    telfonoTextControllerValidator = _telfonoTextControllerValidator;
    direccionTextControllerValidator = _direccionTextControllerValidator;
  }

  @override
  void dispose() {
    nombreUsuarioFocusNode?.dispose();
    nombreUsuarioTextController?.dispose();

    telfonoFocusNode?.dispose();
    telfonoTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
