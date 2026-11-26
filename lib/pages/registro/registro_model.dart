import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreUsuario widget.
  FocusNode? nombreUsuarioFocusNode;
  TextEditingController? nombreUsuarioTextController;
  String? Function(BuildContext, String?)? nombreUsuarioTextControllerValidator;
  String? _nombreUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TelefonoUsuario widget.
  FocusNode? telefonoUsuarioFocusNode;
  TextEditingController? telefonoUsuarioTextController;
  String? Function(BuildContext, String?)?
      telefonoUsuarioTextControllerValidator;
  String? _telefonoUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 15) {
      return 'El teléfono es muy largo';
    }

    return null;
  }

  // State field(s) for EmailRegistro widget.
  FocusNode? emailRegistroFocusNode;
  TextEditingController? emailRegistroTextController;
  String? Function(BuildContext, String?)? emailRegistroTextControllerValidator;
  String? _emailRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo es obligatorio';
    }

    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for PasswordRegistro widget.
  late FocusNode passwordRegistroPasswordVisibilityFocusNode;
  FocusNode? passwordRegistroFocusNode;
  TextEditingController? passwordRegistroTextController;
  late bool passwordRegistroVisibility;
  String? Function(BuildContext, String?)?
      passwordRegistroTextControllerValidator;
  String? _passwordRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña es obligatoria';
    }

    if (val.length < 6) {
      return 'La contraseña debe tener mínimo 6 caracteres';
    }
    if (val.length > 20) {
      return 'La contraseña debe tener maximo 20 caracteres';
    }

    return null;
  }

  // State field(s) for ConfirmPasswordField2 widget.
  late FocusNode confirmPasswordField2PasswordVisibilityFocusNode;
  FocusNode? confirmPasswordField2FocusNode;
  TextEditingController? confirmPasswordField2TextController;
  late bool confirmPasswordField2Visibility;
  String? Function(BuildContext, String?)?
      confirmPasswordField2TextControllerValidator;
  String? _confirmPasswordField2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe confirmar la contraseña ';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreUsuarioTextControllerValidator =
        _nombreUsuarioTextControllerValidator;
    telefonoUsuarioTextControllerValidator =
        _telefonoUsuarioTextControllerValidator;
    emailRegistroTextControllerValidator =
        _emailRegistroTextControllerValidator;
    passwordRegistroPasswordVisibilityFocusNode = FocusNode();
    passwordRegistroVisibility = false;
    passwordRegistroTextControllerValidator =
        _passwordRegistroTextControllerValidator;
    confirmPasswordField2PasswordVisibilityFocusNode = FocusNode();
    confirmPasswordField2Visibility = false;
    confirmPasswordField2TextControllerValidator =
        _confirmPasswordField2TextControllerValidator;
  }

  @override
  void dispose() {
    nombreUsuarioFocusNode?.dispose();
    nombreUsuarioTextController?.dispose();

    telefonoUsuarioFocusNode?.dispose();
    telefonoUsuarioTextController?.dispose();

    emailRegistroFocusNode?.dispose();
    emailRegistroTextController?.dispose();

    passwordRegistroFocusNode?.dispose();
    passwordRegistroTextController?.dispose();
    passwordRegistroPasswordVisibilityFocusNode.dispose();
    confirmPasswordField2FocusNode?.dispose();
    confirmPasswordField2TextController?.dispose();
    confirmPasswordField2PasswordVisibilityFocusNode.dispose();
  }
}
