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

  final TextEditingController nameController = TextEditingController();
  final TextEditingController genreController = TextEditingController();
  final TextEditingController howFindController = TextEditingController();
  final TextEditingController firstMeetupController = TextEditingController();
  final TextEditingController feedbackController = TextEditingController();

  FocusScopeNode currentFocus;
  List<String> howFindItems = [
    'Telegram',
    'Twitter',
    'LinkedIn',
    'Instagram',
    'Amigo',
  ];

  List<String> firstMeetupItems = [
    'Sim',
    'Não',
  ];

  bool _isLoading = false;

  void _submitForm() {
    if (_formKey.currentState.validate() &&
        howFindController.text.isNotEmpty &&
        firstMeetupController.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });
      final FormModel formModel = FormModel(
        nameController.text,
        genreController.text,
        howFindController.text,
        firstMeetupController.text,
        feedbackController.text,
      );

      final FormApi formApi = FormApi((String response) {
        if (response == FormApi.STATUS_SUCCESS) {
          _showFlashMessage(
            "Form Submetido :D !",
            position: FlashPosition.top,
          );
          nameController.clear();
          genreController.clear();
          howFindController.clear();
          firstMeetupController.clear();
          feedbackController.clear();
          setState(() {
            _isLoading = false;
          });
        }
        // else if (response == FormApi.STATUS_ERROR) {
        //   _showFlashMessage(
        //     "Ops! Erro ao Submeter o Form, Tente novamente.",
        //     position: FlashPosition.top,
        //   );
        //   setState(() {
        //     _isLoading = false;
        //   });
        // }
        else {
          _showFlashMessage(
            "Ops! Tente novamente. $response",
            position: FlashPosition.top,
          );
          setState(() {
            _isLoading = false;
          });
        }
      });
      _showFlashMessage(
        "Submetendo Form...",
        position: FlashPosition.top,
      );
      formApi.submitForm(formModel);
    } else {
      _showFlashMessage(
        "Ops! Algum campo em branco! Por favor, preencher todos ;) ",
        position: FlashPosition.top,
      );
    }
  }

  void _showFlashMessage(
    String message, {
    FlashPosition position = FlashPosition.center,
  }) {
    showFlash(
      context: context,
      duration: Duration(seconds: 2),
      builder: (_, controller) {
        return FlashMessage(
          controller: controller,
          backgroundColor: ColorTheme.heavyBlack,
          position: position,
          style: FlashStyle.grounded,
          enableDrag: false,
          onTap: () => controller.dismiss(),
          child: Padding(
            padding: EdgeInsets.all(Space.dodger_blue),
            child: Text(
              message,
            ).m1(),
          ),
        );
      },
    );
  }

  void _unfocus() {
    currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: DefaultAppBar(
        context: context,
        title: 'Preencher o Form',
        onClickBackButton: () {
          Navigator.pop(context);
          _unfocus();
        },
      ),
      backgroundColor: ColorTheme.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => _unfocus(),
          child: Container(
            color: Colors.transparent,
            child: _buidBody(),
          ),
        ),
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
                          Container(
                            child: DefaultButton(
                              label: 'Submeter Form',
                              active: !_isLoading,
                              loading: _isLoading,
                              onPressed: _submitForm,
                            ),
                          ).paddingOnly(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
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
              enabled: !_isLoading,
              maxLength: 50,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Seu Nome';
                }
                return null;
              },
              decoration: InputDecoration(labelText: 'Seu Nome'),
            ),
            TextFormField(
              controller: genreController,
              enabled: !_isLoading,
              maxLength: 50,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Seu Gênero';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Seu Gênero'),
            ),
            Dropdown(
              controller: howFindController,
              field: TextFormField(
                controller: howFindController,
                enabled: false,
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Como Achou do React Recife?',
                ),
              ),
              items: howFindItems,
            ),
            Dropdown(
              controller: firstMeetupController,
              field: TextFormField(
                controller: firstMeetupController,
                enabled: false,
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Sua primeira vez no meetup?',
                ),
              ),
              items: firstMeetupItems,
            ),
            TextFormField(
              controller: feedbackController,
              enabled: !_isLoading,
              maxLength: 150,
              maxLines: 2,
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
