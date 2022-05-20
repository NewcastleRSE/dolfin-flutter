import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dolfin_flutter/data/models/child_model.dart';
import 'package:dolfin_flutter/data/models/record_model.dart';
import 'package:dolfin_flutter/data/models/weeklyrecord_model.dart';
import 'package:dolfin_flutter/data/models/weight_model.dart';

import '../models/parent_model.dart';

class FireStoreCrud {
  FireStoreCrud();

  final _firestore = FirebaseFirestore.instance;

  Future<void> addChild({required ChildModel child}) async {
    var childcollection = _firestore.collection('children');
    await childcollection.add(child.tojson());
  }

  Future<void> addRecord({required RecordModel record}) async {
    var recordcollection = _firestore.collection('records');
    await recordcollection.add(record.tojson());
  }

  Future<void> addWeeklyRecord({required WeeklyRecordModel record}) async {
    var recordcollection = _firestore.collection('weekly_records');
    await recordcollection.add(record.tojson());
  }

  Future<void> addWeight({required WeightModel record}) async {
    var weightcollection = _firestore.collection('weights');
    await weightcollection.add(record.tojson());
  }

  Future<void> addChildHospitalAdmission(
      String child_id, String study_id) async {
    DateTime now = DateTime.now();
    // String today = DateTime(now.year, now.month, now.day).toString();
    // // strip time from date
    // today = today.split(' ')[0];

    await FirebaseFirestore.instance.collection('admissions').add(
        {'child_id': child_id, 'study_id': study_id, 'date_submitted': now});
  }

  Stream<List<ChildModel>> getChildren({required String parentID}) {
    return _firestore
        .collection('children')
        .where('parent_id', isEqualTo: parentID)
        .snapshots(includeMetadataChanges: true)
        .map((snapshot) => snapshot.docs
            .map((doc) => ChildModel.fromjson(doc.data(), doc.id))
            .toList());
  }

  Future<List<String>> getDischargeDates({required String parentID}) async {
    List<String> dates = [];

    final querySnapshot = await FirebaseFirestore.instance
        .collection('children')
        .where('parent_id', isEqualTo: parentID)
        .get();

    for (var doc in querySnapshot.docs) {
      // Getting data directly
      String date = doc.get('dischargeDate');

      dates.add(date);
    }

    return dates;
  }

  Stream<List<RecordModel>> getRecords({required String childID}) {
    return _firestore
        .collection('records')
        .where('child_id', isEqualTo: childID)
        .snapshots(includeMetadataChanges: true)
        .map((snapshot) => snapshot.docs
            .map((doc) => RecordModel.fromjson(doc.data(), doc.id))
            .toList());
  }

  Stream<List<RecordModel>> getRecordsRange(
      {required String childID,
      required DateTime start,
      required DateTime end}) {
    return _firestore
        .collection('records')
        .where('child_id', isEqualTo: childID)
        .where('date', isGreaterThan: Timestamp.fromDate(start))
        .where('date', isLessThan: Timestamp.fromDate(end))
        .snapshots(includeMetadataChanges: true)
        .map((snapshot) => snapshot.docs
            .map((doc) => RecordModel.fromjson(doc.data(), doc.id))
            .toList());
  }

  Future<void> updateChild(
      {required String name,
      dob,
      docid,
      dischargeDate,
      dueDate,
      recruitedAfterDischarge}) async {
    var childcollection = _firestore.collection('children');
    await childcollection.doc(docid).update({
      'name': name,
      'dob': dob,
      'dischargeDate': dischargeDate,
      'dueDate': dueDate,
      'recruitedAfterDischarge': recruitedAfterDischarge
    });
  }

  Future<void> updateRecord({
    required String supplement,
    reason,
    otherReason,
    docid,
  }) async {
    var recordcollection = _firestore.collection('records');
    await recordcollection.doc(docid).update({
      'supplement': supplement,
      'reason': reason,
      'other_reason': otherReason
    });
  }

  Future<void> updateWeeklyRecord({
    required String supplement,
    reason,
    otherReason,
    docid,
  }) async {
    var recordcollection = _firestore.collection('weekly_records');
    await recordcollection.doc(docid).update({
      'supplement': supplement,
      'reason': reason,
      'other_reason': otherReason
    });
  }

  Future<void> deleteChild({required String docid}) async {
    var childcollection = _firestore.collection('children');
    await childcollection.doc(docid).delete();
  }

  Future<void> deleteRecord({required String docid}) async {
    var recordollection = _firestore.collection('records');
    await recordollection.doc(docid).delete();
  }
}
