import 'package:flutter/material.dart';
import 'package:helthio_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:helthio_app/presentation/apportionment_list_screen/appointment_list_screen.dart';
import 'package:helthio_app/presentation/articles_screen/articles_screen.dart';
import 'package:helthio_app/presentation/booking_doctor_screen/booking_doctor_screen.dart';
import 'package:helthio_app/presentation/doctor_detail_screen/doctor_detail_screen.dart';
import 'package:helthio_app/presentation/drugs_detail_screen/drugs_detail_screen.dart';
import 'package:helthio_app/presentation/find_doctors_screen/find_doctors_screen.dart';
import 'package:helthio_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:helthio_app/presentation/login_screen/login_screen.dart';
import 'package:helthio_app/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:helthio_app/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:helthio_app/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:helthio_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:helthio_app/presentation/splash_screen/splash_screen.dart';
import 'package:helthio_app/presentation/top_doctor_screen/top_doctor_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String apportionmentListScreen = '/apportionment_list_screen';

  static const String topDoctorScreen = '/top_doctor_screen';

  static const String findDoctorsScreen = '/find_doctors_screen';

  static const String doctorDetailScreen = '/doctor_detail_screen';

  static const String bookingDoctorScreen = '/booking_doctor_screen';

  static const String articlesScreen = '/articles_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugsDetailScreen = '/drugs_detail_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        signUpScreen: SignUpScreen.builder,
        loginScreen: LoginScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        apportionmentListScreen: AppointmentListScreen.builder,
        topDoctorScreen: TopDoctorScreen.builder,
        findDoctorsScreen: FindDoctorsScreen.builder,
        doctorDetailScreen: DoctorDetailScreen.builder,
        bookingDoctorScreen: BookingDoctorScreen.builder,
        articlesScreen: ArticlesScreen.builder,
        pharmacyScreen: PharmacyScreen.builder,
        drugsDetailScreen: DrugsDetailScreen.builder,
        myCartScreen: MyCartScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
