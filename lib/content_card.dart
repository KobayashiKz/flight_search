

import 'package:flutter/material.dart';

class ContentCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportContents) {
              return Column(
                children: <Widget>[
                  _buildTabBar(),
                  _buildContentContainer(viewportContents),
                ],
              );
            }
        ),
        length: 3,
      ),
    );
  }

  Widget _buildTabBar({bool showFirstOption}) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
            top: null,
          child: Container(
            height: 2.0,
            color: Color(0xFFEEEEEE),
          ),
        ),
        TabBar(
          tabs: <Widget>[
            Tab(text: "Flight"),
            Tab(text: "Train"),
            Tab(text: "Bus"),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
      ],
    );
  }

  Widget _buildContentContainer(BoxConstraints viewportConstraints) {
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight - 40.0,
            ),
          child: IntrinsicHeight(
            child: _buildMulticityTab(),
          ),
        ),
      ),
    );
  }

  Widget _buildMulticityTab() {
    return Column(
      children: <Widget>[
        Text("Inputs"),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
          child: FloatingActionButton(onPressed: (){},
            child: Icon(Icons.timeline, size: 36.0,
            ),
          ),
        )
      ],
    );
  }
}