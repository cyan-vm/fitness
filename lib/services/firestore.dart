import 'package:cloud_firestore/cloud_firestore.dart';


class fireStoreService {
  // get collection of notes
  final Collect
  ionReference notes =
      FirebaseFirestore.instance.collection('notes');
  Future<void> addNote (String note) {
    return notes.add({
      'note': note,
      'timestamp': Timestamp.now(),
    });
}
}
