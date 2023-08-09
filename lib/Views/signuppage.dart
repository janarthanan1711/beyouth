import 'package:beyouth/Views/signinpage.dart';
import 'package:flutter/material.dart';

import '../Resources/colorresource.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.clear();
    _emailController.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: screenWidth,
          height: MediaQuery.of(context).size.height,
          decoration:  const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroundgif.gif'),
                fit: BoxFit.cover ),
          ),
          child: Container(
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    ColorResource.colorYellow.withOpacity(.8),
                    Colors.amberAccent.withOpacity(0.4),
                    Colors.black.withOpacity(0.8),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft
              ),
            ),
            child:Stack(
                alignment: Alignment.center,
                children:[
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 520,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black.withOpacity(0.600)
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(text: const TextSpan(
                                  text: 'BE',style: TextStyle(color: ColorResource.ratingColor,fontSize: 50,fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: 'YOUTH',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),
                                    )
                                  ]

                              ),
                              ),
                              const SizedBox(height: 40,),
                              const Row(
                                children: [
                                  Text('User Name',style: TextStyle(color: ColorResource.colorYellow,fontSize: 30),)
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.text,
                                  controller: _nameController,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Name',
                                    hintStyle: const TextStyle(color: Colors.white),
                                    // labelText: 'Email Address',labelStyle: TextStyle(color: Colors.yellow,fontSize: 30),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(width: 3, color: Colors.black), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.red),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    errorStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.black),
                                      borderRadius: BorderRadius.circular(40),
                                    ),

                                  ),
                                  validator: (value){
                                    if(value!.isEmpty || value == null){
                                      return 'Please Enter name';
                                    }
                                  },
                                ),

                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Row(
                                children: [
                                  Text('Email Address',style: TextStyle(color: ColorResource.colorYellow,fontSize: 30),)
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Email Address',
                                    hintStyle: const TextStyle(color: Colors.white),
                                    // labelText: 'Email Address',labelStyle: TextStyle(color: Colors.yellow,fontSize: 30),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(width: 3, color: Colors.black), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.red),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    errorStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.black),
                                      borderRadius: BorderRadius.circular(40),
                                    ),

                                  ),
                                  validator: (value){
                                    if(value!.isEmpty || value == null){
                                      return 'Please Enter email';
                                    }
                                  },
                                ),

                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Row(
                                children: [
                                  Text('Password',style: TextStyle(color: ColorResource.colorYellow,fontSize: 30),)
                                ],
                              ),
                              const SizedBox(height: 5,),

                              Container(
                                color: Colors.transparent,
                                child: TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.number,
                                  controller: _passwordController,
                                  cursorColor: Colors.black,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Password',
                                    hintStyle: const TextStyle(color: Colors.white),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(width: 3, color: Colors.black), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    errorStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    errorBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.red),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.black),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty || value == null){
                                      return 'Please Enter password';
                                    }
                                  },

                                ),

                              ),

                              const SizedBox(height: 20,),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(_formKey.currentState!.validate()){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>   const SigninPage()),
                                      );
                                    }
                                  });
                                },
                                child: Container(
                                  width: 320,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color:   ColorResource.ratingColor,
                                      border: Border.all(color: Colors.black,width: 3),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Login',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(onPressed: (){
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const SigninPage()),
                            );
                          });
                        }, child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                                child: const Text('Signup',style:TextStyle(color: ColorResource.ratingColor,fontSize: 24),))))),
                  )
                ]
            ),

          ),
        ),

      ),
    );
  }
}
