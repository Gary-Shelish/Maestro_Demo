import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons_tab/asset_player_widget.dart';
import 'package:maestrohomescreen/levels/CNote_Test.dart';
import 'package:maestrohomescreen/levels/WhiteKeyTests.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'item.dart';

class WhiteKeys extends StatefulWidget {
  const WhiteKeys({Key? key}) : super(key: key);

  @override
  _WhiteKeysState createState() => _WhiteKeysState();
}

class _WhiteKeysState extends State<WhiteKeys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('White Key/Basic Key Practice'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int position) =>
                  _ItemListCellWidget(items[position])),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CNoteTest()));
              },
              child: const Text('Test')),
        ],
      ),
    );
  }
}

class _ItemListCellWidget extends StatelessWidget {
  final Item _item;

  const _ItemListCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const AssetPlayerWidget(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _selectItem(context),
//      isThreeLine: true,
      title: Text(
        _item.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      isThreeLine: true,
      subtitle: Text(
        _item.description,
        maxLines: 3,
        style: const TextStyle(),
      ),
      leading: Image.network(
        _item.imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}

List<Item> items = [
  Item(
    "https://www.europianosnaples.com/wp-content/uploads/2018/02/piano-key-names.jpeg",
    "White Keys",
    """The first three and the most essential keys to learn when it comes to the white keys.""",
  ),
  Item(
    "https://th.bing.com/th/id/R.87ab9cd6535abb9d2f1a3bf57c7c4567?rik=XIgDEaW18TLmig&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fdT6%2f7aq%2fdT67aqpT9.jpeg&ehk=dI03yjQsd9cB2eSVgX33JGQIpWy6EAlurDuByQ4iuSg%3d&risl=&pid=ImgRaw&r=0",
    "C Key",
    """Out of the three the C key is the lowest pitch and comes first on the keyboard.""",
  ),
  Item(
    "https://cdn.schoolofrock.com/img/news-article-hero/beginner-songs-for-piano-1637113460.jpg",
    "D key",
    """The D key is the middle ground out of the three keys and is the second key from the left.""",
  ),
  Item(
    "https://images.squarespace-cdn.com/content/v1/5762dcb820099e88525c2529/1469152515826-I6HEAIKF165RRVFXRB1N/music-teacher?format=1000w",
    "E key",
    """The E key has the highest pitch and a personal favorite of a lot of people, this key is the third.""",
  ),
  Item(
    'https://i0.wp.com/www.thepianoinstructor.com/wp-content/uploads/2017/09/Musical_Alphabet_F-B_Lrg.png?resize=202%2C201&ssl=1',
    "F key",
    """The F key is the fourth key from the left is the begining of the four keys F,G,A,and B and lowest tone.""",
  ),
  Item(
    'https://i0.wp.com/www.thepianoinstructor.com/wp-content/uploads/2017/09/Musical_Alphabet_F-B_Lrg.png?resize=202%2C201&ssl=1',
    "G key",
    """The G key is the fifth key from the left in the middle of the 4.""",
  ),
  Item(
      'https://i0.wp.com/www.thepianoinstructor.com/wp-content/uploads/2017/09/Musical_Alphabet_F-B_Lrg.png?resize=202%2C201&ssl=1',
      "A key",
      """The A key is the sixth key from the left is the second to last key of the four."""),
  Item(
      'https://i0.wp.com/www.thepianoinstructor.com/wp-content/uploads/2017/09/Musical_Alphabet_F-B_Lrg.png?resize=202%2C201&ssl=1',
      "F key",
      """The B key is the seventh key from the left and the last of the four keys."""),
];
