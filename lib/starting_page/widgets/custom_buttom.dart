import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        backgroundColor:
            MaterialStateProperty.all<Color>(ColorConstants.primaryColor),
        shadowColor:
            MaterialStateProperty.all<Color>(ColorConstants.shadowColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        )),
      ),
      onPressed: () {
        //TODO
      },
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          'Exprimer mes reves >'.toUpperCase(),
        ),
      ),
    );
  }
}
