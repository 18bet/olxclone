import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:olxclone/services/firebase_auth_service.dart';

class LoginController extends GetxController {
  final FirebaseAuthService _authService = FirebaseAuthService();
  var user = Rx<User?>(null).obs;

  @override
  void onInit() {
    super.onInit();
    user.bindStream(_authService.authStateChanges() as Stream<Rx<User?>>);
  }

  Future<void> verifyPhoneNumber(
      String phoneNumber, {
        required PhoneVerificationCompleted verificationCompleted,
        required PhoneVerificationFailed verificationFailed,
        required PhoneCodeSent codeSent,
        required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout,
      }) async {
    await _authService.verifyPhoneNumber(
      phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Future<void> signInWithPhoneNumber(String verificationId, String smsCode) async {
    final result = await _authService.signInWithPhoneNumber(verificationId, smsCode);
    if (result != null) {
      print('User logged in: ${result.user?.phoneNumber}');
      // Navigate to the next screen or perform any other action upon successful login
    } else {
      print('Failed to log in');
      // Handle failed login attempt
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}