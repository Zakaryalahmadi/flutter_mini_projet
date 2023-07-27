import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Votre ShynleI c'est.. ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          Text(
            "7 Mapes, 2 fiches pour prendre note des rencont res, 1 page pour eclairer \nle sens, 3 interpretations pour vous aider.. ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
