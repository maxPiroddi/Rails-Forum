# Forum Application Walkthrough

1. Rails new etc, db:create
2. Create model $ rails g model Message title:string description:text (Make sure to migrate after this!) (Model name singular!)
3. Create controller $rails g controller Messages (controller name = plural!)
4. Set up our routes & root
5. Install some gems: Simple Form, Bootstrap sass & devise --> Stick them in Gemfile
6. Import Bootstrap to application.css and application.js
7. Define the required methods within our controller; index, new, create, show & destroy.
8. Create a partial file for our new & edit message form (_form.html.erb)
9. Fill out all required methods & html to create basic CRUD site
10. Run required bash scripts to get Devise working w/ a :User model
11. Create NavBar w/ Sign Up & Sign In options
12. 
