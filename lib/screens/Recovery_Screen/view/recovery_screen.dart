part of 'recovery_screens_imports.dart';

class RecoverScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 135),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Recovery!',
                  style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w800,
                      fontSize: 48),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  // width: 213,
                  // height: 46,
                  child: Text(
                    'The OTP Code Will Be Sent To Your Email To Reset Your Password!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                deafultEmailTextFormField(emailController: emailController),
                SizedBox(
                  height: 40,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    //color: HexColor('#536DFE'),
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: DefaultBTN(
                    formKey: formKey,
                    text: 'Send',
                    padding:
                        EdgeInsets.symmetric(horizontal: 125, vertical: 16),
                    // onpressed: () {
                    //   if (formKey.currentState!.validate()) {
                    //     navigateTo(context, HomeLayoutScreen());
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                  // MaterialButton(
                  //   //colorBrightness: Brightness.dark,
                  //   height: 58,
                  //   onPressed: () {
                  //     if (formKey.currentState!.validate()) ;
                  //   },
                  //   child: Text(
                  //     'Send',
                  //     style: TextStyle(
                  //         fontSize: 22,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white),
                  //   ),
                  //   //  color: HexColor('#7D4EFF'),
                  //   color: Colors.green,
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 127.5, vertical: 16),
                  //   //  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
