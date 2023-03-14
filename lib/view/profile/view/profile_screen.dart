import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/view/profile/cubit/profile_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../widgets/app_text_form_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = ProfileCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: cubit.profileFormKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: cubit.userimage == null
                                        ? const AssetImage(
                                            "assets/images/doctor.jpg")
                                        : FileImage(
                                            File(cubit.userimage?.path ?? ""),
                                          ) as ImageProvider),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              bottom: 10,
                              child: GestureDetector(
                                onTap: () {
                                  cubit.pickImageFromGallery(cubit.userimage);
                                },
                                child: const Icon(Icons.camera_alt_outlined),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
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
                          controller: cubit.firstNameController,
                          hintText: "First Name",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 20),
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
                          controller: cubit.lastNameController,
                          hintText: "Last Name",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 20),
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
                          controller: cubit.ageController,
                          hintText: "Age",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 20),
                        AppTextFormField(
                          maxLines: 1,
                          icon: Icons.phone,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            return null;
                          },
                          controller: cubit.phoneNumberController,
                          hintText: "Phone Number",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 20),
                        AppTextFormField(
                          maxLines: 1,
                          icon: Icons.info,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            return null;
                          },
                          controller: cubit.disaeseTypeController,
                          hintText: "Disease Type",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 20),
                        AppTextFormField(
                          maxLines: 1,
                          icon: Icons.info,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            return null;
                          },
                          controller: cubit.disaeseDiscController,
                          hintText: "Disease Discription",
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text("x Ray :"),
                            const SizedBox(width: 80),
                            GestureDetector(
                              onTap: () {
                                cubit.pickImageFromGallery(cubit.xRayimage);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Text('Choose Image'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text("Medicines :"),
                            const SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {
                                cubit.pickImageFromGallery(cubit.medicinimage);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Text('Choose Image'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text("Tests :"),
                            const SizedBox(width: 82),
                            GestureDetector(
                              onTap: () {
                                cubit.pickImageFromGallery(cubit.testsimage);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Text('Choose Image'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        MainButton(
                          borderRadius: 35,
                          height: 50,
                          onPressed: () {
                            // if (cubit.loginFormKey.currentState!.validate()) {
                            //   MagicRouter.navigateTo(ProfileScreen());
                            // }
                          },
                          text: "Save",
                          width: MediaQuery.of(context).size.width / 1.5,
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
