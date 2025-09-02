// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/core/service/image/image_services.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class InputImageWidget extends StatefulWidget {
  const InputImageWidget({
    super.key,
    required this.onImagePicked,
  });
  final ValueChanged<File> onImagePicked;

  @override
  State<InputImageWidget> createState() => _InputImageWidgetState();
}

class _InputImageWidgetState extends State<InputImageWidget> {
  File? selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadProfileImage();
  }

  Future<void> _loadProfileImage() async {
    final imageService = appLocator<ImageServices>();
    File? profileImage = await imageService.getProfileImageService();
    if (profileImage != null) {
      setState(() {
        selectedImage = profileImage;
      });
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      final file = File(pickedFile.path);
      widget.onImagePicked(file);
      //? await ImageService.saveProfileImage(file);  تبع حفظ الصورة بالكاش
      setState(() {
        selectedImage = file;
      });
    }
  }

  void _showChoiceDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Select Image".tr()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo),
              title: Text("Gallery".tr()),
              onTap: () {
                Navigator.pop(ctx);
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text("Camera".tr()),
              onTap: () {
                Navigator.pop(ctx);
                _pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.r),
      child: Material(
        child: InkWell(
          onTap: _showChoiceDialog,
          child: CircleAvatar(
            backgroundColor: AppColors.colorSecondary,
            radius: 40.r,
            backgroundImage:
                selectedImage != null ? FileImage(selectedImage!) : null,
            child: selectedImage == null
                ? Icon(Icons.upload, size: 50.sp, color: Colors.white)
                : null,
          ),
        ),
      ),
    );
  }
}
