import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:tamayyuz_test/layout/tamayyuz/tamayyuz_layout.dart';
import 'package:tamayyuz_test/shared/components.dart';

class LoginScreen extends StatefulWidget
{
   LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>
{
  var formKey = GlobalKey<FormState>();
  String userEmail = "";
  @override
  Widget build(BuildContext context)
  {
      //Size size = MediaQuery.of(context).size;
      var emailController= TextEditingController();
      var passwordController= TextEditingController();
      return Scaffold(
        backgroundColor: Colors.brown[600],
        body: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            child: Column(
              crossAxisAlignment:CrossAxisAlignment.center,
              children:
              [
                const SizedBox(height: 80.0,),
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width/3,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20.0,),
                Container(
                  height: MediaQuery.of(context).size.height / 2 + 100 ,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.brown,
                              ),
                              padding:const EdgeInsets.all(8.0),
                              width: 160,
                              child: const Text(
                                'تسجيل دخول',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Cairo',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                padding:const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.brown[100],
                                ),
                                width: 160,
                                child: const Text(
                                  'انشاء حساب',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontFamily: 'Cairo',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        color: Colors.white,
                        width: 300,
                        child:defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (value)
                          {
                            if(value!.isEmpty){
                              return 'أدخل البريد الالكتروني';
                            }
                          },
                          label: 'البريد الالكتروني',
                        ),

                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 300,
                        color: Colors.white,
                        child:defaultFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          validate: (value)
                          {
                            if(value!.isEmpty){
                              return 'كلمه المرور قصيره';
                            }
                          },
                          label: 'كلمه المرور',
                          suffix: Icons.visibility,


                        ),

                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const
                        [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: Text(
                              'نسيت كلمه المرور؟',
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,

                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children:
                        [
                          // button login
                          Container(
                            width: 300,
                            height: 40.0,
                            color: Colors.yellow[200],
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                InkWell(
                                  onTap: (){
                                    //TODO
                                  },
                                  child: const Text(
                                    'تسجيل الدخول',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.brown,
                                      fontFamily: 'Cairo',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          //don't login
                          InkWell(
                            onTap: ()
                            {
                              navigateTo(context, const TamayyuzLayout());

                            },
                            child:const Text(
                              'تسجيل الدخول لاحقا',
                              style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          //another ways to login
                          const SizedBox(height: 10.0,),
                          const Text(
                            'او سجل دخول عبر ',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              const Icon(
                                Icons.mail,
                                color: Colors.red,
                                size: 30,
                              ),
                              const SizedBox(width: 5.0,),
                              InkWell(
                                  child:const Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  onTap:()
                                  {
                                    signInWithFacebook();
                                    setState(()
                                    {

                                    });
                                  }
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
  //Start Firebase Login facebook
  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login(
      permissions: ['email', 'public_profile','user_birthday']);

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    final userData =await  FacebookAuth.instance.getUserData();
    userEmail = userData['email'];
    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
//end Firebase Login facebook
}




