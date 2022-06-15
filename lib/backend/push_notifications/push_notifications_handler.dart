import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.white,
          child: Center(
            child: Builder(
              builder: (context) => Image.asset(
                'assets/images/FGMB_Logo.png',
                width: 250,
                fit: BoxFit.contain,
              ),
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'loginPage': (data) async => LoginPageWidget(),
  'subscribePage': (data) async => SubscribePageWidget(),
  'subscribe21day': (data) async => Subscribe21dayWidget(),
  'dayChallenge': (data) async => DayChallengeWidget(),
  'dayChallenge90': (data) async => DayChallenge90Widget(),
  'dailyFinancialTracker': (data) async => DailyFinancialTrackerWidget(),
  'dailyFinancialTrackerList': (data) async =>
      DailyFinancialTrackerListWidget(),
  'transaction_add': (data) async => TransactionAddWidget(
        dailyFinancialPlanner: getParameter(data, 'dailyFinancialPlanner'),
        uid: getParameter(data, 'uid'),
      ),
  'transaction_add_personal': (data) async => TransactionAddPersonalWidget(
        dailyFinancialPlanner: getParameter(data, 'dailyFinancialPlanner'),
        uid: getParameter(data, 'uid'),
      ),
  'personalAllocation': (data) async => PersonalAllocationWidget(),
  'businessAllocation': (data) async => BusinessAllocationWidget(),
  'community': (data) async => NavBarPage(initialPage: 'community'),
  'subscribeGoalBook': (data) async => SubscribeGoalBookWidget(),
  'subscribeDailySuccessPlanner': (data) async =>
      SubscribeDailySuccessPlannerWidget(),
  'subscribeFinancialPlanner': (data) async =>
      SubscribeFinancialPlannerWidget(),
  'createStory': (data) async => CreateStoryWidget(),
  'goalDetail': (data) async => GoalDetailWidget(
        userID: getParameter(data, 'userID'),
        goalID: getParameter(data, 'goalID'),
        date: getParameter(data, 'date'),
      ),
  'goalBook': (data) async => GoalBookWidget(),
  'dailySuccessPlanner': (data) async => DailySuccessPlannerWidget(),
  'dailySuccessPlannerDetail': (data) async => DailySuccessPlannerDetailWidget(
        dailySuccessPlannerRR: getParameter(data, 'dailySuccessPlannerRR'),
      ),
  'editDailySuccessPlanner': (data) async => EditDailySuccessPlannerWidget(
        date: getParameter(data, 'date'),
        dailySuccessPlannerDateRR:
            getParameter(data, 'dailySuccessPlannerDateRR'),
      ),
  'editQuarterlyGoals': (data) async => EditQuarterlyGoalsWidget(
        date: getParameter(data, 'date'),
      ),
  'postDetails': (data) async => PostDetailsWidget(
        postReference: getParameter(data, 'postReference'),
        userRecord: await getDocumentParameter(
            data, 'userRecord', UsersRecord.serializer),
      ),
  'createPost': (data) async => CreatePostWidget(),
  'storyDetails': (data) async => StoryDetailsWidget(
        initialStoryIndex: getParameter(data, 'initialStoryIndex'),
      ),
  'visionBoard': (data) async => VisionBoardWidget(),
  'ImageUpload': (data) async => ImageUploadWidget(),
  'registerAccount': (data) async => RegisterAccountWidget(),
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'onboarding': (data) async => OnboardingWidget(),
  'completeProfile': (data) async => CompleteProfileWidget(),
  'editProfile': (data) async => EditProfileWidget(
        userProfile: getParameter(data, 'userProfile'),
      ),
  'myProfile': (data) async => hasMatchingParameters(data, {'userProfile'})
      ? MyProfileWidget(
          userProfile: getParameter(data, 'userProfile'),
        )
      : NavBarPage(initialPage: 'myProfile'),
  'changePassword': (data) async => ChangePasswordWidget(),
  'notificationsSettings': (data) async => NotificationsSettingsWidget(),
  'tutorial_PROFILE': (data) async => TutorialPROFILEWidget(),
  'privacyPolicy': (data) async => PrivacyPolicyWidget(),
  'BookList': (data) async => NavBarPage(initialPage: 'BookList'),
  'bookListGrid': (data) async => BookListGridWidget(),
  'videoList': (data) async => NavBarPage(initialPage: 'videoList'),
  'videoPlayer': (data) async => VideoPlayerWidget(
        videoID: getParameter(data, 'videoID'),
      ),
  'calculator': (data) async => CalculatorWidget(),
  'goalWriting': (data) async => GoalWritingWidget(),
  'newsletterList': (data) async => NewsletterListWidget(),
  'newsletter': (data) async => NewsletterWidget(
        newsletterDetail: getParameter(data, 'newsletterDetail'),
      ),
  'AddBooks': (data) async => AddBooksWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
