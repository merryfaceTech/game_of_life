# Ruby Kata template with Rspec and guard

## First time you run the project
To ensure everything has installed correctly run `bundle install.` If you do not have the rspec gem installed you'll need to install it or add it to your `Gemfile` before running bundle install.

<br>
To run tests manually use `rspec`
<br>
<br>

## Automatically run rspec whenever a change is detected
To run the guard watch run `bundle exec guard`. This will watch the project for changes, and run `rspec` automagically whenever one is detected.

<br>
To stop the watch type `q` in the terminal and then return. 

![Example use](/demo.gif)