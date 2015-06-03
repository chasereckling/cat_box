CatBox version 1.0 (05/19/15)
-----------

What is it?
-----------

CatBox is a social networking site for your Cat! CatBox also allows the user to upload a picture and profile of their kitty in a battle of cuteness against other uploaded cats, in the Battle Cats game on your cats' profile page.

Setup:
------

CatBox uses ruby version 2.2.0.

1. After you download CatBox navigate to the 'cat_box' file folder in your terminal then run the following command to install the Gemfile:

   $ bundle install

2. Run postgres in the terminal:

   $ postgres

3. To create the database, type in the terminal:

   $ rake db:create 
   
   $ rake db:migrate
   
   $ rake db:seed

4. Run ruby app.rb in the terminal:

   $ ruby app.rb

5. In your browser navigate to the url: localhost:4567.

6. Click 'Sign Up' to set up your cats profile.

7. To play the Battle Cats game, click on the Battle Cats icon on your cats profile page

Copyright and Licensing:
------------------------

For copyright and licensing Battle Cats uses the GNU GENERAL PUBLIC LICENSE, version 2.

Author:
-------

Chase Reckling chase.reckling@gmail.com
