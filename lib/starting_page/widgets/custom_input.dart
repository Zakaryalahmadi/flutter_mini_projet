import 'package:flutter/material.dart';

class MyCustomInput extends StatefulWidget {
  const MyCustomInput(
      {super.key, required this.title, this.subTitle, required this.hint});

  final String title;
  final String? subTitle;
  final String hint;

  @override
  MyCustomInputState createState() {
    return MyCustomInputState();
  }
}

class MyCustomInputState extends State<MyCustomInput> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            if (widget.subTitle != null && widget.subTitle!.isNotEmpty)
              const SizedBox(
                height: 25,
              ),
            Text(
              widget.subTitle ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 30),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: widget.hint,
                        hintStyle: const TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrez une valeur';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
