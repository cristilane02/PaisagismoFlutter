import '/flutter_flow/flutter_flow_util.dart';
import 'editarpefil_widget.dart' show EditarpefilWidget;
import 'package:flutter/material.dart';

class EditarpefilModel extends FlutterFlowModel<EditarpefilWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for NumeroTelefone widget.
  FocusNode? numeroTelefoneFocusNode;
  TextEditingController? numeroTelefoneTextController;
  String? Function(BuildContext, String?)?
      numeroTelefoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    numeroTelefoneFocusNode?.dispose();
    numeroTelefoneTextController?.dispose();
  }
}
