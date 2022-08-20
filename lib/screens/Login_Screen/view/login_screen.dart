part of 'login_screen_imports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final WebServices webServices = WebServices();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          showToast(text: state.message, state: ToastState.SUCCSES);
          navigateTo(context, HomeLayoutScreen());
        } else if (state is LoginErrorState) {
          showToast(
              text: 'Incorrect Email or Password', state: ToastState.ERORR);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topEnd,
                      width: double.infinity,
                      height: 100,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(100))),
                      child: Image(
                        image: AssetImage('assets/images/up.png'),
                        //alignment: ,
                        //  height: height(context) * .55,
                        // width: width(context),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text(
                      'La Vie',
                      style: TextStyle(
                          fontFamily: 'Meddon',
                          fontWeight: FontWeight.w500,
                          fontSize: 48),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      // width: 213,
                      // height: 46,
                      child: const Text(
                        'Welcome back you’ve been missed!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    deafultEmailTextFormField(emailController: emailController),
                    const SizedBox(
                      height: 20,
                    ),
                    deafultPasswordTextFormField(
                      passwordController: passwordController,
                      text: 'Password',
                    ),
                    TextButton(
                        onPressed: () {
                          navigateTo(context, RecoverScreen());
                        },
                        child: const Text(
                          'Forget Password?',
                          textAlign: TextAlign.end,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    ConditionalBuilder(
                      condition: state is! LoginLoadingState,
                      builder: (context) => Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: DefaultBTN(
                          formKey: formKey,
                          text: 'Login',
                          padding: EdgeInsets.symmetric(
                              horizontal: 122, vertical: 16),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              getIt.get<LoginBloc>().add(LoginEventData(
                                  email: emailController.text,
                                  password: passwordController.text));
                            }
                          },
                        ),
                      ),
                      fallback: (context) =>
                          Center(child: CircularProgressIndicator()),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Or Continue with ..',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          SizedBox(width: 90),
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont Have An Account,'),
                        TextButton(
                            onPressed: () {
                              navigateTo(context, RegisterScreen());
                            },
                            child: Text('Register Now')),
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomStart,
                      width: double.infinity,
                      height: 80,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(100))),
                      child: Image(
                        image: AssetImage('assets/images/down.png'),
                        //alignment: ,
                        //  height: height(context) * .55,
                        // width: width(context),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
