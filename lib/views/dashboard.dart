import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  horizontalitem(size, String title, url, date){
    return GestureDetector(

      child: Stack(
        children: [

          Container(margin: EdgeInsets.only(left: 10, right: 10, top: 8), height: size.height/4.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),


            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Image.network(url,
                fit: BoxFit.cover,
              ),
            ),),

          Positioned(bottom: 40, left: 30,
              child: Container(width: size.width/2,
                  child: Text(title,
                    overflow: TextOverflow.ellipsis,maxLines: 2,
                    style: TextStyle(color: Colors.white),)
              )
          ),
          Positioned(bottom: 20, left: 30,
              child: Container(width: size.width/2,
                  child: Text(date,
                    overflow: TextOverflow.ellipsis,maxLines: 1,
                    style: TextStyle(color: Colors.white),)
              )
          ),

          Positioned(bottom: 20, right: 30,
              child: Container(
                child: Icon(Icons.play_circle,color: Colors.white,size:30),

              )
          )
        ],
      ),
    );

  }

  verticalitem(size, String title, url, date, source) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height:150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius:  BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      fit: BoxFit.cover,
                      url

                  ),
                ),
              ),
              Container(
                  height: 150,
                  width: 150,
                  child: Center(
                    child: Icon(Icons.play_circle_fill_rounded,size: 50,
                      color: Colors.white,),
                  )
              )
            ],
          ) ,


          Column(

            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: size.width/2
                ,child: Text(title,
                maxLines: 2,overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: size.width/2.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      padding: EdgeInsets.only(left: 15,
                          right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),),
                      child: ClipRect(
                        child: Text(source, style: TextStyle(color: Colors.white),
                          maxLines: 2,overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                    Text(date, style: TextStyle(color: Colors.black),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), centerTitle: true),
      body: Container(
        child: Column(
          children: [
            //horizontal list data
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  horizontalitem(size, "Dashain Special", "https://imgs.search.brave.com/bNanrSc6PlwlsGKufZSwVbAJweYG8GPInJ7766PMmWs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi90aWth/LXRoYWxpLWRhc2hh/aW4taGluZHUtZmVz/dGl2YWwtY2VsZWJy/YXRpb24tZHVyZ2Et/cHVqYS1rYWxhc2gt/ZGl5YS12ZW1pbGxp/b24tcmljZS1qYW1h/cmEtdGlrYS10aGFs/aS1kYXNoYWluLWhp/bmR1LWZlc3RpdmFs/LTMyOTAyNDY2NC5q/cGc", "29 September"),
                  horizontalitem(size, "Dashain Enjoyment", "https://imgs.search.brave.com/JU4mTP6qcbm03P5Wv5oUHW1hYNUA7DlxVuesjXYrefk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc3F1YXJlc3Bh/Y2UtY2RuLmNvbS9j/b250ZW50L3YxLzU3/OTdiOWY3ZDE3NThl/MTY4MDZmM2Q0MS8x/NTQwODgwMDE4MDc5/LUk3RERRODZSV0tU/V0czVVI1SlhJL0NJ/X1NlYXNvbjRfRGFz/aGFpbl9QaG90b3Nf/Sm9uYXRoYW4rKDEy/MSkuanBn", "20 December"),
                  horizontalitem(size, "Tihar Special", "https://imgs.search.brave.com/oa-gt54jkkdahX44FDuoOADDNkB1EsNsbeZId0YJx2g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly92Lmdy/ZWF0dGliZXR0b3Vy/LmNvbS9waG90b3Mv/MjAyMS8wOS9rdWt1/ci10aWhhci0xMi0w/OTE3NC5qcGc", "6 September"),
                ],
              ),
            ),

            //vertical list data
            Container(
              height: size.height/1.65,
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    verticalitem(size, "First day of Dashain", "https://imgs.search.brave.com/xcC3NFeuil96JDP8tFjPGPmPkRhK3Wp4FfM2AuSNKB4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9naGF0/YXN0aGFwYW5hLWZp/cnN0LWRheS1kYXNo/YWluLWZlc3RpdmFs/LW5lcGFsLXdoZXJl/LWJhcmxleS1zZWVk/cy1wbGFudGVkLXNh/Y3JlZC1zb2lsLWdo/YXRhc3RoYXBhbmEt/Zmlyc3QtZGF5LTQw/NjUwNTc2OC5qcGc", "4 Sep", "Dashain.com"),
                    verticalitem(size, "Second day of Dashain", "https://imgs.search.brave.com/EOAzGSY3rh_Lbi6XLSuPqkiNq3ycKA66ra283-gfeaU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMjE3/ODc0OTM4NC9waG90/by9oYXBweS1kYXNo/YWluLXJpbmdpbmct/YmVsbC13b3JzaGlw/aW5nLXRvLWdvZGVz/cy1kdXJnYS1iZWZv/cmUtcHV0dGluZy10/aWthLW5lcGFscy1t/b3N0LmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz03dkhwT3JO/cExkcU1GVXJQVTha/UXotNFJnc2xWVjdK/Rm5WTFVuSDBVOGZz/PQ", "4 October", "Dashain.com"),
                    verticalitem(size, "Third day of Dashain", "https://imgs.search.brave.com/QFdUCF2ZqLeiFPm7SZL2nUHDRFHEgDLGMm6T7HJnwqM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi90aWth/LXRoYWxpLWRhc2hh/aW4taGluZHUtZmVz/dGl2YWwtY2VsZWJy/YXRpb24tZHVyZ2Et/cHVqYS1rYWxhc2gt/ZGl5YS12ZW1pbGxp/b24tcmljZS1qYW1h/cmEtdGlrYS10aGFs/aS1kYXNoYWluLWhp/bmR1LWZlc3RpdmFs/LTMyOTAyNDU5NC5q/cGc", "5 October", "Dashain.com"),
                    verticalitem(size, "Fourth day of Dashain", "https://imgs.search.brave.com/nct9QJyBCUy-J5asHOw2evsvlcggiPP6uItKJRKft_M/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi93b3Jz/aGlwLWdvZGRlc3Mt/ZHVyZ2EtZGFzaGFp/bi1mZXN0aXZhbC10/aWthLWJsZXNzLWRh/c2hhaW4tZmVzdGl2/YWwtdGlrYS1qYW1h/cmEtdGlrYWtvLXRo/YWxpLTE3MDAwMTI0/OC5qcGc", "6 October", "Dashain.com")

                  ],
                ),
              ),
            )

            ],
        ),
      ),
    );
  }
}
