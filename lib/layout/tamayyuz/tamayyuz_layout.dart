import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TamayyuzLayout extends StatefulWidget
{
  const TamayyuzLayout({Key? key}) : super(key: key);
  @override
  State<TamayyuzLayout> createState() => _TamayyuzLayoutState();
}
class _TamayyuzLayoutState extends State<TamayyuzLayout>
{
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        leading: IconButton(
          icon:const Icon(Icons.menu),
          onPressed: () {  },
        ),
        title: const Text(
            'حفاظ المتون',
          textAlign: TextAlign.right,
        ),
        actions: [
          IconButton(
            icon:const Icon(Icons.search),
            onPressed: () {  },
          ),
          IconButton(
            icon:const Icon(Icons.add_alert),
            onPressed: () {  },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *0.2-20,
                    decoration:const BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                  ),
                  Positioned(child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 75.0,
                         vertical: 20.0,
                    ),
                    child: Container(
                      child: const Text(
                        'الاحتفاظ بما في صدرك اولي من درس ما في كتابك',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                    ),
                  ))
                ],
              ),

              height: MediaQuery.of(context).size.height *0.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    horizontal: 20.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'مرحبا بك في حفظ المتون',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.yellow[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                        ),
                      ),
                      const Text(
                        ' لاتكثر علي نقسك من المتون فيصيبك التشتت وربما الانقطاع ',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 90.0,
                            height: 40,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const
                              [
                                Text(
                                  'خطه جديده',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.brown[400],
                            ),
                          ),
                          Spacer(),
                          Image(image: AssetImage('assets/images/books.png'),)
                        ],
                      )
                    ],
                  ),
                )
              ),

            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    physics:const BouncingScrollPhysics(),
                    itemBuilder: (context, index)
                    {
                      return buildList();

                    },
                    separatorBuilder: (context, index)
                    {
                      return const SizedBox(width: 2,);
                    } ,
                    itemCount: 5,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 0.3,
        fixedColor: Colors.brown,
        type: BottomNavigationBarType.fixed,
        items: const
        [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30.0,),
            label: 'الرئيسيه',
            backgroundColor: Colors.white60
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined,size: 30.0,),
            label: 'الورد اليومي',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.book_outlined,
                size: 30.0,
              ),
            label: 'قائمه المتون',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_outline_rounded,
                size: 30.0,
              ),
            label: 'المحفوظات',
          ),
        ],
        onTap: (index)
        {
          setState(()
          {
            currentIndex = index;
          });
        },
      ),
    );
  }
  Widget buildList()=>Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
        width: MediaQuery.of(context).size.width ,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const[
              Text(
                'العقيده الطحاويه',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              ),
              SizedBox(height: 15,),
              Text(
                'ورد اليوم:  8 اسطر',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        )
    ),

  );
}
