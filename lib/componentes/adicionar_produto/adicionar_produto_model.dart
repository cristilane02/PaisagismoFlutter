import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'adicionar_produto_widget.dart' show AdicionarProdutoWidget;
import 'package:flutter/material.dart';

class AdicionarProdutoModel extends FlutterFlowModel<AdicionarProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  // State field(s) for Categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode1;
  TextEditingController? valorTextController1;
  String? Function(BuildContext, String?)? valorTextController1Validator;
  // State field(s) for Tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode2;
  TextEditingController? valorTextController2;
  String? Function(BuildContext, String?)? valorTextController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();

    valorFocusNode1?.dispose();
    valorTextController1?.dispose();

    valorFocusNode2?.dispose();
    valorTextController2?.dispose();
  }
}
