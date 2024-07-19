import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginEvent) {
        emit(LoginLoading());
        try {
          UserCredential user =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: event.email,
            password: event.password,
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
      if (event is RegisterEvent) {
        emit(RegisterLoading());
        try {
          UserCredential user = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: event.email, password: event.password);
          emit(RegisterSuccess());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            emit(RegisterFailure(errorMessage: 'Weak Password'));
          } else if (e.code == 'email-already-in-use') {
            emit(RegisterFailure(errorMessage: 'This email is already exist'));
          }
        } catch (e) {
          emit(RegisterFailure(
              errorMessage: 'There was an error, try again later'));
        }
      }
    });
  }
}
