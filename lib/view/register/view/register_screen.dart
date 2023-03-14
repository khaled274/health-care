import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/view/register/cubit/register_cubit.dart';

import '../../../widgets/app_text_form_field.dart';
import '../../../widgets/auth_text_form_field.dart';
import '../../../widgets/main_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = RegisterCubit.get(context);

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
                  key: cubit.registerFormKey,
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
                          icon: Icons.person,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            return null;
                          },
                          controller: cubit.userNAmeController,
                          hintText: "User Name",
                          iconColor: Colors.blue,
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
                        AuthTextFromField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password must not be empty';
                            } else if (value.length < 6) {
                              return 'password must be at least 8 characters';
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {},
                          controller: cubit.passwordController,
                          obscureText: cubit.isPassword,
                          hintText: "Password",
                          icon: cubit.suffix,
                          onPressed: cubit.changePasswordVisibility,
                          iconColor: Colors.blue.withOpacity(.7),
                        ),
                        const SizedBox(height: 30),
                        const SizedBox(height: 50),
                        MainButton(
                          borderRadius: 35,
                          height: 50,
                          onPressed: () {},
                          text: "Sign Up",
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                        const SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            // MagicRouter.navigateTo(const Scaffold());
                          },
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
