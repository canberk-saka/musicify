import 'package:flutter/widgets.dart';
import 'package:musicify_widgets/src/interfaces/musicify_jsonable_interface.dart';

///{@template musicifyHorizontalListView}
///Musicify Horizontal ListView widget'ı
///{@endtemplate}
class MusicifyHorizontalListView<T extends MusicifyJsonableInterface<T>> extends StatelessWidget {
  ///Musicify Horizontal ListView widget'ı
  const MusicifyHorizontalListView({
    required this.itemBuilder,
    required this.items,
    super.key,
  });

  ///Item builder
  final Widget Function(T? item) itemBuilder;

  ///Items
  final List<T>? items;

  @override
  Widget build(BuildContext context) => ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items?.length ?? 0,
        itemBuilder: (context, index) {
          final item = items![index];
          return itemBuilder(item);
        },
      );
}
