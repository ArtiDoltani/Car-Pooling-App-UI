import 'dart:io';
import 'dart:typed_data';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List titleList = ["User name", "Email address", "Mobile number"];
  List subTitle = ["Johnwilson", "john@mail.com", "+91 1234567890"];
  Uint8List? _image;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: UiHelper.CustomAppBar("Edit profile", () {
          Navigator.pop(context);
        }),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 50,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : const CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage("images/profile.png"),
                            ),
                      Positioned(
                        bottom: -0,
                        left: 60,
                        child: IconButton(
                          onPressed: () {
                            showImagePickerOption(context);
                          },
                          icon: Icon(
                            Icons.add_a_photo_outlined,
                            color: UiHelper.orangeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding:
                              const EdgeInsets.only(left: 15, top: 12),
                          title: Text(titleList[index],
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text(subTitle[index]),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        height: 1,
                        color: Colors.grey.shade400,
                      ),
                      itemCount: titleList.length,
                    ),
                  ),
                ],
              ),
            ),
            UiHelper.AppButtons(() {}, "Update")
          ],
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext buildContext) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Change profile image",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {
                    _pickImageFromCamera();
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: UiHelper.color,
                        child: Icon(
                          Icons.camera_alt,
                          color: UiHelper.appColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Camera"),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pickImageFromGallery();
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: UiHelper.color,
                        child: const Icon(
                          Icons.image,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Gallery"),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: UiHelper.color,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Remove image"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// Gallery
  Future<void> _pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final bytes = await pickedImage.readAsBytes();
      setState(() {
        selectedImage = File(pickedImage.path);
        _image = bytes;
      });
      Navigator.pop(context); // close the model
    }
  }

  // Camera
  Future<void> _pickImageFromCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      final bytes = await pickedImage.readAsBytes();
      setState(() {
        selectedImage = File(pickedImage.path);
        _image = bytes;
      });
      Navigator.pop(context); // close the model
    }
  }
}
