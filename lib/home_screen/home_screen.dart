import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color(0xff121212),
      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee), label: "Money"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 12,
                backgroundImage:
                AssetImage("assets/images/profile_photo.jpg"),
              ),
              label: "You"),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15, right: 10),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                         color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText:
                              "Pay by name or phone number",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 8),
                    child: const CircleAvatar(
                      radius: 22,
                      backgroundImage:
                      AssetImage("assets/images/profile_photo.jpg"),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 5),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/home_page_logo.png",
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("Recharge = no extra fees",style: TextStyle(fontSize: 20),)),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("Enjoy zero platform fees on \n your next recharge",style: TextStyle(fontSize: 12),)),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Text("Recharge now",style: TextStyle(fontSize: 14,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_circle_right_sharp,color: Colors.blueAccent,),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: const [

                    ServiceButton(
                        icon: Icons.qr_code_scanner,
                        text: "Scan any\nQR code"),

                    ServiceButton(
                        icon: Icons.currency_rupee,
                        text: "Pay\nanyone"),

                    ServiceButton(
                        icon: Icons.account_balance,
                        text: "Bank\ntransfer"),

                    ServiceButton(
                        icon: Icons.phone_android,
                        text: "Mobile\nrecharge"),
                  ],
                ),

                const SizedBox(height: 25),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      chip(Icons.rocket_launch, "UPI Lite", "Activate"),

                      const SizedBox(width: 10),

                      chip(Icons.emoji_events, "Rewards", "₹62"),

                      const SizedBox(width: 10),

                      chip(Icons.account_balance_wallet,
                          "UPI ID", "manish.malhi001@gmail.com"),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: const Text(
                    "People",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 20),

                Wrap(
                  spacing: 22,
                  runSpacing: 22,
                  children: [

                    person("Pocket", Colors.grey),

                    person("Mangal", Colors.purple),

                    person("Satnam", Colors.teal),

                    person("Shiven", Colors.blue),

                    person("Sumit", Colors.deepPurple),

                    person("Gurnam", Colors.indigo),

                    person("Amriko", Colors.blueGrey),

                    person("More", Colors.black),
                  ],
                ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget chip(IconData icon, String text, String nextText,) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black12,

             child:Icon(icon, color: Colors.amber),
           ),
           const SizedBox(width: 8),
           Column( crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(text,textAlign: TextAlign.left, style: TextStyle(color: Colors.grey),),
               Text(nextText),
             ],
           )
        ],
      ),
    );
  }

  static Widget person(String name, Color color) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [

          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Text(
              name[0],
              style: const TextStyle(fontSize: 24),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ServiceButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const ServiceButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Color(0xFF0742A0),
            borderRadius:
            BorderRadius.circular(20),
          ),
          child: Icon(icon,
              color: Colors.white, size: 30),
        ),

        const SizedBox(height: 8),

        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
