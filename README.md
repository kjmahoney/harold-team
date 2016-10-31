# The Harold Team

This application was built using ruby on rails.

The original scope of this app was to be a note and journaling app for improv teams, specifically for those that perform a common form of improv called the harold. A primary goal of the application was to allow notes to be shared between users while still providing the ability to create private notes.
The app was designed first via ERD to map its database. This mapping can be seen the erd.pdf in the Planning folder. Afterwards full CRUD functionality was applied to the relevant models.
Afterwards, a join table was added to link the Team and User tables. This table provides the ability to expand functionality of the app; however in order to stick to the original scope, this table currently only allows users to see a list other users on a team.

## Unsolved Problems

Unsolved problems/features are primarily related to user restrictions. 1.) Using the membership-join table, I will permit users to only view teams of which they are a member. 2.) I will create a "coach role", which allows for particular create/edit permissions beyond that of players. 3.) Finally, I will employ an administrator role using cancan.

In summary, the first version of this application accomplished its original goals. There are features that still need to be added to enhance logical flow and user experience as well as expand the potential of the application.

## User Stories

**MVP**:
- I should be able to make a record for a show
- I should be able to break this show down into its beats
- I should be able to make notes for each beat
- I should be able to view public notes while being able to record my own public and private notes
(Users only have many notes )

**Silver**:

- I should be able to make notes for the show as a whole in addition to each beat
- I should be able to categorize my shows by team
(A team will have many users, and a user will have many teams)

**Gold**:
- I should be able to upload photos and videos from the show
- As a coach, I should be able to view all players on a team and make notes for them, also track attendance at shows and see who
was in which beat
(Will require a new table of players with a many to many relationship with shows and beats)
(Question whether to make users )

**Bonus features**:
- Link to team website
- Calendar for inputting dates
