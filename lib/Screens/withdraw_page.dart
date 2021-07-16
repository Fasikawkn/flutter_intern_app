import 'package:crowd_funding_app/Screens/edit_page.dart';
import 'package:flutter/material.dart';

class WithdrawPage extends StatelessWidget {
  const WithdrawPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Withdraw",
        ),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 1.5,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Total raised from this fundraiser (after ",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        TextSpan(
                            text: "fees",
                            style: Theme.of(context).textTheme.bodyText2),
                        TextSpan(
                          text: ")",
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "\$0.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: size.width,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Theme.of(context).accentColor),
                        onPressed: () {},
                        child: Text(
                          "Set up withdrawals",
                          style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                          ),
                        )),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Take a minute to review these important details: ",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.check,
                          size: 20.0, color: Theme.of(context).accentColor),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                style: TextStyle(color: Colors.grey[700]),
                                text:
                                    "If you do not set up withdrawals within 90 days of your first donation,",
                              ),
                              TextSpan(
                                  text: "all donations will be refunded",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  WithdrawNote(
                    "Settings up withdrawals will not end your campaign. Your Campaing will continue will continue to accept donations",
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  WithdrawNote(
                    "Withdrawls to a bank account will start arriving in 2-5 business days after setup.",
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  WithdrawNote(
                    "Need Someone else to withdrawals the money? No problem! You can grant them sole access as part of this process.",
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class WithdrawNote extends StatelessWidget {
  String message;
  WithdrawNote(this.message);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.check, size: 20.0, color: Theme.of(context).accentColor),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Text(
            "$message",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}