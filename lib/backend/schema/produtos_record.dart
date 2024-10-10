import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "qtd" field.
  double? _qtd;
  double get qtd => _qtd ?? 0.0;
  bool hasQtd() => _qtd != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "like" field.
  DocumentReference? _like;
  DocumentReference? get like => _like;
  bool hasLike() => _like != null;

  // "EntradaSaida" field.
  String? _entradaSaida;
  String get entradaSaida => _entradaSaida ?? '';
  bool hasEntradaSaida() => _entradaSaida != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _desc = snapshotData['desc'] as String?;
    _nome = snapshotData['nome'] as String?;
    _qtd = castToType<double>(snapshotData['qtd']);
    _tipo = snapshotData['tipo'] as String?;
    _like = snapshotData['like'] as DocumentReference?;
    _entradaSaida = snapshotData['EntradaSaida'] as String?;
    _userid = snapshotData['userid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? img,
  double? preco,
  String? desc,
  String? nome,
  double? qtd,
  String? tipo,
  DocumentReference? like,
  String? entradaSaida,
  DocumentReference? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'preco': preco,
      'desc': desc,
      'nome': nome,
      'qtd': qtd,
      'tipo': tipo,
      'like': like,
      'EntradaSaida': entradaSaida,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.preco == e2?.preco &&
        e1?.desc == e2?.desc &&
        e1?.nome == e2?.nome &&
        e1?.qtd == e2?.qtd &&
        e1?.tipo == e2?.tipo &&
        e1?.like == e2?.like &&
        e1?.entradaSaida == e2?.entradaSaida &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.img,
        e?.preco,
        e?.desc,
        e?.nome,
        e?.qtd,
        e?.tipo,
        e?.like,
        e?.entradaSaida,
        e?.userid
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
