import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/features/feature_line_up/presentation/bloc/line_up_bloc.dart';

class LineUpPage extends StatefulWidget {
  const LineUpPage({super.key});

  @override
  State<LineUpPage> createState() => _LineUpPageState();
}

class _LineUpPageState extends State<LineUpPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LineUpBloc, LineUpState>(
      listener: (context, state) {
      },


      builder: (context, state) {
        if(state is Loading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if(state is Loaded){
          if(state.lineUpEntity.data?.lineups != null) {
            if(state.lineUpEntity.data!.lineups![0].players!.isNotEmpty){
            return ListView.builder(
              itemCount: state.lineUpEntity.data!.lineups![0].players!.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF031D3F),
                  elevation: 0,
                  shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                      )
                  ),
                  child: ListTile(
                    leading: SizedBox(width: 70,child: Row(
                      children: [
                        Text(index.toString(),style: GoogleFonts.oswald(fontSize: 15),),
                        const SizedBox(width: 10,),
                        const CircleAvatar(child: Icon(Icons.perm_identity),)
                      ],
                    )),
                    title: Text(state.lineUpEntity.data?.lineups![state.choices].players![index].playerlastname as String,style: GoogleFonts.oswald(fontSize: 15)),
                    subtitle: Text(state.lineUpEntity.data?.lineups![state.choices].players![index].playerpositionname as String,style: GoogleFonts.oswald(fontSize: 13)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("8.2",style: GoogleFonts.oswald(fontSize: 16),),
                        Text('Rating',style: GoogleFonts.oswald(fontSize: 13,color: Colors.white54),)
                      ],
                    ) ,
                  ),
                );
              },
            );
            }
          }
          else{
            return Center(
              child: Text("There Is No Available Information",style: GoogleFonts.oswald(fontSize: 22),),
            );
          }
        }
        return const Center();
      },
    );
  }
}
