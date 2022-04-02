import 'package:flutter/material.dart';

class TextFieldStyled extends StatefulWidget {
  const TextFieldStyled({Key? key}) : super(key: key);

  @override
  State<TextFieldStyled> createState() => _TextFieldStyledState();
}

class _TextFieldStyledState extends State<TextFieldStyled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Fields Styled'),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                    decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.purple),
                  hintText: 'Введите значение',
                  helperText: 'Поле для поиска заметок',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFAB47BC),
                  ),
                  // suffixIconColor: Color(0xFFAB47BC)),
                )),
              )
            ],
          )),
    );
  }
}
