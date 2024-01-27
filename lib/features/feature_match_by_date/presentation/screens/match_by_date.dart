import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:sportapp/core/utils/date.dart';
import 'package:sportapp/features/feature_match_by_date/presentation/widgets/match_by_date_list.dart';
import '../bloc/match_by_date_bloc.dart';


class MatchByDate extends StatefulWidget {
  const MatchByDate({super.key});

  @override
  State<MatchByDate> createState() => _MatchByDateState();
}

class _MatchByDateState extends State<MatchByDate> {
  List<String> chips = ["Yesterday","Today","Tomorrow"];
  var choice = 0;
  bool isVisible = false;
  String todayDate = DaysDateTime().todayDate();
  TextEditingController dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateYesterday());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900]?.withOpacity(0.15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Match By Date",style: GoogleFonts.oswald(fontSize: 25,color: Colors.blue[900]?.withOpacity(0.8)),),
        centerTitle: true,
        scrolledUnderElevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,color: Colors.white54,), onPressed: () { Navigator.pop(context); },),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible:!isVisible ,
                    child: DelayedWidget(
                        animationDuration: const Duration(seconds:1),
                        delayDuration: const Duration(milliseconds: 100),
                        animation: DelayedAnimations.SLIDE_FROM_TOP,
                        child: Text("Pick A Day",style: GoogleFonts.oswald(fontSize: 25),)),

                ),
                Visibility(
                  visible:isVisible ,
                  child: DelayedWidget(
                      animationDuration: const Duration(seconds: 1),
                      delayDuration: const Duration(milliseconds: 100),
                      animation: DelayedAnimations.SLIDE_FROM_RIGHT,
                      child: SizedBox(
                        width: 270,
                        height: 50,
                        child: TextField(
                          controller: dateController,
                          onSubmitted: (value) {
                            setState(() {
                              todayDate = dateController.value.text;
                            });
                            if(dateController.value.text.isNotEmpty){
                              BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateSearch(todayDate));
                              dateController.clear();
                            }
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.blue[900]!.withOpacity(0.6)
                              )
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.blue[900]!.withOpacity(0.6)
                                )
                            ),
                             labelText: todayDate,
                            labelStyle: GoogleFonts.oswald(
                              fontSize: 16,
                              color: Colors.white54
                            ),
                            prefixIcon: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30)
                                            )
                                          ),
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 15,),
                                              Text("Pick A Day!",style: GoogleFonts.oswald(fontSize: 20),),
                                              Container(color: Colors.white,width: 60,height: 2,),
                                              const SizedBox(height: 10,),
                                              Expanded(
                                                child: ScrollDatePicker(
                                                  options: const DatePickerOptions(
                                                    backgroundColor: Colors.black26
                                                  ),
                                                  selectedDate: _selectedDate,
                                                  locale: const Locale('en'),
                                                  onDateTimeChanged: (DateTime value) {
                                                    setState(() {
                                                      _selectedDate = value;
                                                      String timestamp = _selectedDate.toString();
                                                      DateTime dateTime = DateTime.parse(timestamp);
                                                      String datePart = '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
                                                      todayDate = datePart.toString();
                                                    });
                                                  },
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 45),
                                                child: SizedBox(
                                                  height: 45,
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white24)),
                                                      onPressed: () {
                                                        BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateSearch(todayDate));
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text("Search",style: GoogleFonts.oswald(color: Colors.white),)
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 10,)
                                            ],
                                          ),
                                        );
                                      },
                                  );
                                },
                                child: const Icon(Icons.date_range)
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  todayDate = dateController.value.text;
                                });
                                BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateSearch(dateController.text));
                                dateController.clear();
                                FocusScope.of(context).unfocus();
                              },
                                child: const Icon(Icons.search_rounded)
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                  IconButton(
                    onPressed: (){
                      setState(() {
                          isVisible = !isVisible;
                        }
                      );
                    }, icon:!isVisible ? const FaIcon(FontAwesomeIcons.magnifyingGlass,size: 17,color: Colors.white30,) :const Icon(Icons.highlight_remove,size: 20,color: Colors.white30,) ,)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Visibility(
              visible: !isVisible,
              child: DelayedWidget(
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                delayDuration: const Duration(milliseconds: 100),
                animationDuration:const Duration(seconds: 1) ,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                          spacing: 9,
                          children:
                          List.generate(
                              chips.length, (index) {
                            return ChoiceChip(
                              label: Text(chips[index],style: GoogleFonts.oswald(fontSize: 14),),

                              selected:choice == index,
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),

                              selectedColor: Colors.blue[900]?.withOpacity(0.7),
                              backgroundColor: Colors.blue[900]?.withOpacity(0.1),
                              elevation: 7,
                              onSelected: (value){
                                setState(() {
                                  choice = value ? index : choice;
                                });
                                if(index == 0){
                                  BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateYesterday());
                                }
                                if(index == 1){
                                  BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateToday());
                                }
                                if(index == 2){
                                  BlocProvider.of<MatchByDateBloc>(context).add(MatchByDateTomorrow());
                                }
                              },
                            );

                          }
                          )

                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Visibility(
              visible: isVisible,
                child: DelayedWidget(
                  animationDuration: const Duration(seconds: 1),
                  delayDuration: const Duration(milliseconds: 100),
                  animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                  child: Text(
                    "Matches Taking Place In ${todayDate.toString()}",
                    style: GoogleFonts.oswald(fontSize: 18,color: Colors.white54),
                  ),
                )
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                  color: Colors.blue[900]?.withOpacity(0.15),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
                )
              ),
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: MatchByDayList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
