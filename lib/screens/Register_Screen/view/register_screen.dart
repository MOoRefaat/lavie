part of 'register_screen_imports.dart';

class RegisterScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final WebServices webServices = WebServices();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showToast(text: state.message, state: ToastState.SUCCSES);
          showToast(text: state.message, state: ToastState.SUCCSES);
        } else if (state is SignUpErrorState) {
          showToast(text: state.message, state: ToastState.ERORR);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                            prefix: const Icon(Icons.person),
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Your Name';
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Container(
                          width: 155,
                          child: deafultTextFormField(
                            type: TextInputType.name,
                            controller: lastNameController,
                            label: 'Last Name',
                            prefix: const Icon(Icons.person),
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Your Name';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    deafultEmailTextFormField(emailController: emailController),
                    const SizedBox(
                      height: 20,
                    ),
                    deafultPasswordTextFormField(
                      passwordController: passwordController,
                      text: 'Password',
                    ),
                    const SizedBox(height: 20),
                    deafultPasswordTextFormField(
                      passwordController: passwordConfirmController,
                      text: 'Confirm Password',
                    ),
                    const SizedBox(height: 20),
                    ConditionalBuilder(
                      condition: state is! SignUpLoadingState,
                      builder: (context) => Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          //color: HexColor('#536DFE'),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: DefaultBTN(
                          formKey: formKey,
                          text: 'Register',
                          padding: const EdgeInsets.symmetric(
                              horizontal: 120, vertical: 19),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // BlocProvider.of<RegisterBloc>(context).add(event)
                              getIt.get<RegisterBloc>().add(SignUpEvent(
                                  email: emailController.text,
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  password: passwordController.text));
                            }
                            // if (state is SignUpSuccessState) {
                            //   navigateTo(context, HomeLayoutScreen());
                            // }
                          },
                        ),
                      ),
                      fallback: (context) =>
                          Center(child: CircularProgressIndicator()),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Continue with ..',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          const SizedBox(width: 70),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook_outlined),
                            iconSize: 40,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 65,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/google.png'),
                            iconSize: 40,
                          ),
                          const SizedBox(
                            width: 65,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already Have An Account,'),
                        TextButton(
                            onPressed: () {
                              navigateTo(context, LoginScreen());
                            },
                            child: const Text('Login Now')),
                      ],
                    )
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
