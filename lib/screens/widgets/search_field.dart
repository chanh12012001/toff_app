import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/providers.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return TextField(
      decoration: InputDecoration(
          hintText: "Search here...",
          hintStyle: themeProvider.getTheme.textTheme.titleMedium!.copyWith(
            color: Colors.black.withOpacity(0.4),
          ),
          fillColor: Colors.white,
          filled: true,
          border: myinputborder(),
          enabledBorder: myinputborder(), //enabled border
          focusedBorder: myfocusborder(),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.5),
          )),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(25)),
      borderSide: BorderSide(
        color: Color(0xFFD7E0FE),
        width: 1,
      ),
    );
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 188, 199, 235),
        width: 1,
      ),
    );
  }
}
