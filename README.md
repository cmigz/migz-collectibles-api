# Migz Collectibles - Back End Repo
### By Christian Mignacca

## Introduction

Welcome to the back end repo for my second project done during GA's Web Development Immersive.

Prior to starting this process I imagined this part to be quite the daunting task.  As I learn more and get a little better every day I've come to realize nothing in the world of development is actually scary, its just a matter of troubleshooting and finding out where the problem is happening.

Given the time frame to start and finish this project I decided to keep it's scope rather limited.  Especially considering I did not have the time to polish my previous project in terms of aesthetics to the degree I wanted.

I'm very proud of this project and cannot beleive much I've learned in this small amount of time.  It's only going to get better from here.

## Deployed API Link

**API Origin:** https://pure-beach-11955.herokuapp.com/

## Front End Links

- **GitHub Repo:** https://github.com/cmigz/proj2-client
- **GitHub Deployed Link:** https://cmigz.github.io/proj2-client/

## Technologies Used

In order to build this backend I primarily utilized my skills with Rails and PostgreSQL to create and test my back end.

Using sacffolding I built my additional table with appropriate references so each game is tied to a user, and therefore every game being a representation of that user's collection.

I used a lot of basic SQL commands to test and see what was happenening in my database.

Additionally I utilized a lot of rails debugging to test what I desired in the rails console and bring those changes to my controller.

## Planning Process

- Establish heroku server for deployment upon working status
- Establish my tables
  - Test to ensure columns reflect what was desired
  - Test inserting and viewing values based on certain params
- Write Scripts to test MVC model
  - Tested all sign in functionality and wrote script to test the adding of a game.
- Build front end aspects to work with back end functionality
  - Tested all sign in functionality from front end
- Build each restful route as desired on back end for each application
  - Build/test clients interaction with back end
    - Rinse and repeat for each routes
- Deploy working version to heroku

## Project Journal

### Log 1

Started to build and ERD to visualize my data, still need to refine my knowledge on the topic.  Have the following rough sketch but have plans for how to make it better. Tried to make a visualization, can't help but think I am missing something.


![alt text](http://i.imgur.com/oEYMh4b.jpg "ERD Proto")
![alt text](http://i.imgur.com/2IgGptC.png "Data Visualization V1")

### Log 2

After consulting yesterday with my instructor Nate I refactored the ERD slightly.  I renamed collection to games, while it will appear to the user as their "collection" it makes more sense from a planning standpoint for the table to be games over collection seeing as it is simply all game data. Before I get to actually building the tables I want to re-confirm this ERD and dig more into table relationships so that when I do get to actually building them the relations will be appropriate and act as intended.

![alt text](http://i.imgur.com/ZwTkgL8.jpg "ERD Proto")

### Log 3

I did not have the opportunity to add to this as much as I would have liked throughout the process but as of this writing everything is functional and based on the last updated ERD.

## Issues

- ~~Brining my idea of how the data bases work over to sql~~
- Have to enter a gamed ID to be able to delete or edit
  - Would like to have it so you could search by game name

## User Stories

- As a user I would like a site where I can create and account and be able to login to view my collection
- As a user I would like to see my entire collection upon login.
- As a user I would like to have a wishlist to keep track of games I've yet to obtain.
- As a user I would like to be able to add a item on my wishlist to my collection.
- As a user I would like to be able to edit my collection to add a game, remove a game, or update the status of a game in my collection.
- As a user I would like to be able to export my game collection to a csv as a means of having a local copy.
- As a user I would like to be able to upload a current collection stored into a csv to add to my app list.
