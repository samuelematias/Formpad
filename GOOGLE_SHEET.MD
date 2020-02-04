[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/license-MIT-orange.svg)](https://github.com/samuelematias/Formpad/blob/master/LICENSE)

# Config the Google Sheet to Save Formpad data

- Sign in with your Google Account.
- Go to your Google Drive and create a new ‘Google Sheets’ document where you want to store your responses and Open that.
- Setup header columns of sheet and you’ll see like this.

<p align="center">
  <img src="https://i.imgur.com/YmMiyVX.png" height="224"  /><br/>
</p>

As above, I’ve set up header columns of the sheet. You can see I’ve highlighted part of the URL. It is the Sheet ID of our current document. Just copy it, we’ll require it in the next step. Every document has a unique Sheet ID.

- As in below Image, Just go to Tools → Script Editor.

<p align="center">
  <img src="https://i.imgur.com/lJWFkTr.png" height="224"  /><br/>
</p>

- After the above steps, you’ll see AppScript Editor will be launched in the New Tab of your browser. You’ll see Code window like below.

<p align="center">
  <img src="https://i.imgur.com/Q5LXuP7.png" height="224"  /><br/>
</p>

Here in this editor, we have to write AppScript which will act as a Web API and that will communicate with Google sheets.

```dart
function doGet(request){
// Open Google Sheet using ID
var sheet = SpreadsheetApp.openById("1IpCgV4378O3pPj_HkreFeE8aQSV5pYkYUhekNsQFP0Q");
var result = {"status": "SUCCESS"};
try{
// Get all Parameters
var name = request.parameter.name;
var genre = request.parameter.genre;
var howFind = request.parameter.howFind;
var firstMeetup = request.parameter.firstMeetup;
var feedback = request.parameter.feedback;

        // Append data on Google Sheet
        var rowData = sheet.appendRow([name, genre, howFind, firstMeetup, feedback]);

    }catch(exc){
        // If error occurs, throw exception
        result = {"status": "FAILED", "message": exc};
    }

    // Return result
    return ContentService
    .createTextOutput(JSON.stringify(result))
    .setMimeType(ContentService.MimeType.JSON);

}

```

First of all, we’ll have to Open our spreadsheet, we can open that using SpreadsheetApp.openById(sheetId)

Sheet ID which we’ve copied in the previous step has to be passed in this method.

Here, we’ll retrieve parameters using request.parameter . Finally, by using a method appendRow([]) , we’ll insert feedback data into Google Sheet. In the end, we’ll return a JSON response with status: SUCCESS/FAILED .

- Select from tab, Publish → Deploy as web app

<p align="center">
  <img src="https://i.imgur.com/SsD8nCh.png" height="224"  /><br/>
</p>

- You’ll see a window like this, Just ensure that select ‘Execute the app’ as ‘Me’ and ‘Who has access to the app’ as ‘Anyone, even anonymous’.

<p align="center">
  <img src="https://i.imgur.com/sWkIrlB.png" height="224"  /><br/>
</p>

- Authorization is required! Just review permissions. Then select your Google Account.

<p align="center">
  <img src="https://i.imgur.com/1y2FzmA.png" height="224"  /><br/>
</p>

- You’ll see like this, Just expand that ‘Advanced’ and click on ‘Go to YOUR_PROJECT_NAME (unsafe)’. As I’ve highlighted below.

<p align="center">
  <img src="https://i.imgur.com/C74T9Cc.png" height="224"  /><br/>
</p>

- Allow these permissions and then you’re done!

<p align="center">
  <img src="https://i.imgur.com/91RZb8y.png" height="224"  /><br/>
</p>

- Finally, you’ll get a window like this with the Web app URL. Copy that Web URL for a reference and replace the string of the URL variable in the form.dart file on this path "lib/src/core/data/api/" with this URL that you cppy. We’ll use this URL for making HTTP GET requests from our flutter app.

<p align="center">
  <img src="https://i.imgur.com/Ocz8CS8.png" height="224"  /><br/>
</p>

We’ve done this part. Let’s see Flutter implementation 🚀!
