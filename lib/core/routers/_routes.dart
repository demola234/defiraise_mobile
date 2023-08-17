

import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/core/secure/secure_key.dart';
import 'package:defiraiser_mobile/core/shared/bottom_navigator/bottom_navigator.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/view/reset_email_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/view/reset_otp_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/view/reset_password_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/view/login_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/view/reoccurying_login_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/view/select_avatar_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/signup.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/view/create_password_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/view/signup_screen.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/view/verify_otp_screen.dart';
import 'package:defiraiser_mobile/features/donation/presentation/view/create_donation_screen.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/presentation/_home.dart';
import 'package:defiraiser_mobile/features/home/presentation/view/category_campaign_screen.dart';
import 'package:defiraiser_mobile/features/profile/presentation/view/change_password_screen.dart';
import 'package:defiraiser_mobile/features/profile/presentation/view/edit_profile_screen.dart';
import 'package:defiraiser_mobile/features/profile/presentation/view/select_avatar_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part '../routers/routers.dart';