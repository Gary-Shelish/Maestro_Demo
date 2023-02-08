import 'package:flutter/material.dart';
import 'item.dart';

class WhiteKeys extends StatefulWidget {
  const WhiteKeys({Key? key}) : super(key: key);

  @override
  _WhiteKeysState createState() => _WhiteKeysState();
}

class _WhiteKeysState extends State<WhiteKeys> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('White Key/Basic Key Practice'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // GridView tab content Widget
            GridView.count(
              // Items in row
              crossAxisCount: 2,
              // Vertical spacing between rows
              mainAxisSpacing: 5.0,
              // Horizontal spacing between columns
              crossAxisSpacing: 5.0,
              // Padding of GridView
              padding: const EdgeInsets.all(5.0),
              // The ratio between the width and height of items
              childAspectRatio: 0.75,
              // List of items widgets
              children: items
                  .map<Widget>((Item item) => _ItemGridCellWidget(item))
                  .toList(),
            ),
            // ListView tab content Widget
            ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int position) =>
                    _ItemListCellWidget(items[position]))
          ],
        ),
      ),
    );
  }
}

class _ItemGridCellWidget extends StatelessWidget {
  final Item _item;

  _ItemGridCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => _ItemFullScreenWidget(_item),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: GridTileBar(
          title: Text(_item.name),
          subtitle: Text(_item.description),
          backgroundColor: Colors.black38,
        ),
        child: GestureDetector(
          onTap: () => _selectItem(context),
          child: Hero(
            key: Key(_item.imageUrl),
            tag: _item.name,
            child: Image.network(
              _item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

class _ItemListCellWidget extends StatelessWidget {
  final Item _item;

  _ItemListCellWidget(this._item);

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => _ItemFullScreenWidget(_item),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _selectItem(context),
//      isThreeLine: true,
      title: Text(
        _item.name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      isThreeLine: true,
      subtitle: Text(
        _item.description,
        maxLines: 3,
        style: TextStyle(),
      ),
      leading: Hero(
        key: Key(_item.imageUrl),
        tag: _item.name,
        child: Image.network(
          _item.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _ItemFullScreenWidget extends StatelessWidget {
  final Item _item;

  _ItemFullScreenWidget(this._item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_item.name),
      ),
      body: SizedBox.expand(
        child: Hero(
          tag: _item.name,
          child: Image.asset(
            _item.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

List<Item> items = [
  Item(
    "https://3.files.edl.io/1990/19/10/21/160945-c17719dd-1c2a-45b1-be28-79f225bf878a.jpg",
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
