import 'package:rick_and_morty_app/core/utils/index.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  @override
  Widget build(BuildContext context) {
    final brandColor = Theme.of(context).colorScheme.primary;

    Widget scaffold = Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        useLegacyColorScheme: false,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: brandColor),
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, isActive: false),
            activeIcon: _buildIcon(Icons.home, isActive: true),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.favorite, isActive: false),
            activeIcon: _buildIcon(Icons.favorite, isActive: true),
            label: 'Favorite',
          ),
        ],
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
    return scaffold;
  }

  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  Widget _buildIcon(IconData icon, {required bool isActive}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Icon(
        icon,
        color: isActive ? Theme.of(context).colorScheme.primary : Colors.grey,
      ),
    );
  }
}
