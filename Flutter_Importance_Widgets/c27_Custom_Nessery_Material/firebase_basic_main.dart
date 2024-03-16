// must importance to import dart.io
import 'dart:io';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid? await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyDEMdpxJs6updjrSov2jHfsl9fSntA1Zcs',
        appId: "1:857295007734:android:4ef7ba85b53ca745f861d7",
        messagingSenderId: "857295007734",
        projectId: "flutter-first-app-ea42f"
    )
  ):
  await Firebase.initializeApp(
  );
  runApp(const MyApp());
}
