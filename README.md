# CampFound

## Project Summary

CampFound is a Rails web application that allows users to search for festivals by location and date. When a user chooses a festival from the list of results, CampFound will display the details for the festival along with a map displaying all of the campgrounds in the area surrounding the festival.

## Under the Hood

CampFound utilized the Eventful.com API to retrieve a list of festivals by hitting an endpoint determined by the User's search parameters. It renders a list of festivals. Each festival is displayed with a link. When a user clicks a link a query is submitted the Evenful.com API using the event ID and returns all of the details for that specific festival. As the show page loads a jQuery event retrieves the longitude and latitude parameters and passes the data to the Google Places JavaScript API and serves a map of campgrounds in the area surrounding the festival.

Additionally, CampFound users can create an account and log in. The authentication is handled locally. They can also sign in using the Google OmniAuth gem.

CampFound uses:

* RESTful routes
* CRUD
* Ruby on Rails
* Google OmniAuth
* 2 External API's
* Ruby
* HTML
* ERB
* CSS
* Bootstrap
* JavaScript
* jQuery
* RSpec
* Capybara

## Learning Goals

Learning how to build a full Rails app from idea to delivery.  
Revisiting previous concepts such as APIs and OAuth.  
Finding the strengths and gaps in your knowledge of Ruby, Rails, and organizing a project.

## Project Description

The goal of this project is to create a successful web application from a project idea. You will create an app that will authenticate with a third-party service, consume an api, and solve an actual problem.
