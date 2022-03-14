import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

//import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  Razorpay razorpay;
  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  void handlerPaymentSuccess() {
    print("Pament success");
    SnackBar(content: Text("Pament success"));
  }

  void handlerErrorFailure() {
    print("Pament error");
    SnackBar(content: Text("Pament error"));
  }

  void handlerExternalWallet() {
    print("External Wallet");
    SnackBar(content: Text("External Wallet"));
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_5G4GKKhUczeLah",
      "amount": num.parse("20") * 100,
      "name": "Sample App",
      "description": "Payment for the some random product",
      "prefill": {"contact": "9876543210", "email": "test@gmail.com"},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razor Payment"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(8)),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18))),
          child: Text(
            "20 Rs Pay Now",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            openCheckout();
          },
        ),
      ),
    );
  }
}
