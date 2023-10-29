import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sv_test/home/bloc/get_data_bloc.dart';

import 'data_model.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetDataBloc(
        ModelsApi(),
      )..add(
          GetModelsDataEvent(),
        ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/icons8-airplanes-60 1.jpg'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'sv-Test',
                        style: TextStyle(
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w400,
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Let’s make, \nit together',
                        style: TextStyle(
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w400,
                          fontSize: 35.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'images/light 1.gif',
                          width: 32,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  const SizedBox(
                    height: 160,
                    child: ModelsListView(),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  const Text(
                    'My Learning',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w400,
                      fontSize: 35.0,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(
                      color: Color(0xFFB8C0CB),
                      thickness: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('images/Rectangle 2.jpg'),
                          title: const Text(
                            'Model-B',
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Chapter 16',
                            style: TextStyle(
                              color: Color(0xFF5885BC),
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('images/Rectangle 2.jpg'),
                          title: const Text(
                            'Model-B',
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Chapter 11',
                            style: TextStyle(
                              color: Color(0xFF5885BC),
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('images/Rectangle 2.jpg'),
                          title: const Text(
                            'Model-B',
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Chapter 16',
                            style: TextStyle(
                              color: Color(0xFF5885BC),
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('images/Rectangle 2.jpg'),
                          title: const Text(
                            'Model-B',
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Chapter 11',
                            style: TextStyle(
                              color: Color(0xFF5885BC),
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('images/Rectangle 2.jpg'),
                          title: const Text(
                            'Model-B',
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Chapter 16',
                            style: TextStyle(
                              color: Color(0xFF5885BC),
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ModelsListView extends StatefulWidget {
  const ModelsListView({
    super.key,
  });

  @override
  State<ModelsListView> createState() => _ModelsListViewState();
}

class _ModelsListViewState extends State<ModelsListView> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ModelsApi().getModels(),
      builder: (BuildContext context, AsyncSnapshot<List<Model>> snapshot) {
        if (snapshot.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.separated(
            itemBuilder: (context, index) => Material(
              elevation: 20.0,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: InkWell(
                onTap: (){
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: Container(
                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: !isPressed ? Colors.white: const Color(0xFF5885BC),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 76,
                                  width: 89,
                                  child: Image.asset(
                                    'images/Rectangle 2.jpg',
                                  )),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                'Model-A',
                                style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progress',
                                style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                '50/100',
                                style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(
              width: 18,
            ), itemCount: snapshot.data!.length,
          );
        }
      },
    );
  }
}
