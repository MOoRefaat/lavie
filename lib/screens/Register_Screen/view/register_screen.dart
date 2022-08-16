part of 'register_screen_imports.dart';

class RegisterScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var passwordConfirmController = TextEditingController();

  var firstNameController = TextEditingController();

  var lastNameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Register Now!',
                  style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w800,
                      fontSize: 48),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  // width: 213,
                  // height: 46,
                  child: const Text(
                    'Create An Account And Join To "La Vie" Community !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 21),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Container(
                      width: 155,
                      child: deafultTextFormField(
                        type: TextInputType.name,
                        controller: firstNameController,
                        label: 'First Name',
                        prefix: Icon(Icons.person),
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Name';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: 155,
                      child: deafultTextFormField(
                        type: TextInputType.name,
                        controller: lastNameController,
                        label: 'Last Name',
                        prefix: Icon(Icons.person),
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Name';
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                deafultEmailTextFormField(emailController: emailController),
                SizedBox(
                  height: 20,
                ),
                deafultPasswordTextFormField(
                  passwordController: passwordController,
                  text: 'Password',
                ),
                SizedBox(height: 20),
                deafultPasswordTextFormField(
                  passwordController: passwordConfirmController,
                  text: 'Confirm Password',
                ),
                SizedBox(height: 20),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    //color: HexColor('#536DFE'),
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: DefaultBTN(
                    formKey: formKey,
                    text: 'Register',
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 19),
                    // onpressed: () {
                    //   if (formKey.currentState!.validate()) {
                    //     navigateTo(context, HomeLayoutScreen());
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Continue with ..',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(width: 70),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook_outlined),
                        iconSize: 40,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/google.png'),
                        iconSize: 40,
                      ),
                      SizedBox(
                        width: 65,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already Have An Account,'),
                    TextButton(
                        onPressed: () {
                          navigateTo(context, LoginScreen());
                        },
                        child: Text('Login Now')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
