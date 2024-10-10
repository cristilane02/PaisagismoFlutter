import '/flutter_flow/flutter_flow_util.dart';
import 'produto_widget.dart' show ProdutoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProdutoModel extends FlutterFlowModel<ProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
