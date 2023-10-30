import 'package:cloud_firestore/cloud_firestore.dart';

class Feeder {
  final String title;
  final String? deskripsi;
  final DateTime date;
  final String id;
  Feeder({
    required this.title,
    this.deskripsi,
    required this.date,
    required this.id,
  });
  factory Feeder.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot,
      [SnapshotOptions? options]) {
    final data = snapshot.data()!;
    return Feeder(
      date: data['date'].toDate(),
      title: data['title'],
      deskripsi: data['deskripsi'],
      id: snapshot.id,
    );
  }
  Map<String, Object?> toFirestore() {
    return {
      "date": Timestamp.fromDate(date),
      "title": title,
      "deskripsi": deskripsi
    };
  }
}
