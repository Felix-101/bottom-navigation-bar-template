import 'package:bottom_navigation/exports.dart';

class CurvedBottomNavigationScreen extends StatefulWidget {
  const CurvedBottomNavigationScreen({super.key});

  @override
  State<CurvedBottomNavigationScreen> createState() =>
      CurvedBottomNavigationScreenState();
}

class CurvedBottomNavigationScreenState
    extends State<CurvedBottomNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    /*  HomeScreen(), 
    RechargeScreen(), 
    WalletScreen(), 
    HistoryScreen(),  */
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white, // Background behind the navbar
      color: Colors.red, // Navbar color
      buttonBackgroundColor: Colors.redAccent, // Selected button color
      height: 60,
      animationDuration: const Duration(milliseconds: 300),
      index: _selectedIndex,
      items: const [
        Icon(Icons.home, color: Colors.white, size: 30),
        Icon(Icons.phone_android, color: Colors.white, size: 30),
        Icon(Icons.account_balance_wallet, color: Colors.white, size: 30),
        Icon(Icons.history, color: Colors.white, size: 30),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
