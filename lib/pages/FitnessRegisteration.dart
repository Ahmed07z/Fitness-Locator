import 'package:flutter/material.dart';

class FitnessRegisteration extends StatefulWidget {
  FitnessRegisteration({Key? key}) : super(key: key);

  @override
  State<FitnessRegisteration> createState() => _FitnessRegisterationState();
}

class _FitnessRegisterationState extends State<FitnessRegisteration> {
  late String ownerName;
  late String fitnessCenterName;
  late String email;
  late String phoneno;
  late String timings;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget? _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name:',),
      validator: (String? value){
        if(value!.isEmpty){
          return 'Name is required';

        }
      },
      onSaved:(String? value){
        ownerName=value!;
      },
    );
  }

  Widget? _buildCenterNameField() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Fitness Center Name:',),
      validator: (String? value){
        if(value!.isEmpty){
          return ' Center Name is required';

        }
      },
      onSaved:(String? value){
        fitnessCenterName=value!;
      },
    );
  }

  Widget? _buildemailField() {
 return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String? value) {
        email = value!;
      },
    );
  }

  Widget? _buildphonenoField() {
   return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number:',),
      validator: (String? value){
        if(value!.isEmpty){
          return ' Phoneno is required';

        }
      },
      onSaved:(String? value){
        phoneno=value!;
      },
    );
  }

  Widget? _buildtimingsField() {
  return TextFormField(
      decoration: InputDecoration(labelText: 'Timings:',),
      validator: (String? value){
        if(value!.isEmpty){
          return ' Center Timing is required';

        }
      },
      onSaved:(String? value){
        fitnessCenterName=value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitness Center Registeration")),
      body:SingleChildScrollView(
       
        child: Form(
          key:_formkey,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _buildNameField(),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _buildCenterNameField(),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _buildemailField(),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _buildphonenoField(),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _buildtimingsField(),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: (){
                if(!_formkey.currentState!.validate()){
                return;
                };
                _formkey.currentState!.save();
                print(ownerName);
                // print(fitnessCenterName);
                // print(email);
                // print(phoneno);
              },
            )
          ],
        )),
      ),
    );
  }
}
