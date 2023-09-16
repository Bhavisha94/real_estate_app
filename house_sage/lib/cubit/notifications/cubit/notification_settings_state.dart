part of 'notification_settings_cubit.dart';

abstract class NotificationSettingsState {
  const NotificationSettingsState();

  @override
  List<Object> get props => [];
}

class NotificationSettingsInitial extends NotificationSettingsState {}

class AllowNotificationSettings extends NotificationSettingsState {
  final bool value;
  const AllowNotificationSettings({required this.value});
}

class EmailNotificationSettings extends NotificationSettingsState {
  final bool value;
  const EmailNotificationSettings({required this.value});
}

class OrderNotificationSettings extends NotificationSettingsState {
  final bool value;
  const OrderNotificationSettings({required this.value});
}

class GeneralNotificationSettings extends NotificationSettingsState {
  final bool value;
  const GeneralNotificationSettings({required this.value});
}
