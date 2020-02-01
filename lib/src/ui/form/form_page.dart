import 'package:Formpad/src/core/data/api/form.dart';
import 'package:Formpad/src/core/data/model/form.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/core/util/responsive_layout.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController genreController = TextEditingController();
  final TextEditingController howFindController = TextEditingController();
  final TextEditingController firstMeetupController = TextEditingController();
  final TextEditingController feedbackController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      final FormModel formModel = FormModel(
        nameController.text,
        genreController.text,
        howFindController.text,
        firstMeetupController.text,
        feedbackController.text,
      );

      final FormApi formApi = FormApi((String response) {
        if (response == FormApi.STATUS_SUCCESS) {
          _showSnackbar("Feedback Submitted");
        } else {
          _showSnackbar("Error Occurred!");
        }
      });

      _showSnackbar("Submitting Feedback");
      formApi.submitForm(formModel);
    }
  }

  void _showSnackbar(String message) {
    final snackBar = SnackBar(content: Text(message));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      appBar: DefaultAppBar(
        context: context,
        title: 'Preencher o Form',
        onClickBackButton: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: ColorTheme.white,
      body: SafeArea(
        child: _buidBody(),
      ),
    );
  }

  Widget _buidBody() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minHeight: constraints.maxHeight,
              maxHeight: double.infinity,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _buildForm(),
                          DefaultButton(
                            label: 'Submeter Feedback',
                            onPressed: _submitForm,
                          ),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: Space.dodger_blue),
                  ),
                  ResponsiveLayout(
                    largeChild: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: ColorTheme.green,
                        child: SizedBox(
                          height: 50.0,
                          child: SocialMedia(),
                        ),
                      ).paddingAll(Space.conifer),
                    ),
                    smallChild: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        color: ColorTheme.green,
                        padding: EdgeInsets.all(12.0),
                        child: SocialMedia(
                          size: MainAxisSize.max,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Nome';
                }
                return null;
              },
              decoration: InputDecoration(labelText: 'Seu Nome'),
            ),
            TextFormField(
              controller: genreController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Gênero';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Seu Gênero'),
            ),
            TextFormField(
              controller: howFindController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Telegram, Twitter, LinkedIn, Instagram, Amigo...';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Como Achou o React Recife?',
              ),
            ),
            TextFormField(
              controller: firstMeetupController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Primeira vez em um meetup nosso?';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'E sua primeira vez no meetup do React Recife?',
              ),
            ),
            TextFormField(
              controller: feedbackController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'De seu Feedback pls, ty :)';
                }
                return null;
              },
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: 'Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}
