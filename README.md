# Forum Application 

[Link to live app](https://max-rails-forum.herokuapp.com/)

## Creation Walkthrough

1. Create application (rails new, db create).
2. Generate 'Message' model and migrate db.
   - $ rails g model Message title:string description:text
3. Generate 'Messages' controller.
   - $ rails g controller Messages
4. Set up routes & root.
5. Install gems to Gemfile, bundle install & follow required install steps for each gem.
   - Simple Form: form styling
   - Bootstrap Sass: styling
   - Devise: user accounts & verification
6. Define the required methods within our controller; index, new, create, show & destroy.
7. Show all messages using 'Index' method.
8. Add 'Show' method to view individual messages.
9. Add 'Edit'/'Update'/'Destroy' functionality to methods.
10. Create NavBar with Sign Up & Sign In & New Message options.
11. Add the 'user_id' attribute to individual messages.
12. Generate the Comment(s) model & controller.
13. Create routes (nested) for comments
14. Create form for comments & comment display (both partial files).
15. Define & create 'Edit'/'Update'/'Destroy' methods & functionality.
16. Add timestamps to posts & comments.
17. Initialize user privileges to ensure only correct users can interact with their own posts (using Devise gem).
18. Add authenticate_user to limit access.
19. Style content.
20. Initialize Heroku & launch!

## Performance - Google PageSpeed

Scores >95 across pages & devices.

## Resources

Thank you to Ryan Hemrick & Baylor Rae for the informative Youtube videos.

Required Gems: Simple Forms, Bootstrap SASS & Devise

Production: Heroku & Github

## Future Improvements

1. Building on the accounts created by Devise - Adding an account page, displaying a 'nickname' for a user on both the homepage and posts/comments.
2. Create the ability to 'pin' posts to the top of the page.
3. Create an option to display posts by the most recent comment, or the highest reply count, instead of creation time.