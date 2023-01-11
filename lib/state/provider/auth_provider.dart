
import 'package:flutter/material.dart';
import 'package:reviewapp/firebase/auth/auth_services.dart';

class AuthProvider extends ChangeNotifier{
  bool isLoading = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  AuthService auth = AuthService();
  Future<void> register({required String email, required String password,required BuildContext context})async{
    isLoading = true;
    notifyListeners();
     await auth.registerWithEmailAndPassword(email, password, context);
    clearController();
     isLoading = false;
    notifyListeners();

  }
  void clearController(){
     emailController.clear();
     passwordController.clear();
     nameController.clear();
     phoneController.clear();
     addressController.clear();
  }
  Future<void> login({required String email, required String password})async{
    isLoading = true;
    notifyListeners();
    await auth.signInWithEmailAndPassword(email, password);
    clearController();
    isLoading = false;
    notifyListeners();

  }
}
