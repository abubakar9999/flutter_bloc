import 'package:area_and_order/bloc/latter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LatterBloc latterbloc=LatterBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    latterbloc.add(LatterloadedEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Lettes"),),
      body: BlocConsumer<LatterBloc,LatterState>(
        bloc: latterbloc,
        listener: (context,state){},
        builder: (context,state){
          if(state is LoaddingStatae){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if( state is LoadedgStatae){
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(child: SizedBox(
                      height:MediaQuery.of(context).size.height/1.2 ,
                      child: ListView.builder(
                        itemCount: state.latter.length,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                             
                              latterbloc.add(SublatterEvent(key: state.latter[index],index: index));
                              
                            },
                            child: Chip(
                              label: Text(state.latter[index]),
                              backgroundColor: state.index==index?Colors.green:Colors.white,),
                          );
                        }
                        ),
                    )
                    ),
                    Expanded(child: Column(children: [

                      Container(
                        color: Color.fromARGB(255, 208, 218, 236),
                        height: 150,
                        child: Center(
                          child: ListView.builder(
                            itemCount:  state.sublatter!.length,
                            
                            itemBuilder: (context,index){
                              return Card(child: Center(
                                child: Text(state.sublatter![index],style:const TextStyle(
                                  fontSize:  18
                                ),),
                              ));
                            }
                            
                            ),
                        ),
                      )
                    ],)
                    )
                  ],
                ),
              ],
            );
          }
          else{
            return const Center(child: Text("Somethig Error or server down"),);
          }

          

        }
        
        , )
    );
  }
}