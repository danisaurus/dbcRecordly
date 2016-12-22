# dbcRecordly
This is the repository for the DBC Recordly Challenge

## To run locally:
1. Install ruby, rails, and sqlite3
2. Clone repository to desktop
3. Run "bundle install"
4. Run "rails db:migrate"
5. Run "rails db:seed"
6. After initial setup run "bin/rails server" and go to localhost:3000


## Insights

I chose to challenge myself by building this application in rails. Although I found the MVC format familiar and simple, not having written code in ruby or rails since graduating DBC led me to take longer to put together this simple MVP than I had hoped. 

If I had more time to complete this challenge there are many things I would do / change. 

Schema Changes:

1. With more time the biggest change I would make is to the schema, since currently users can only add songs, and theres no way to search or filter by song, album, artist, etc.
2. Off the top of my head, a more ideal schema would look something like this:

![Schema](http://i.imgur.com/eTdTVcB.png)

3. By changing the schema a user can now add a song or album to their list, and will be able to sort by songs, albums, or artists. 
4. I'd love to include some kind of csv upload to this application where users can just upload a csv instead of having to manually add each individual song. Also, if a user wants to add an album or a song, i'd like to make the program able to look up if it already exists in our database using some kind of search/autofill. If the song already exists, then in the controller it would just add the song to their specific list, but not to the db. 
5. The thing I think about most is making sure that there are not a whole lot of duplicates in the system because we would have to take into account misspellings and whatnot. 

UI Changes:

1. I would use javascript on the login screen to show whether to Login or Signup instead of taking users to a whole new page. 2. When users signup I would use ajax to sign them up and then show the login screen on the same page so it doesn't feel like its taking users back and forth between pages so much.
3. I would use ajax on the songs index page. When adding songs it would just append to the list. I would also love to be able to edit songs inline in the list instead of going to a whole separate page to edit them.
4. Currently when a user logs in, they see all of the songs anyone has ever added. I would like to change up the schema (as you will see above) to make it so a user only sees the songs that they have added, but add an additional page where they can see all songs ever added to the site, and either favorite them or add them to their own collection from all songs.
5. My app currently has no error reporting, so if someone incorrectly logs in, it doesn't tell them something was wrong, or if a song for some reason doesn't save, it doesn't report that either. I would like to add in some validation for songs, and for emails to make sure that if an email already exists, they can't try to make another account, or if someone tries to add a song without including an artist or album, it won't add, and the error displays for the user.
6. I would also make favorites actually work. I'd change the heart to not be filled in, and when someone favorites it, make an ajax call to add it to their favorites, and just change the color of the heart.
7. I would need to add a favorites view, probably sortable by a number of things (artist, album, alphabetical, date added, date favorited?)
8. I would also choose a front end javascript framework. Either angular2 or react.js 





