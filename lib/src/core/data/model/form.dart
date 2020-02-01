/// FeedbackForm is a data class which stores data fields of Feedback.
class FeedbackForm {
  String name;
  String genre;
  String howFind;
  String feedback;
  String firstMeetup;

  FeedbackForm(
      this.name, this.genre, this.howFind, this.firstMeetup, this.feedback);

  // Method to make GET parameters.
  String toParams() =>
      "?name=$name&genre=$genre&howFind=$howFind&firstMeetup=$firstMeetup&feedback=$feedback";
}
