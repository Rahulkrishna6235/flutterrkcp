import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: profilemenu(),));
}

class profilemenu extends StatelessWidget {
  const profilemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("............."),),
      drawer: Drawer(
        child: Wrap(
          runSpacing: 15,
          children: [
            SizedBox(height: 100,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                  accountName: Text("name",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                  accountEmail: Text("email",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black) ,),
              onTap: (){},
            ),
      ListTile(
        leading: Icon(Icons.archive_outlined),
        title: Text("Archive",style: TextStyle(fontSize:16 ,fontWeight: FontWeight.bold,color: Colors.black),),
        onTap: (){},
      ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Updates",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text("Notifications",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
