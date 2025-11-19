import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/about.dart';
import 'package:whatsapp/name.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _profileImage;
  String name="Athulya P";
  String about = "Chase your dreams"; 

  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final File? image = (await picker.pickImage(source: source)) as File?;

    if (image != null) {
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }

  void _showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt, color: Colors.white),
                title: const Text(
                  "Take Photo",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library, color: Colors.white),
                title: const Text(
                  "Choose From Gallery",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              if (_profileImage != null)
                ListTile(
                  leading: const Icon(Icons.delete, color: Colors.red),
                  title: const Text(
                    "Remove Photo",
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _profileImage = null;
                    });
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.grey,
                backgroundImage: _profileImage != null
                    ? FileImage(_profileImage!)
                    : null,
                child: _profileImage == null
                    ? const Icon(
                        Icons.account_circle_rounded,
                        size: 180,
                        color: Colors.white,
                      )
                    : null,
              ),
              TextButton(
                onPressed: _showImagePickerOptions,
                child: const Text(
                  "Edit",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () 
                async
                {
                  final newname=await Navigator.push(context, MaterialPageRoute(builder: (context)=>Name1(

                    currentname:name
                  )));
                  if(newname!=null){
                    setState(() {
                      name=newname;
                    });
                  }
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.person_2_outlined,
                    color: Color.fromARGB(255, 177, 174, 174),
                  ),
                  title: const Text(
                    "Name",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle:  Text(
                    name,
                    style: TextStyle(color: Color.fromARGB(255, 177, 174, 174)),
                  ),
                  onTap: () async{
                 final newname=  await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Name1(currentname: name,)),
                    );
                    if(newname!=null){
                      setState(() {
                        name=newname;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
  leading: const Icon(
    Icons.error_outline,
    color: Color.fromARGB(255, 177, 174, 174),
  ),
  title: const Text(
    "About",
    style: TextStyle(color: Colors.white),
  ),
  subtitle: Text(
    about,
    style: const TextStyle(color: Color.fromARGB(255, 177, 174, 174)),
  ),
  onTap: () async {
    final newAbout = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutPage(currentAbout: about),
      ),
    );

    if (newAbout != null) {
      setState(() {
        about = newAbout;
      });
    }
  },
),
              const SizedBox(height: 5),
              ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 177, 174, 174),
                ),
                title: const Text(
                  "Phone",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: GestureDetector(
                  onTap: () => _launchPhone("7902391002"),
                  child: const Text(
                    "7902391002",
                    style: TextStyle(
                      color:  Color.fromARGB(255, 177, 174, 174),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                leading: const Icon(
                  Icons.link,
                  color: Color.fromARGB(255, 177, 174, 174),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Link", style: TextStyle(color: Colors.white)),
                    TextButton(
                      onPressed: () =>
                          _launchUrl("https://github.com/Athulya316"),
                      child: const Text(
                        "Git Hub",
                        style: TextStyle(color:  Color.fromARGB(255, 177, 174, 174)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchPhone(String phone) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    if (!await launchUrl(phoneUri)) {
      throw Exception('Could not launch $phoneUri');
    }
  }
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
