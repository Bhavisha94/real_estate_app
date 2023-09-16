import 'package:flutter_bloc/flutter_bloc.dart';

part 'notification_settings_state.dart';

class NotificationSettingsCubit extends Cubit<NotificationSettingsState> {
  NotificationSettingsCubit() : super(NotificationSettingsInitial());

  allowNoti(bool value) {
    emit(NotificationSettingsInitial());
    emit(AllowNotificationSettings(value: value));
  }

  emailNoti(bool value) {
    emit(NotificationSettingsInitial());
    emit(EmailNotificationSettings(value: value));
  }

  orderNoti(bool value) {
    emit(NotificationSettingsInitial());
    emit(OrderNotificationSettings(value: value));
  }

  generalNoti(bool value) {
    emit(NotificationSettingsInitial());
    emit(GeneralNotificationSettings(value: value));
  }
}
