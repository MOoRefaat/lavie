import 'dart:ffi';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lavie/components/widgets/default_text_form_field.dart';
import 'package:lavie/di/getit.dart';
import 'package:lavie/network/cashe_helper.dart';
import 'package:lavie/screens/Register_Screen/bloc/register_bloc.dart';
import '../../../components/components.dart';
import '../../../components/widgets/deafult_Email_textFormField.dart';
import '../../../components/widgets/deafult_Password_textFormField.dart';
import '../../../components/widgets/default_btn.dart';
import '../../../network/api.dart';
import '../../HomeLayout_Screen/view/homeLayout_screen.dart';
import '../../Login_Screen/view/login_screen_imports.dart';

part 'register_screen.dart';
