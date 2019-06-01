import 'package:faceflutter/post/firebaseProvider.dart';
import 'package:faceflutter/post/postModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';

class PostLink extends StatefulWidget {
  @override
  State<PostLink> createState() => _PostLinkState();
}

class _PostLinkState extends State<PostLink> {
  TextEditingController _titleControler = TextEditingController();
  TextEditingController _tagControler = TextEditingController();
  TextEditingController _linkControler = TextEditingController();
  TextEditingController _imageUrlControler = TextEditingController();
  FocusNode _titleFocusNode = FocusNode();
  FocusNode _tagFocusNode = FocusNode();
  FocusNode _linkFocusNode = FocusNode();
  FocusNode _imageFocusNode = FocusNode();

  Widget image;

  void _onPressed() {
    final model = PostModel(
      id: Uuid().toString(),
      type: PostType.link,
      title: _titleControler.text,
      tags: _tagControler.text.split(','),
      link: _linkControler.text,
      imageUrl: _imageUrlControler.text,
    );

    FirebaseProvider().savePost(model);
  }

  void _onImageChange(String text) {
    setState(() {
      image = Image.network(
        text,
      );
    });
  }

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
          child: SingleChildScrollView(
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
                    keyboardType: TextInputType.text,
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
                    keyboardType: TextInputType.text,
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
                    keyboardType: TextInputType.url,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Imagem',
                      hintText: "Digite a URL da imagem",
                    ),
                    controller: _linkControler,
                    focusNode: _imageFocusNode,
                    keyboardType: TextInputType.url,
                    onSubmitted: _onImageChange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: image,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Postar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: _onPressed,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
