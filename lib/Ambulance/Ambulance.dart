import 'package:api_fetch/CommonWidget/size_utils.dart';
import 'package:api_fetch/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Ambulance extends StatefulWidget {
  const Ambulance({super.key});

  @override
  State<Ambulance> createState() => _AmbulanceState();
}

class _AmbulanceState extends State<Ambulance> {
  List<String> multitype = [
    'Deposit',
    'Withdraw',
  ];
  int currentIndex = 0;
  bool isClicked = false;
  void fav() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  String selectedValue = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1D9F5),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20.v, horizontal: 20.v),
            child: Column(children: [
              SizedBox(height: 11.v),
              _buildTabview(context),
              SizedBox(height: 15.v),
              const Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text('Details',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xFF000000),
                      ))),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Pickup :        ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: const Color(0xFF000000))),
                          TextSpan(
                              text: "Jodhpur central, Rajasthan",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF021737))),
                        ]),
                        textAlign: TextAlign.left,
                      ))),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Drop off :     ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xFF000000))),
                        TextSpan(
                            text: "Ambika Multispecialty Hospital ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(2, 23, 55, 1))),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Amount :     ",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xFF000000))),
                            TextSpan(
                                text: "450 ",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xFF021737))),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 50.v,
                      ),
                      Text(
                        'Details',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      SizedBox(width: 10.v),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(248, 61, 91, 1)),
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6.h),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              offset: Offset(0, 0),
                              blurRadius: 2.5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: [
                              'Cash',
                              'Online',
                              'UPI',
                              'Other'
                              // Add more items as needed
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              _buildDW(context),
              SizedBox(
                height: 15.h,
              ),
              _buildStatus(context),
              const Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  height: 45,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xFFF83D5B),
                    borderRadius: BorderRadius.circular(6.h),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 0),
                        blurRadius: 2.5,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text("Call",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.white)),
                  ),
                ),
                SizedBox(width: 15.v),
                Container(
                    height: 45,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFF83D5B),
                      borderRadius: BorderRadius.circular(6.h),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(0, 0),
                          blurRadius: 2.5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text("Chat",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white)),
                    ))
              ])
            ])));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Color(0xFFF5D3FA),
        leadingWidth: 49.h,
        leading: IconButton(
            onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHome()));
                },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
            )),
        centerTitle: true,
        title: Text("Ambulance",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: const Color(0xFF000000))),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              height: 1,
              color: Colors.grey,
            )));
  }

  Widget _buildTabview(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 15.v,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffbebebe)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(6.h),
          boxShadow: const [
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(0, 0),
              blurRadius: 2.5,
            ),
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 66.h,
                width: 69.v,
                decoration: const BoxDecoration(
                  color: Color(0xFFF1D9F5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/Ellipse 795 (2).png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 3.v,
                  bottom: 16.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Avinash Singh",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF000000))),
                    SizedBox(height: 6.v),
                    Text("LIC No. 124568",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF000000))),
                    SizedBox(height: 6.v),
                    Text("RJ-19 FE 7651  BASIC",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF000000))),
                  ],
                ),
              ),
              const Spacer(),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Icon(Icons.star, size: 18, color: Color(0xFFF83D5B)),
                Text("4.3",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFF000000))),
              ])
            ]));
  }

  Widget _buildDW(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      // width: 504,
      height: 55.h,
      child: ListView.builder(
          itemCount: multitype.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.v),
                    decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Color(0xFFF83D5B)
                            : Colors.white,
                        border: Border.all(color: Color(0xFFF83D5B)),
                        borderRadius: BorderRadius.circular(12.v)),
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 45.v,
                        ),
                        child: Center(
                            child: Text(
                          multitype[index],
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: currentIndex == index
                                  ? Colors.white
                                  : Color(0xFFF83D5B)),
                        )))));
          }),
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Status :",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF000000))),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 3.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFF83D5B)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(6.h),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 0),
                        blurRadius: 2.5,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.done,
                      size: 20,
                      color: Color.fromRGBO(248, 61, 91, 1),
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Text("Verified",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF000000))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromRGBO(248, 61, 91, 1)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(6.h),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 0),
                        blurRadius: 2.5,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Text("Paid",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF000000))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFF83D5B)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(6.h),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 0),
                        blurRadius: 2.5,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Text("Finished",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF000000))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
