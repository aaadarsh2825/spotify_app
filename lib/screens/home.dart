
import 'package:flutter/material.dart';
import 'package:spotify_app/services/category_operations.dart';
import 'package:spotify_app/models/category.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  Widget createCategory(Category category) {
    return Container(
        color: Colors.blueGrey.shade400,
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                category.name,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
  List<Widget>createListOfCategories(){
    List<Category> categoryList= CategoryOperations.getCategories().cast<Category>();
    List<Widget> categories =categoryList.map((Category category)=>createCategory(category)).toList();
    return categories;

  }

  Widget createGrid(){
    return Container(
      height: 400,
      child: GridView.count(
        childAspectRatio: 5/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  Widget  createAppBar(String message){
          return AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(message),
            actions: [Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.settings))],
          );

  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: Column(children: [
            createAppBar('Good Morning'),
            SizedBox(
              height: 5,
            ),
            createGrid()
          ],),
         decoration: BoxDecoration(
           gradient: LinearGradient(
               colors: [Colors.blueGrey.shade300, Colors.black],
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
                stops: [0.1,0.3])
         ),
        )

    );

  }
}