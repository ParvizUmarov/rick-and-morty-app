import 'dart:developer';
import '../../../core/utils/index.dart';

class PaginatedListView extends StatefulWidget {
  const PaginatedListView({super.key});

  @override
  State<PaginatedListView> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  final _scrollController = ScrollController();
  var page = 1;
  var limit = 20;
  var groupResult = <Character>{};
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadGroups(limit, page);
    _scrollController.addListener(() {
      if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        _loadGroups(limit, page);
      }
    });
  }

  _loadGroups(int limit, int offset) async {
    BlocProvider.of<CharacterCubit>(context).getCharacters(page++);
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
      child: BlocConsumer<CharacterCubit, CharacterState>(
        listener: (context, state) {
          if (state is CharacterProgress) {
            isLoading = true;
          } else if (state is CharacterSuccess) {
            setState(() {
              groupResult.addAll(state.characters);
              isLoading = false;
            });
          }
        },
        builder: (context, state) {
          if(groupResult.isEmpty){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircularProgressIndicator(),
                ),
              ],
            );
          }

          return ListView.separated(
            reverse: false,
            physics: BouncingScrollPhysics(),
            controller: _scrollController,
            itemCount: groupResult.length,
            itemBuilder: (context, index) {
              log("group lenght: ${groupResult.length}");
              log("index: $index");
              final model = groupResult.elementAt(index);
              return CharacterContainer(data: model);
            },
            separatorBuilder: (context, index) {
              log("loading... $isLoading");
              if (index > groupResult.length - 2) {
                return Center(child: CircularProgressIndicator());
              }

              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
