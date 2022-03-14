import 'package:flutter/material.dart';
import 'package:flutter_razorpay_payment/UI/home.dart';

class ProductDeatilScree extends StatefulWidget {
  @override
  _ProductDeatilScreeState createState() => _ProductDeatilScreeState();
}

class _ProductDeatilScreeState extends State<ProductDeatilScree> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Image Scetion
            _buildImageSection(size),
            //Details Section
            _buildDetailsSection(context),
            //Reviews Section
          ],
        ),
      ),
    );
  }

  Card _buildImageSection(Size size) {
    return Card(
      //TOD: Image Slider
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Container(
            height: size.height / 3,
            width: double.maxFinite,
            child: Image.network(
              "https://picsum.photos/500",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10.0,
            right: 0.0,
            // height: 30.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.share),
                  style: ElevatedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.all(4.0),
                    onPrimary: Colors.black,
                    primary: Colors.white70,
                    shape: CircleBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.bookmark_border),
                  style: ElevatedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.all(4.0),
                    onPrimary: Colors.black,
                    primary: Colors.white70,
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildDetailsSection(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aliqua ea aute anim ut.",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " 20 Rs",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  children: [
                    Text("4.5"),
                    Icon(
                      Icons.star,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
          Text(
            "Aliquip est qui sunt enim reprehenderit duis. Ipsum adipisicing nulla mollit dolore mollit cillum nulla. Aliqua veniam eiusmod nostrud commodo enim irure excepteur. Elit occaecat tempor sit et sit. Esse laborum ea Lorem velit qui sunt in nulla reprehenderit velit ad. Aute culpa id adipisicing do ullamco et quis sit magna enim officia reprehenderit.",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(),
          ),
          SizedBox(
            height: 60.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.chevron_right),
                    Text(
                      "Proceed to buy",
                      // AppLocalizations.of(context).translate('Proceed to buy'),
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
