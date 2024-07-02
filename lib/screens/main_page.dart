import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:logistics/screens/navigation_screens/account_page.dart';
import 'package:logistics/screens/navigation_screens/deliveries_page.dart';
import 'package:logistics/screens/navigation_screens/home_page.dart';
import 'package:logistics/screens/navigation_screens/payment_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  // List of pages to display
  List pages = [
    const HomePage(),
    const DeliveriesPage(),
    const PaymentPage(),
    const AccountPage()
  ];

  // Indexes for the pages
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Theme
              .of(context)
              .colorScheme
              .primary,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
            BottomNavigationBarItem(
                label: "Deliveries",
                icon: Icon(FluentSystemIcons.ic_fluent_archive_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_archive_filled)),
            BottomNavigationBarItem(
                label: "Payments",
                icon: Icon(FluentSystemIcons.ic_fluent_bank_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_bank_filled)),
            BottomNavigationBarItem(
                label: "Wishlist",
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled)),
          ],
        )
    );
  }
}
