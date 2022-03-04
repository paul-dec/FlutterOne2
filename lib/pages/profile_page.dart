import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_one/widgets/drawer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File _file = File("zz");
  Uint8List webImage = Uint8List(10);

  uploadImage() async {
    // MOBILE
    if (!kIsWeb) {
        final ImagePicker _picker = ImagePicker();
        XFile? image = await _picker.pickImage(source: ImageSource.gallery);

        if (image != null) {
          var selected = File(image.path);

          setState(() {
            _file = selected;
          });
        } else {
          showToast("No file selected");
        }
    }
    // WEB
    else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          _file = File("a");
          webImage = f;
        });
      } else {
        showToast("No file selected");
      }
    } else {
      showToast("Permission not granted");
    }
  }

  uploadCamera() async {
    // MOBILE
    if (!kIsWeb) {

        final ImagePicker _picker = ImagePicker();
        XFile? image = await _picker.pickImage(source: ImageSource.camera);

        if (image != null) {
          var selected = File(image.path);

          setState(() {
            _file = selected;
          });
        } else {
          showToast("No file selected");
        }
    }
    // WEB
    else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          _file = File("a");
          webImage = f;
        });
      } else {
        showToast("No file selected");
      }
    } else {
      showToast("Permission not granted");
    }
  }

  Future<PermissionStatus> requestPermissions() async {
    await Permission.photos.request();
    return Permission.photos.status;
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  List<Widget> imageWidget() {
    List<Widget> list = [];

    list.add(ElevatedButton(
      style: ElevatedButton.styleFrom(primary: ThemeColor.xPurple),
      onPressed: () => uploadImage(),
      child: const Text("Gallery"),
    ));
    if (!kIsWeb) {
      list.add(ElevatedButton(
          onPressed: () => uploadCamera(),
          child: const Text("Camera")
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.xBlue,
      appBar: AppBar(
        title: const Text("Profile", style: ThemeText.whiteTextBold,),
        backgroundColor: ThemeColor.xPurple,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SizedBox(
              height: 200,
              width: 200,
              child: (_file.path == "zz")
                  ? Image.asset("assets/user.png", fit: BoxFit.cover,)
                  : (kIsWeb)
                  ? Image.memory(webImage, fit: BoxFit.cover,)
                  : Image.file(_file, fit: BoxFit.cover,),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Column(
              children: imageWidget(),
            )
          ],
        ),
      )
    );
  }
}