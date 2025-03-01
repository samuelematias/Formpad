/// FormModel is a data class which stores data fields of Feedback.
class FormModel {
  String name;
  String genre;
  String howFind;
  String feedback;
  String firstMeetup;

  FormModel(
      this.name, this.genre, this.howFind, this.firstMeetup, this.feedback);

  // Method to make GET parameters.
  String toParams() =>
      "?name=$name&genre=$genre&howFind=$howFind&firstMeetup=$firstMeetup&feedback=$feedback";
}
