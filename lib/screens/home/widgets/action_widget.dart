import '../../../core/utils/index.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return IconButton(
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
          icon:
              themeMode == ThemeMode.light
                  ? Icon(Icons.sunny)
                  : Icon(Icons.nightlight),
        );
      },
    );
  }
}
