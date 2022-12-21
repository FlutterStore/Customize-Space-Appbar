import 'package:customizable_space_bar/customizable_space_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              centerTitle: true,
              
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_sharp,color: Colors.white,),
                onPressed: () {},
              ),
              actions: const [
                Icon(Icons.dark_mode_rounded),
                SizedBox(width: 10,),
              ],
              backgroundColor: Colors.green,
              flexibleSpace: CustomizableSpaceBar(
                builder: (context, scrollingRate) {
                  return Padding(
                  padding: const EdgeInsets.only(bottom: 18, top: 18,),
                  child: Align(
                    alignment: Alignment.center,
                      child: Text(
                      "Animation Title",
                      style: TextStyle(
                        fontSize: 30 - 12 * scrollingRate,
                        color: Colors.white
                        ),
                      )
                    )
                  );
                },
              ),
              /// End of the part
              expandedHeight: 200,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const ListTile(
                    title: Text("Successoft Infotech"),
                  );
                },
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
