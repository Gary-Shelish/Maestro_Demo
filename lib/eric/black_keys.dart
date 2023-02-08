import 'package:flutter/material.dart';
import 'item.dart';

class BlackKeys extends StatefulWidget {
  const BlackKeys({Key? key}) : super(key: key);

  @override
  _BlackKeysState createState() => _BlackKeysState();
}

class _BlackKeysState extends State<BlackKeys> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Black Keys'),
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
          backgroundColor: Colors.blueGrey,
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
      subtitle: Text(
        _item.description,
        maxLines: 2,
        style: TextStyle(),
      ),
      leading: Hero(
        key: Key(_item.imageUrl),
        tag: _item.name,
        child: Image.network(
          _item.imageUrl,
          width: 150,
          height: 150,
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
          child: Image.network(
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
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "Intro to black keys",
    """In this lesson we will learn what the black keys how they are and what they are used for.""",
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "Black keys",
    """The black keys are also known as the sharp keys or the flat keys. These keys are the higher pitch version of their white keys""",
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "Black keys pt 2",
    """In total there is about 5 sharp keys including C, D, F,G and A. C being the lowest pitch and the A being the highest out of the 5 """,
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "C sharp",
    """This key is the first sharp key from the left and the pitch is the lowest side .""",
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "D sharp",
    """The next black key that we will talk about is D sharp also known as E flat.""",
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "F sharp",
    """This key is the fourth sharp key and the pitch closer to the right and also located after a gap .""",
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "G sharp",
    """This key is the fourth sharp key from the left and the pitch is on the higher side .""",
  ),
  Item(
    "http://www.piano-keyboard-guide.com/wp-content/uploads/2018/12/Piano-Keys-and-Notes-Piano-Keyboard-Diagram-1.jpg",
    "A sharp",
    """This key is the fifth sharp key from the left and the pitch is also on the higher side and dead middle of the bpard. .""",
  )
];
