import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: Firebasestoragee(),));
}
class Firebasestoragee extends StatefulWidget {
  const Firebasestoragee({super.key});

  @override
  State<Firebasestoragee> createState() => _Firebasestoragee();
}

class _Firebasestoragee extends State<Firebasestoragee> {
  FirebaseStorage storage=FirebaseStorage.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firebase storage"),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(onPressed: ()=>upload('camara'),
                  icon: Icon(Icons.camera_alt), label: Text("camara")),
              ElevatedButton.icon(onPressed: ()=>upload('gallary'),
                  icon: Icon(Icons.photo), label: Text("gallary")),
            ],
          ),
          Expanded(child: FutureBuilder(
              future: loadData(),
              builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.done) {
              return ListView.builder(
                  itemCount:snapshot.data?.length ?? 0 ,
                  itemBuilder: (context, index) {
                final Map<String, dynamic> image = snapshot.data![index];
                return Card(
                    child: ListTile(
                      leading: Image.network(image['url']),
                      title: Text(image['uploaded_by']),
                      subtitle: Text(image['description']),
                      trailing: IconButton(
                          onPressed: () {
                            deleteImage(image['path']);
                          }, icon: const Icon(Icons.delete)),
                    ));
              });
            }
            return Center(child: const CircularProgressIndicator());
          }))
        ],
      ),
      ),
    );
  }

 Future<List<Map<String,dynamic>>>  loadData() async {
   List<Map<String, dynamic>> images = [];
   final ListResult result = await storage.ref().list();
   final List<Reference> allfiles = result.items;

   await Future.forEach(allfiles, (singleFile) async {
     final String fileurl = await singleFile.getDownloadURL();
     final FullMetadata filemeta = await singleFile.getMetadata();

     images.add({
       'url': fileurl,
       'path': singleFile.fullPath,
       'uploaded_by': filemeta.customMetadata?['uploaded_by'] ?? 'No Data',
       'description':
       filemeta.customMetadata?['description'] ?? 'No Description'
     });
   });
   return images;
  }

 Future<void> upload(String imginput)async {
    final picker=ImagePicker();
  XFile? pickedImage;
  try{
    pickedImage=await picker.pickImage(source: imginput=='camara'? ImageSource.camera : ImageSource.gallery,
    maxWidth: 1920
    );
    final String filename=path.basename(pickedImage!.path);
    File imagefile=File(pickedImage.path);

    try{
      await storage.ref(filename).putFile(imagefile,
      SettableMetadata(
        customMetadata: {
          'uploaded_by': "it me xxxx",
          'description': 'Some Description........'
        }
      )
      );
      setState(() {

      });
    }on FirebaseException catch(e){
      print(e);
    }
  }catch(e){
    print(e);
  }
  }

  Future<void> deleteImage(String imagepath)async {
    await storage.ref(imagepath).delete();
    setState(() {});
  }
}
