import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostLink extends StatefulWidget {
  @override
  State<PostLink> createState() => _PostLinkState();
}

class _PostLinkState extends State<PostLink> {
  TextEditingController _titleControler = TextEditingController();
  TextEditingController _tagControler = TextEditingController();
  TextEditingController _linkControler = TextEditingController();
  FocusNode _titleFocusNode = FocusNode();
  FocusNode _tagFocusNode = FocusNode();
  FocusNode _linkFocusNode = FocusNode();

  void _onPressed() => null;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Novo Link'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 25.0,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Titulo',
                    hintText: "Digite o titulo.",
                  ),
                  controller: _titleControler,
                  focusNode: _titleFocusNode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Tag',
                    hintText: "Digite suas tags separadas por espaço.",
                  ),
                  controller: _tagControler,
                  focusNode: _tagFocusNode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Link',
                    hintText: "Digite o link.",
                  ),
                  controller: _linkControler,
                  focusNode: _linkFocusNode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: RaisedButton(
                  child: Text('Postar'),
                  onPressed: _onPressed,
                ),
              )
            ],
          ),
        ),
      );
}
