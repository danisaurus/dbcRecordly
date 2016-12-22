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

I chose to challenge myself by building this application in rails. Although I found the MVC format familiar and simple,  having not written code in ruby or rails since graduating DBC, led me to take longer to put together this simple MVP than I had hoped. 

If I had more time to complete this challenge there are many things I would do / change. 

Schema Changes:

1. With more time the biggest change I would make is to the schema, since currently users can only add songs, and theres no way to search or filter by song, album, artist, etc.
2. Off the top of my head, a more ideal schema would look something like this:



UI Changes:

1. I would use javascript on the login screen to show whether to Login or Signup instead of taking users to a whole new page. 2. When users signup I would use ajax to sign them up and then show the login screen on the same page so it doesn't feel like its taking users back and forth between pages so much.
3. I would use ajax on the songs index page. When adding songs it would just append to the list. I would also love to be able to edit songs inline in the list instead of going to a whole separate page to edit them.
4. Currently when a user logs in, they see all of the songs anyone has ever added. I would like to change up the schema (as you will see below) to make it so a user only sees the songs that they have added, but add an additional page where they can see all songs ever added to the site, and either favorite them or add them to their own collection.
5. My app currently has no error reporting, so if someone incorrectly logs in, it doesn't tell them something was wrong, or if a song for some reason doesn't save, it doesn't report that either. I would like to add in some validation for songs, and for emails to make sure that if an email already exists, they can't try to make another account, or if someone tries to add a song without including an artist or album, it won't add, and the error displays for the user.





