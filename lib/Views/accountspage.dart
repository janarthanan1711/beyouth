import 'package:avatar_glow/avatar_glow.dart';
import 'package:beyouth/Resources/colorresource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

import '../Resources/config.dart';
import '../Resources/theme.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Mytheme.isDark == true ? const Color(0xFF2E4053) : const Color(0xFFEAEAEA),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const SizedBox(height: 10,),
                  AvatarGlow(
                      endRadius: 150,
                      duration: const Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: const Duration(milliseconds: 100),
                      glowColor: Mytheme.isDark == true ? const Color(0xFFCD7F32) : Colors.blue,
                      child: profileWidget()),
                  // InkWell(
                  //   onTap: (){},
                  //   child: const ProfilePicture(name: "Jana",
                  //       radius: 40,
                  //       fontsize: 25,
                  //     random: true,
                  //   ),
                  // ),
                  const SizedBox(height: 5,),
                  Text('UserName',style: TextStyle(color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white,fontSize: 20),),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 650,
                    child: Column(
                      children: [
                        listTileWidget(

                            heading:  Text('Orders',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white),),
                            icons: Container(
                              height: 40,
                              width:35,
                              color: ColorResource.iconBackgroundColor,
                              child: Center(
                                child: Icon(Icons.event_note_sharp),
                              ),
                            ),
                            onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  const AccountsPage()),
                          // );
                        }),
                        Divider(
                          color:Mytheme.isDark == false ? const Color(0xFF2E4053) : Colors.white,
                          thickness: 2,
                        ),
                        listTileWidget(heading:  Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white),),
                            icons: Container(
                              height: 40,
                              width:35,
                              color: ColorResource.iconBackgroundColor,
                              child: Center(
                                child: Icon(Icons.location_on_outlined),
                              ),
                            ),
                            onTap: (){
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) =>   const SettingPage()));
                        }),
                        Divider(
                          color:Mytheme.isDark == false ? const Color(0xFF2E4053) : Colors.white,
                          thickness: 2,
                        ),
                        listTileWidget(heading:  Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white),),
                            icons: Container(
                              height: 40,
                              width:35,
                              color: ColorResource.iconBackgroundColor,
                              child: Center(
                                child: Icon(Icons.account_circle_outlined),
                              ),
                            ),
                            onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  const WatchListPage()),
                          // );
                        }),
                        Divider(
                          color:Mytheme.isDark == false ? const Color(0xFF2E4053) : Colors.white,
                          thickness: 2,
                        ),
                        listTileWidget(heading:  Text('WishList',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white),),
                            icons: Container(
                              height: 40,
                              width:35,
                              color: ColorResource.iconBackgroundColor,
                              child: Center(
                                child: Icon(Icons.favorite_border_sharp),
                              ),
                            ),
                            onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  const DownloadsPage()),
                          // );
                        }),
                        Divider(
                          color:Mytheme.isDark == false ? const Color(0xFF2E4053) : Colors.white,
                          thickness: 2,
                        ),
                        listTileWidget(heading:  Text('Coupons',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white),),
                            icons: Container(
                              height: 40,
                              width:35,
                              color: ColorResource.iconBackgroundColor,
                              child: Center(
                                child: Icon(Icons.account_balance_wallet_sharp),
                              ),
                            ),
                            onTap: (){}),
                        Divider(
                          color:Mytheme.isDark == false ? const Color(0xFF2E4053) : Colors.white,
                          thickness: 2,
                        ),
                        listTileWidget(heading:  Text('Help Center',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Mytheme.isDark == false ? const Color(0xFFCD7F32) : Colors.white),),
                            icons: Container(
                              height: 40,
                              width:35,
                              color: ColorResource.iconBackgroundColor,
                              child: Center(
                                child: Icon(Icons.headphones),
                              ),
                            ),
                            onTap: (){
                          // Navigator.pop(context);
                          // ShowLogoutDialog();
                        }),
                      ],
                    ),
                  )

                ],
              ),
              // Positioned(
              //   left: 340,
              //   child: IconButton(onPressed: (){
              //     setState(() {
              //       currentTheme.switchTheme();
              //     });
              //   }, icon: const Icon(
              //       Icons.mode_night_rounded),
              //     color: Mytheme.isDark == true ? Colors.white : Colors.black,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

Widget listTileWidget({required heading,required onTap,required icons}){
  return ListTile(
    title: heading,
    onTap: onTap,
    textColor:Colors.white,
    leading: icons,
    trailing: Icon(Icons.arrow_circle_right,
      size: 30,
      color:  Mytheme.isDark == false ? ColorResource.iconBackgroundColor : Colors.white,),
  );
}

Widget profileWidget(){
  return
       const ProfilePicture(name: "Jana",
        radius: 80,
        fontsize: 25,
        random: true,
      );


}
