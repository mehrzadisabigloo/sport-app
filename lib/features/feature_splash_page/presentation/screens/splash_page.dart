import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportapp/features/feature_splash_page/presentation/widgets/builder_widget.dart';

import '../bloc/splash_page_bloc.dart';
import '../../../../core/widgets/home_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashPageBloc>(context).add(Check());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashPageBloc, SplashPageState>(
        listener: (context, state) {

          if(state is Offline){
            ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(
                   duration: const Duration(seconds: 20),
                   elevation: 10,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20)
                   ),
                     content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("check your connection"),
                            IconButton(
                              onPressed: (){
                                BlocProvider.of<SplashPageBloc>(context).add(Check());
                                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                     snackBar(const CircularProgressIndicator(), "Checking",2)
                                );
                              },
                              icon: Icon(Icons.refresh,color: Colors.amber[800],)
                    )
                  ],
                )
                )
            );

          }

          if(state is Online){
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
                snackBar(const Icon(Icons.done,color: Colors.green,), "connected",1)
            );
             Future.delayed(const Duration(seconds: 5),() {
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
               Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                   const HomePage()), (Route<dynamic> route) => false);
             }
              ,);
          }
        },
        builder: (context, state) {
          if(state is Online || state is Checking || state is Offline){
            return const BuilderWidget();

          }

          return Container();
        },

      )
    );
  }

  SnackBar snackBar(snackWidget,text,duration){
    return SnackBar(
      duration: Duration(seconds:duration ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        content: Row(
          children: [
            snackWidget,
            const SizedBox(width: 10,),
            Text(text)
          ],
        )
    );
  }

}
