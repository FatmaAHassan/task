import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Task"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Text("Woman's Fashion",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500,color: Colors.black),),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(18),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Politics.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(8),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage("assets/images/health.png"),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text("TexT")
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }
}
