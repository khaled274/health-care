import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/forget_password/cubit/forget_password_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../widgets/app_text_form_field.dart';
import 'forget_password_screen.dart';

class AnotherWayScreen extends StatelessWidget {
  const AnotherWayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = ForgetPasswordCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: cubit.anotherWayFormKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        AppTextFormField(
                          maxLines: 1,
                          icon: Icons.email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'email must not be empty';
                            } else if (!value.contains('@')) {
                              return 'please enter a valid email';
                            } else {
                              return null;
                            }
                          },
                          controller: cubit.emailController,
                          hintText: "Email Address",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            MagicRouter.navigateTo(
                                const ForgetPasswordScreen());
                          },
                          child: const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Another Way",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        MainButton(
                          borderRadius: 35,
                          height: 50,
                          onPressed: () {},
                          text: "Reset",
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                        const SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {},
                          child: const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Need Help ?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
