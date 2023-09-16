import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_sage/cubit/notifications/cubit/notification_settings_cubit.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/custom_switch.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool allowNoti = true,
      emailNoti = false,
      orderNoti = false,
      generalNoti = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Notifications', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:
            BlocConsumer<NotificationSettingsCubit, NotificationSettingsState>(
          listener: (context, state) {
            if (state is AllowNotificationSettings) {
              allowNoti = state.value;
            } else if (state is EmailNotificationSettings) {
              emailNoti = state.value;
            } else if (state is OrderNotificationSettings) {
              orderNoti = state.value;
            } else if (state is GeneralNotificationSettings) {
              generalNoti = state.value;
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                menu('Allow Notifications', 'For daily update you will get it',
                    (value) {
                  context.read<NotificationSettingsCubit>().allowNoti(value);
                }, allowNoti),
                menu('Email Notifications', 'For daily update you will get it',
                    (p0) {
                  context.read<NotificationSettingsCubit>().emailNoti(p0);
                }, emailNoti),
                menu('Order Notifications', 'For daily update you will get it',
                    (p0) {
                  context.read<NotificationSettingsCubit>().orderNoti(p0);
                }, orderNoti),
                menu(
                    'General Notifications', 'For daily update you will get it',
                    (p0) {
                  context.read<NotificationSettingsCubit>().generalNoti(p0);
                }, generalNoti)
              ],
            );
          },
        ),
      ),
    );
  }

  Card menu(
      String title, String subtitle, Function(bool) onChanged, bool value) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorUtils.contentPrimary),
        ),
        subtitle: Text(
          subtitle,
          style: textStyle.copyWith(
              fontSize: 12, color: ColorUtils.contentSecondary),
        ),
        trailing: CustomSwitch(value: value, onChanged: onChanged),
      ),
    );
  }
}
