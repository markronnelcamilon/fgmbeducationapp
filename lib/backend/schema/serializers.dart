import 'package:built_value/standard_json_plugin.dart';

import 'users_record.dart';
import 'appointments_record.dart';
import 'transactions_record.dart';
import 'transaction_categories_record.dart';
import 'budgets_record.dart';
import 'user_list_record.dart';
import 'budget_list_record.dart';
import 'book_list_record.dart';
import 'goal_list_record.dart';
import 'goals_record.dart';
import 'vision_board_record.dart';
import 'user_post_record.dart';
import 'day_challenge21_record.dart';
import 'task21_record.dart';
import 'challenge_day21_record.dart';
import 'video_record.dart';
import 'daily_success_planner_record.dart';
import 'quarterly_goals_record.dart';
import 'daily_financial_planner_record.dart';
import 'daily_financial_transaction_record.dart';
import 'goal_book_record.dart';
import 'system_data_record.dart';
import 'post_comments_record.dart';
import 'user_stories_record.dart';
import 'business_allocation_record.dart';
import 'newsletter_record.dart';
import 'subscriptions_record.dart';
import 'meetings_record.dart';

import 'index.dart';

export 'index.dart';

part 'serializers.g.dart';

const kDocumentReferenceField = 'Document__Reference__Field';

@SerializersFor(const [
  UsersRecord,
  AppointmentsRecord,
  TransactionsRecord,
  TransactionCategoriesRecord,
  BudgetsRecord,
  UserListRecord,
  BudgetListRecord,
  BookListRecord,
  GoalListRecord,
  GoalsRecord,
  VisionBoardRecord,
  UserPostRecord,
  DayChallenge21Record,
  Task21Record,
  ChallengeDay21Record,
  VideoRecord,
  DailySuccessPlannerRecord,
  QuarterlyGoalsRecord,
  DailyFinancialPlannerRecord,
  DailyFinancialTransactionRecord,
  GoalBookRecord,
  SystemDataRecord,
  PostCommentsRecord,
  UserStoriesRecord,
  BusinessAllocationRecord,
  NewsletterRecord,
  SubscriptionsRecord,
  MeetingsRecord,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DocumentReferenceSerializer())
      ..add(DateTimeSerializer())
      ..add(LatLngSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

extension SerializerExtensions on Serializers {
  Map<String, dynamic> toFirestore<T>(Serializer<T> serializer, T object) =>
      mapToFirestore(serializeWith(serializer, object));
}

class DocumentReferenceSerializer
    implements PrimitiveSerializer<DocumentReference> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DocumentReference]);
  @override
  final String wireName = 'DocumentReference';

  @override
  Object serialize(Serializers serializers, DocumentReference reference,
      {FullType specifiedType: FullType.unspecified}) {
    return reference;
  }

  @override
  DocumentReference deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DocumentReference;
}

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType: FullType.unspecified}) {
    return dateTime;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as DateTime;
}

class LatLngSerializer implements PrimitiveSerializer<LatLng> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([LatLng]);
  @override
  final String wireName = 'LatLng';

  @override
  Object serialize(Serializers serializers, LatLng location,
      {FullType specifiedType: FullType.unspecified}) {
    return location;
  }

  @override
  LatLng deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      serialized as LatLng;
}

Map<String, dynamic> serializedData(DocumentSnapshot doc) =>
    {...mapFromFirestore(doc.data()), kDocumentReferenceField: doc.reference};

Map<String, dynamic> mapFromFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is Timestamp) {
        value = (value as Timestamp).toDate();
      }
      if (value is GeoPoint) {
        value = (value as GeoPoint).toLatLng();
      }
      return MapEntry(key, value);
    });

Map<String, dynamic> mapToFirestore(Map<String, dynamic> data) =>
    data.map((key, value) {
      if (value is LatLng) {
        value = (value as LatLng).toGeoPoint();
      }
      return MapEntry(key, value);
    });

extension GeoPointExtension on LatLng {
  GeoPoint toGeoPoint() => GeoPoint(latitude, longitude);
}

extension LatLngExtension on GeoPoint {
  LatLng toLatLng() => LatLng(latitude, longitude);
}

DocumentReference toRef(String ref) => FirebaseFirestore.instance.doc(ref);

T safeGet<T>(T Function() func, [Function(dynamic) reportError]) {
  try {
    return func();
  } catch (e) {
    reportError?.call(e);
  }
  return null;
}
