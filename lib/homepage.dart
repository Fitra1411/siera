import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      appBar: PreferredSize(
  preferredSize: Size.fromHeight(250),
  child: Container(
    margin: EdgeInsets.all(10), 
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AppBar(
        backgroundColor: pink_004, 
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center, 
            children: [
             Expanded(
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Expanded(child: Image.asset('assets/images/sierrastore2.png',height: 120,width: 100,)),
                   SizedBox(width: 20,),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,right: 10),
                     child: Container(
                      
                      child: Row(
                        
                        children: [
                          //Pesan.......................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()//Pesan
                              ));
                            },
                            child: Image.asset('assets/images/Messaging.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                          //Keranjang...................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()//Keranjang
                              ));
                            },
                            child: Image.asset('assets/images/Add Basket.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                          //Search......................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => Homepage(),//Search
                              ));
                            },
                            child: Image.asset('assets/images/Search.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                        ],
                      ),
                     ),
                   )
                 ],
                 
               ),
             ),
              Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: pink_006,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()//Isi Saldo
                        ));
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/Banknotes.png',width: 50,height:50,),
                          Text("Saldo",
                            style: TextStyle(
                              color:Color( 0XFFF05A7E ),
                              fontFamily: 'PoppinsMedium',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),)
                        ], 
                      ),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      height: double.infinity,
                      width: 2,
                      color: Color(0XFFFF7C9C),
                      margin: EdgeInsets.all(9),),
                    SizedBox(width: 8,),
                    
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage() //Voucher
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/PNR Code.png',width: 50,height:50,),
                          Text("MyVoucher",
                            style: TextStyle(
                              color:Color( 0XFFF05A7E ),
                              fontFamily: 'PoppinsMedium',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),)
                        ],
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
),
body: SingleChildScrollView(
  child: Column(
    children: [
      //BANNER.......................

      //SeeAll.......................
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[ GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));//SeeAll
            },
            child: Text("See All...",
            style: TextStyle(color: pink_002,fontFamily: 'OutfitRegular',fontSize: 14,fontWeight: FontWeight.bold),),
          ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/homepage/wardah.png'),
            width: 60,height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),color: Colors.white,
            ),
          )
        ],
      ),

      //Recomendation...................
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10),
            child: Text("Recomendation...",
            style: TextStyle(color: pink_002,fontFamily: 'OutfitRegular',fontSize: 14,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    ],
  ),
),

bottomSheet: Container(
  height: 60,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
    color: pink_004,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Image.asset('assets/images/Home Page Used.png',width: 45,height: 45,),
      ),
      Expanded(child: SizedBox(width: 20,)),
      Image.asset('assets/images/Banknotes.png', color: pink_006,width:50,height: 50,),
      Expanded(child: SizedBox(width: 20,)),
      Image.asset('assets/images/Lip Gloss.png', color: pink_006,width: 40,height: 40,),
      Expanded(child: SizedBox(width: 20,)),
      Padding(
        padding: const EdgeInsets.only(right: 40),
        child: Image.asset('assets/images/More.png', color: pink_006,width: 45,height: 45,),
      ),
    ],
  ),
),

    );
  }
}