import 'package:ecommerce_app/core/helper/route_generate_helper.dart';
import 'package:ecommerce_app/core/services/shared_prefrences.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{  
  WidgetsFlutterBinding.ensureInitialized();
  await Pref.init();

  runApp(const FreshMarket());
}

class FreshMarket extends StatelessWidget {
  const FreshMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('ar',),
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
