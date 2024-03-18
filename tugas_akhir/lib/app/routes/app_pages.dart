import 'package:get/get.dart';

import '../modules/all_feeder/bindings/all_feeder_binding.dart';
import '../modules/all_feeder/views/all_feeder_view.dart';
import '../modules/all_schedule/bindings/all_schedule_binding.dart';
import '../modules/all_schedule/views/all_schedule_view.dart';
import '../modules/detail_feeder/bindings/detail_feeder_binding.dart';
import '../modules/detail_feeder/views/detail_feeder_view.dart';
import '../modules/detail_jadwal/bindings/detail_jadwal_binding.dart';
import '../modules/detail_jadwal/views/detail_jadwal_view.dart';
import '../modules/detail_water/bindings/detail_water_binding.dart';
import '../modules/detail_water/views/detail_water_view.dart';
import '../modules/edit_jadwal/bindings/edit_jadwal_binding.dart';
import '../modules/edit_jadwal/views/edit_jadwal_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/new_password/bindings/new_password_binding.dart';
import '../modules/new_password/views/new_password_view.dart';
import '../modules/reset/bindings/reset_binding.dart';
import '../modules/reset/views/reset_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/tambah_jadwal/bindings/tambah_jadwal_binding.dart';
import '../modules/tambah_jadwal/views/tambah_jadwal_view.dart';
import '../modules/update_profile/bindings/update_profile_binding.dart';
import '../modules/update_profile/views/update_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.RESET,
      page: () => const ResetView(),
      binding: ResetBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.TAMBAH_JADWAL,
      page: () => const TambahJadwalView(),
      binding: TambahJadwalBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_JADWAL,
      page: () => EditJadwalView(),
      binding: EditJadwalBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FEEDER,
      page: () => DetailFeederView(),
      binding: DetailFeederBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ALL_FEEDER,
      page: () => const AllFeederView(),
      binding: AllFeederBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PROFILE,
      page: () => UpdateProfileView(),
      binding: UpdateProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_JADWAL,
      page: () => DetailJadwalView(),
      binding: DetailJadwalBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_WATER,
      page: () => const DetailWaterView(),
      binding: DetailWaterBinding(),
    ),
    GetPage(
      name: _Paths.ALL_SCHEDULE,
      page: () => const AllScheduleView(),
      binding: AllScheduleBinding(),
    ),
  ];
}
