import 'package:flutter/material.dart';
import 'package:flutter_productapplist/pages/first.dart';

class Nextt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var a="https://media2.giphy.com/media/51Uhr2rvrGsdHbaPks/giphy_s.gif";
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffcbad6d),

        ),
        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Next())));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(image: NetworkImage(a))
              ),
              height: 200,
              width: 200,
            ),
          ),
        ),

      ),
    );
  }
}
