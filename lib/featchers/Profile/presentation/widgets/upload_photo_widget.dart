import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class UploadPhotoWidget extends StatefulWidget {
  const UploadPhotoWidget({super.key});

  @override
  State<UploadPhotoWidget> createState() => _UploadPhotoWidgetState();
}

class _UploadPhotoWidgetState extends State<UploadPhotoWidget> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();

    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text("Choose from the gallery".tr()),
              onTap: () async {
                Navigator.of(context).pop();
                final pickedFile =
                    await picker.pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  setState(() {
                    _selectedImage = File(pickedFile.path);
                  });
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Take a photo"),
              onTap: () async {
                Navigator.of(context).pop();
                final pickedFile =
                    await picker.pickImage(source: ImageSource.camera);
                if (pickedFile != null) {
                  setState(() {
                    _selectedImage = File(pickedFile.path);
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pickImage,
      child: DottedBorder(
        dashPattern: [5, 3],
        color: const Color.fromARGB(75, 158, 158, 158),
        strokeWidth: 2.w,
        borderType: BorderType.RRect,
        radius: Radius.circular(8.r),
        child: SizedBox(
          width: 352.w,
          height: 63.h,
          child: _selectedImage == null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.upload,
                      color: Color(0xffA3A3A3),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "Upload Photo".tr(),
                      style: AppTextStyles.white13w400
                          .copyWith(color: const Color(0xffA3A3A3)),
                    ),
                  ],
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.file(
                    _selectedImage!,
                    fit: BoxFit.cover,
                    width: 352.w,
                    height: 63.h,
                  ),
                ),
        ),
      ),
    );
  }
}

// class ImagePickerWidget extends StatefulWidget {
//   @override
//   _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
// }

// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? _image;
//   final picker = ImagePicker();

//   Future<void> _pickImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         _image != null ? Image.file(_image!) : Text("No image selected"),
//         ElevatedButton(
//           onPressed: _pickImage,
//           child: Text("Pick Image"),
//         ),
//       ],
//     );
//   }
// }
