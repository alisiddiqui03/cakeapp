import 'package:cakeapp/screen/Cakery_page.dart';
import 'package:cakeapp/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'ALI BAKERS',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0.sp,
            color:  Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body:
      
       ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        children: [
          SizedBox(height: 8.0.h),
          Text('Menu',
              style: TextStyle(
                color: Colors.white,
                  fontFamily: 'Varela',
                  fontSize: 40.0.sp,
                  fontWeight: FontWeight.bold)),
                  
          SizedBox(height: 8.0.h),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 24),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Cake Box',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Cake Slice',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Chiffon',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                )
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 160.0.h,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                CakeryPage(),
                CakeryPage(),
                CakeryPage(),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.fastfood),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}