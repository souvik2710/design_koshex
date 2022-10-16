import 'package:design_koshex/design/shaows.dart';
import 'package:flutter/material.dart';

class HoldingsWidget extends StatelessWidget {
  const HoldingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4FF),
      appBar: AppBar(
        backgroundColor:  Color(0xff330099),
        centerTitle: true,
        title: Text('Holdings'),
        elevation: 0,
        titleSpacing: 7,
        actions: [
         Padding(

             padding: EdgeInsets.only(right: 16),
             child: Icon( Icons.shopping_cart)),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffF0F4FF),
              height: 279 + 32,
              child: Stack(
                children: [
                  Container(
                    height: 279,
                    padding: EdgeInsets.only(left: 16,top: 36,bottom: 16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff330099),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Holdings Current Value',style: TextStyle(color: Colors.white.withOpacity(0.6),
                            fontSize: 14),),
                        RichText(text:
                         TextSpan(
                          text: '',
                          style: TextStyle(color: Color(0xff4CAF50)),
                          children: [
                            TextSpan(text: '₹ '),
                            TextSpan(text: '2.88 Lac     ',style: TextStyle(color: Colors.white,fontSize: 20)),
                            WidgetSpan(child: Icon(Icons.arrow_drop_up,color: Color(0xff4CAF50),)),
                            TextSpan(text: '₹ 45,535.78 (+18.77%)',style: TextStyle(fontSize: 12))
                          ]
                        )),
                        SizedBox(height: 16,),
                        Text('Invested Amount',style: TextStyle(color: Colors.white.withOpacity(0.6),
                            fontSize: 14),),
                        Text('₹ 2.42 Lac',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 64,
                      width: MediaQuery.of(context).size.width - 16*2,
                      decoration: BoxDecoration(
                        color: Color(0xff3366FF),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        ),
                        boxShadow: glowShadowBlue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Ask Koshex Bot',style: TextStyle(color: Color(0xffF0F4FF),fontSize: 12),),
                              Text('Show me the updates for 1 day',style: TextStyle(fontSize: 14,color: Colors.white),)

                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: 88,
              padding: EdgeInsets.only(left: 16),
              margin: EdgeInsets.symmetric(vertical: 16),
              color: Color(0xffF0F4FF),
              alignment: Alignment.topLeft,
              child: ListView.separated(
                 itemCount: 9,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {


                return Container(
                  padding: EdgeInsets.only(top: 16,left: 12,bottom: 16),
                    height: 72,
                    width: 206,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('OVERALL P&L',style: TextStyle(fontSize: 10,color: Color(0xff757575),fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            Text('₹45,535.78',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('  +(18.77%)',style: TextStyle(fontSize: 12, color: Color(0xff4CAF50)),)
                          ],
                        )
                      ],
                    )
                );
              }, separatorBuilder: (BuildContext context, int index) {
                   return  SizedBox(width: 16,);
              },),

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffF0F4FF),
              padding: EdgeInsets.only(left: 16),
              child: Text('YOUR HOLDINGS',style: TextStyle(color: Color(0xff3366FF),fontWeight: FontWeight.w500),),
            ),
            Container(
              color: Color(0xffF0F4FF),

              // height: 734,
              // padding: EdgeInsets.all(16),
              alignment: Alignment.topLeft,

              padding: EdgeInsets.all(16),
              child: ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                primary: false,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                      height: 128,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color(0xffF0F4FF),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        ),
                          boxShadow: listBoxShadowCommon
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Color(0xff0AA1DD),
                                  borderRadius: BorderRadius.all(Radius.circular(8),
                                  ),
                                ),
                                child: Icon(Icons.star,color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mutual Funds',style: TextStyle(color: Color(0xff757575),
                                      fontSize: 10,fontWeight: FontWeight.w500),),
                                  RichText(text:
                                  TextSpan(
                                      text: '',
                                      style: TextStyle(color: Color(0xff4CAF50)),
                                      children: [
                                        TextSpan(text: '₹ ',style: TextStyle(color: Color(0xff757575),fontSize: 16)),
                                        TextSpan(text: '1.69 Lac     ',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500)),
                                        WidgetSpan(child: Icon(Icons.arrow_drop_up,color: Color(0xff4CAF50),)),
                                        TextSpan(text: '₹ 45,535.78 (+18.77%)',style: TextStyle(fontSize: 12))
                                      ]
                                  )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Invested Amount',style: TextStyle(color: Color(0xff757575),
                                      fontSize: 10),),
                                  RichText(text:
                                  TextSpan(
                                      text: '',
                                      style: TextStyle(color: Color(0xff4CAF50)),
                                      children: [
                                        TextSpan(text: '₹ ',style: TextStyle(color: Color(0xff757575),fontSize: 14),),
                                        TextSpan(text: '1.5 Lac     ',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500)),
                                      ]
                                  )),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Color(0xffF0F4FF),
                                  borderRadius: BorderRadius.all(Radius.circular(8),
                                  ),
                                  boxShadow:listBoxShadowCommon,

                                ),
                                child: Icon(Icons.add,color: Colors.black,),
                              ),
                            ],
                          ),

                        ],
                      )
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                return  SizedBox(height: 16,);
              },),

            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 64,
              width: MediaQuery.of(context).size.width - 16*2,
              decoration: BoxDecoration(
                color: Color(0xffD6E0FF),
                borderRadius: BorderRadius.all(Radius.circular(20),
                ),
                boxShadow: listBoxShadowCommon
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                      Text('VIEW ALL TRANSACTIONS',style: TextStyle(color: Color(0xff3366FF),fontSize: 14),),
                  Icon(Icons.arrow_forward_ios,color: Color(0xff3366FF),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}





