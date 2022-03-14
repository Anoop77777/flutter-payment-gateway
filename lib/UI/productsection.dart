import 'package:flutter/material.dart';
import 'package:flutter_razorpay_payment/UI/productDetail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text('Shopping', style: Theme.of(context).textTheme.headline6),
      ),
      body: buildProductSection(),
    );
  }

  buildProductSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.builder(
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisCount: 2,
            childAspectRatio:
                ((MediaQuery.of(context).size.width - 46 - 10) / 2) /
                    (((MediaQuery.of(context).size.width - 46 - 10) / 2) + 73),
            crossAxisSpacing: 10,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDeatilScree()));
              },
              child: Container(
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.all(8.0),
                width: 200,
                height: 175,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      "https://picsum.photos/500",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "In aliquip deserunt enim",
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            "20 Rs",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration:
                          BoxDecoration(color: Colors.pink.withAlpha(200)),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            );
          }),
    );
  }
}
