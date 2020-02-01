import 'dart:convert' as convert;
import 'package:Formpad/src/core/data/model/form.dart';
import 'package:http/http.dart' as http;

/// FormApi is a class which does work of saving FormModel in Google Sheets using
/// HTTP GET request on Google App Script Web URL and parses response and sends result callback.
class FormApi {
  // Callback function to give response of status of current request.
  final void Function(String) callback;

  // Google App Script Web URL.
  static const String URL =
      "https://script.google.com/macros/s/AKfycbzcp6It0aXvgis7S6y6iJAs_Slt_4Q1YV2NCxwfh_Uo_XhSkwo/exec";

  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  // Default Contructor
  FormApi(this.callback);

  /// Async function which saves feedback, parses [FormModel] parameters
  /// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
  void submitForm(FormModel formModel) async {
    try {
      await http.get(URL + formModel.toParams()).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      return e;
    }
  }
}
