import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  static ProfileCubit get(context) => BlocProvider.of(context);

  XFile? userimage;
  XFile? xRayimage;
  XFile? medicinimage;
  XFile? testsimage;

  ImagePicker? imagePicker;
  GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController disaeseTypeController = TextEditingController();
  TextEditingController disaeseDiscController = TextEditingController();

  Future<String> pickImageFromGallery(XFile? image) async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    image = imageFile;
    return image!.path;
  }
}
