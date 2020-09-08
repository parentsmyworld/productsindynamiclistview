import 'package:flutter/material.dart';
import 'package:flutter_productapplist/main.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  TextEditingController name=TextEditingController();
  TextEditingController categ=TextEditingController();
  TextEditingController price=TextEditingController();
  var prodnames=[];
  var cat=[];
  var pri=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20.0,top: 70.0,right: 20.0),
            decoration: BoxDecoration(
                color: Color(0xffcbad6d)),

            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(MyApp())));
                      },
                      child: Icon(
                          Icons.arrow_back),
                    ),
                    SizedBox(width: 85,),
                    Text("PRODUCTS", style: TextStyle(
                      fontSize: 20,
                    ),)
                  ],
                ),
                SizedBox(height: 40.0,),
                Container(

                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child:   TextField(

                    controller: name,

                    decoration: InputDecoration(

                        hintText: "Enter Product Name",

                        prefixIcon: Icon(Icons.keyboard),

                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10)

                        )

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: TextField(
                    controller: categ,
                    decoration: InputDecoration(
                        hintText: "Enter Category",

                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffEECDA3),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: TextField(

                    controller: price,

                    decoration: InputDecoration(

                        hintText: "Enter Price",

                        prefixIcon: Icon(Icons.keyboard),

                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10)

                        )

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        prodnames.add(name.text);
                        cat.add(categ.text);
                        pri.add(price.text);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffEECDA3),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      height: 50,
                      width: 100,

                      child: Center(child: Text("ADD")),
                    ),
                  ),
                ),

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: prodnames.length==null?0:prodnames.length,
                    itemBuilder: (context,index){
                      return Card(
                        color: Color(0xffEECDA3),
                        child: ListTile(
                          leading: Icon(Icons.library_books),
                          trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  prodnames.removeAt(index);
                                });
                              },
                              child: Icon(Icons.delete)),
                          title: Text("Product :"+prodnames[index],style: TextStyle(
                              color: Colors.black
                          ),),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Category :"+cat[index],style: TextStyle(
                                  color: Colors.green
                              ),),
                              Text("Price :"+pri[index],style: TextStyle(
                                  color: Colors.green
                              )),

                            ],
                          ),

                        ),
                      );
                    })

              ],
            ),
          ),
        ),
      ),

    );

  }
}
