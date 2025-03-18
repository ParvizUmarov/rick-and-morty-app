import 'dart:developer';

import '../../../core/utils/index.dart';

class PaginatedListView extends StatefulWidget {
  final List<Character> characters;
  const PaginatedListView({super.key, required this.characters});

  @override
  State<PaginatedListView> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  final ScrollController _scrollController = ScrollController();
  final int _pageSize = 20;
  int _currentPage = 1;
  bool _isLoading = false;
  bool _hasMore = true;
  List<Character> _characters = [];

  @override
  void initState() {
    super.initState();
    _fetchCharacters(_currentPage);
    _scrollController.addListener(_scrollListener);
  }

  Future<void> _fetchCharacters(int page) async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // Замените этот вызов на ваш метод получения данных
      final newCharacters = await fetchCharacters(page, _pageSize);
      if (newCharacters.isEmpty) {
        setState(() {
          _hasMore = false;
        });
      } else {
        setState(() {
          _characters.addAll(newCharacters);
          _currentPage++;
        });
      }
    } catch (error) {
      // Обработка ошибок
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<List<Character>> fetchCharacters(int page, int pageSize) async {
    // Ваш код для получения данных с сервера
    // Например, используя API для получения персонажей
    // Здесь должна быть логика для загрузки данных с учетом page и pageSize
    // Пример:
    // final response = await http.get('https://api.example.com/characters?page=$page&size=$pageSize');
    // return Character.fromJsonList(jsonDecode(response.body));
    return []; // Замените это на реальный вызов API
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (_hasMore && !_isLoading) {
        _fetchCharacters(_currentPage);
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.separated(
        controller: _scrollController,
        itemCount: widget.characters.length,
        itemBuilder: (context, index) {
          final model = widget.characters[index];
          return CharacterContainer(data: model);
        },
        separatorBuilder: (context, index) {
          return 10.h;
        },
      ),
    );
  }
}
