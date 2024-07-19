import 'package:bloc/bloc.dart';
import 'package:chatapp/cubits/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signInUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(errorMessage: 'user not found'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(errorMessage: 'wrong password'));
      }
    } catch (e) {
      emit(LoginFailure(errorMessage: 'some thing went wrong'));
    }
  }

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterFailure(errorMessage: 'Weak Password'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFailure(errorMessage: 'This email is already exist'));
      }
    } catch (e) {
      emit(
          RegisterFailure(errorMessage: 'There was an error, try again later'));
    }
  }
}
