import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarRecord extends FirestoreRecord {
  CarRecord._(
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

  // "qtd" field.
  double? _qtd;
  double get qtd => _qtd ?? 0.0;
  bool hasQtd() => _qtd != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qtd = castToType<double>(snapshotData['qtd']);
    _nome = snapshotData['nome'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('car');

  static Stream<CarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarRecord.fromSnapshot(s));

  static Future<CarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarRecord.fromSnapshot(s));

  static CarRecord fromSnapshot(DocumentSnapshot snapshot) => CarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarRecordData({
  String? img,
  double? preco,
  double? qtd,
  String? nome,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'preco': preco,
      'qtd': qtd,
      'nome': nome,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarRecordDocumentEquality implements Equality<CarRecord> {
  const CarRecordDocumentEquality();

  @override
  bool equals(CarRecord? e1, CarRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.preco == e2?.preco &&
        e1?.qtd == e2?.qtd &&
        e1?.nome == e2?.nome &&
        e1?.users == e2?.users;
  }

  @override
  int hash(CarRecord? e) =>
      const ListEquality().hash([e?.img, e?.preco, e?.qtd, e?.nome, e?.users]);

  @override
  bool isValidKey(Object? o) => o is CarRecord;
}
