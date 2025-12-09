import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' hide Uint8List;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatapp/about.dart';
import 'package:whatapp/name.dart';
import 'dart:typed_data';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String about ="available";
  String name= "Anjana";
  File? imagefile;
  Uint8List? webimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 1, 22),
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.arrow_back_sharp, color: Colors.white),
      ),
      body: Column(
        children: [
          if(kIsWeb&&webimage!=null)
          CircleAvatar(radius: 60,
          backgroundImage: MemoryImage(webimage!),
          )else if(!kIsWeb && imagefile != null)
          CircleAvatar(radius: 60,
          backgroundImage: FileImage(imagefile!),)
          else
          CircleAvatar(radius: 60,backgroundColor: Colors.grey,
          child: Icon(Icons.person,size: 50,color: const Color.fromARGB(255, 35, 34, 34),),),
          SizedBox(height: 5),
          TextButton(
            onPressed: pickimage,
            child: Text(
              "Edit",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 4, 89, 7),
              ),
            ),
          ),
          SizedBox(height: 2),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: () async{ 
                     final newname =  await
    
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Name(currentName:name))
                      );
                     if (newname != null) {
                      setState(() {
                        name = newname;
                      });
                       
                     }
                    },
                      child: ListTile(
                        leading: Icon(
                          Icons.person_2_outlined,
                          color: const Color.fromARGB(255, 154, 152, 152),
                        ),
                        title: Text(
                          "Name",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(name
                         
                      
                           ,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 154, 152, 152),
                            ),
                          ),
                        ),
                      ),
                    ),
                  

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async {
                        final newabout = await
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>About(currentabout :about )));
                        if (newabout != null) {
                          setState(() {
                            about=newabout;
                          });
                          
                        }
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.perm_device_information_rounded,
                          color: const Color.fromARGB(255, 154, 152, 152),
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(about,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 154, 152, 152),
                          ),
                      ),
                        ),
                    )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: launchcall,
                      child: ListTile(
                        leading: Icon(
                          Icons.phone_outlined,
                          color: const Color.fromARGB(255, 154, 152, 152),
                        ),
                        title: Text(
                          "Phone",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text("+91 8078452355",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 154, 152, 152),
                          ),)),
                    )
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: launchlink,
                      child: ListTile(
                        leading: Icon(
                          Icons.link,
                          color: const Color.fromARGB(255, 154, 152, 152),
                        ),
                        title: Text(
                          "links",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Github",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 154, 152, 152),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
 Future<void> launchlink() async {
  final Uri url = Uri.parse("https://github.com/Anjana6037/Anjana");
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
  Future<void> pickimage()async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result!=null) {
      if (kIsWeb) {
        setState(() {
          webimage = result.files.first.bytes;
        });
        
      }else{
        setState(() {
          imagefile = File(result.files.single.path!);
        });
      }
      
    }
  }

  Future<void> launchcall() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '+918078452355');
  if (!await launchUrl(phoneUri)) {
    throw Exception('Could not launch $phoneUri');
  }
  }
}

