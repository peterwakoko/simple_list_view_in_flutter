import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          // width: 200.0,
          // height: 100.0,
          //margin: EdgeInsets.only(left: 35.0, top: 50.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Air Uganda",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        backgroundColor: Colors.redAccent),
                  )),
                  Expanded(
                      child: Text(
                    "From Entebbe to Dubai via Senegal",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Spice jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        backgroundColor: Colors.redAccent),
                  )),
                  Expanded(
                      child: Text(
                    "From Mumbai to Bangalore via New Delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ],
              ),
              FlightImageAsset(),
              FlightBookingButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/aeroplane.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            elevation: 6.0,
          ),
          child: Text(
            "Book Your Flight",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
            ),
          ),
          onPressed: () => bookFlight(context)),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight booked successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
