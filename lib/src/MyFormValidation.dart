import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  // const MyFormValidation({Key? key}) : super(key: key);

  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Form Validation')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key:_formKey,  //-> form state를 알 수 있게 된다.
              // 에러 처리같은거 하려면 Form 해줘야
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (value) {   // 값이 들어오고, validate규칙을 정해줌.
                  if (value.isEmpty) {  // 글자가 없다면 에러
                    return '공백은 허용되지 않습니다. ';
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        ScaffoldMessenger.of(_formKey.currentContext)
                            .showSnackBar(SnackBar(content: Text('처리중')));
                      }
                    },
                    child: Text("완료")),
              ),
              TextField(
                autofocus: true,
              )  // validator기능이 없음
            ],
          )),
        ));
  }
}
