import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), centerTitle: true),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [

                      Container(margin: EdgeInsets.only(left: 10, right: 10, top: 8), height: size.height/4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),


                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.network("https://imgs.search.brave.com/l-Q7hq7FjdKrkfnyMjBvH8Rj8WLuOb3iTpOst3DHYKU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tdmVj/dG9yL2JlYXV0aWZ1/bC1mbG9yYWwtYmFu/bmVyLXRlbXBsYXRl/LXNha3VyYS1pbGx1/c3RyYXRpb24td2l0/aC1pbnNwaXJhdGlv/bmFsLXF1b3RlXzUz/ODc2LTExOTMwNy5q/cGc_Z2E9R0ExLjEu/OTU0NzM3MzUwLjE3/OTExNjIxNDEmc2Vt/dD1haXNfaHlicmlk/Jnc9NzQwJnE9ODA",
                            fit: BoxFit.cover,
                          ),
                        ),),

                      Positioned(bottom: 40, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("L5 pcps news, There is going to be a holiday in dashain.. are you happy pcpsians...",
                                overflow: TextOverflow.ellipsis,maxLines: 2,
                                style: TextStyle(color: Colors.white),)
                          )
                      ),
                      Positioned(bottom: 20, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("Sept 30, 2026",
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
                  Stack(
                    children: [

                      Container(margin: EdgeInsets.only(left: 10, right: 10, top: 8), height: size.height/4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),


                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.network("https://imgs.search.brave.com/l-Q7hq7FjdKrkfnyMjBvH8Rj8WLuOb3iTpOst3DHYKU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tdmVj/dG9yL2JlYXV0aWZ1/bC1mbG9yYWwtYmFu/bmVyLXRlbXBsYXRl/LXNha3VyYS1pbGx1/c3RyYXRpb24td2l0/aC1pbnNwaXJhdGlv/bmFsLXF1b3RlXzUz/ODc2LTExOTMwNy5q/cGc_Z2E9R0ExLjEu/OTU0NzM3MzUwLjE3/OTExNjIxNDEmc2Vt/dD1haXNfaHlicmlk/Jnc9NzQwJnE9ODA",
                            fit: BoxFit.cover,
                          ),
                        ),),

                      Positioned(bottom: 40, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("L5 pcps news, There is going to be a holiday in dashain.. are you happy pcpsians...",
                                overflow: TextOverflow.ellipsis,maxLines: 2,
                                style: TextStyle(color: Colors.white),)
                          )
                      ),
                      Positioned(bottom: 20, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("Sept 30, 2026",
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
                  Stack(
                    children: [

                      Container(margin: EdgeInsets.only(left: 10, right: 10, top: 8), height: size.height/4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),


                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.network("https://imgs.search.brave.com/l-Q7hq7FjdKrkfnyMjBvH8Rj8WLuOb3iTpOst3DHYKU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tdmVj/dG9yL2JlYXV0aWZ1/bC1mbG9yYWwtYmFu/bmVyLXRlbXBsYXRl/LXNha3VyYS1pbGx1/c3RyYXRpb24td2l0/aC1pbnNwaXJhdGlv/bmFsLXF1b3RlXzUz/ODc2LTExOTMwNy5q/cGc_Z2E9R0ExLjEu/OTU0NzM3MzUwLjE3/OTExNjIxNDEmc2Vt/dD1haXNfaHlicmlk/Jnc9NzQwJnE9ODA",
                            fit: BoxFit.cover,
                          ),
                        ),),

                      Positioned(bottom: 40, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("L5 pcps news, There is going to be a holiday in dashain.. are you happy pcpsians...",
                                overflow: TextOverflow.ellipsis,maxLines: 2,
                                style: TextStyle(color: Colors.white),)
                          )
                      ),
                      Positioned(bottom: 20, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("Sept 30, 2026",
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
                  Stack(
                    children: [

                      Container(margin: EdgeInsets.only(left: 10, right: 10, top: 8), height: size.height/4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),


                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.network("https://imgs.search.brave.com/l-Q7hq7FjdKrkfnyMjBvH8Rj8WLuOb3iTpOst3DHYKU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tdmVj/dG9yL2JlYXV0aWZ1/bC1mbG9yYWwtYmFu/bmVyLXRlbXBsYXRl/LXNha3VyYS1pbGx1/c3RyYXRpb24td2l0/aC1pbnNwaXJhdGlv/bmFsLXF1b3RlXzUz/ODc2LTExOTMwNy5q/cGc_Z2E9R0ExLjEu/OTU0NzM3MzUwLjE3/OTExNjIxNDEmc2Vt/dD1haXNfaHlicmlk/Jnc9NzQwJnE9ODA",
                            fit: BoxFit.cover,
                          ),
                        ),),

                      Positioned(bottom: 40, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("L5 pcps news, There is going to be a holiday in dashain.. are you happy pcpsians...",
                                overflow: TextOverflow.ellipsis,maxLines: 2,
                                style: TextStyle(color: Colors.white),)
                          )
                      ),
                      Positioned(bottom: 20, left: 30,
                          child: Container(width: size.width/2,
                              child: Text("Sept 30, 2026",
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

                ],
              ),
            )
            ],
        ),
      ),
    );
  }
}
