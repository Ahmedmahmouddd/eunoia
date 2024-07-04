// ignore_for_file: file_names
import 'dart:io';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CircularPictureWithHalfMoonShadow extends StatefulWidget {
  const CircularPictureWithHalfMoonShadow({super.key});

  @override
  _CircularPictureWithHalfMoonShadowState createState() =>
      _CircularPictureWithHalfMoonShadowState();
}

class _CircularPictureWithHalfMoonShadowState
    extends State<CircularPictureWithHalfMoonShadow> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 168.0.h,
                height: 168.0.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: KprimaryPink),
              ),
              Container(
                width: 160.0.h,
                height: 160.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: _image != null
                        ? FileImage(_image!)
                        : const AssetImage('assets/images/noimage.jpg')
                            as ImageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 3,
                right: 5,
                child: Container(
                  height: 40.sp,
                  decoration: const BoxDecoration(
                      color: KprimaryGreen, shape: BoxShape.circle),
                  child: IconButton(
                    onPressed: _pickImage,
                    icon: Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.white,
                      size: 25.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
