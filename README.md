# Meme Matcher
Flex Project by Kevin Chu, Zachary Smith, Seth Little

Meme Matcher is a Tinder inspired iOS application which matches users together based on shared interest in internet memes.

Link to iOS repo: https://github.com/thraxxed/MemeMatcher-iOS

## Functionality & MVP
- Users may create accounts with a profile picture and a 250 character bio.
- Users are presented a view with a single meme which they may approve (swipe right) or disapprove (swipe left).
- Users are "matched" together once a certain threshold of similarity in meme taste has been reached.
- Users may view all matches and open up a chat view with each individual match.
- Users set a location radius for matches.

## Wireframes

![Session View](https://i.imgur.com/FDRIOZj.png)

![Match Page](https://i.imgur.com/3uJnNGi.png)

![User Profile](https://i.imgur.com/KIw57CN.png)

![Chat View 1](https://i.imgur.com/akrLA7v.png)

![Chat View 2](https://i.imgur.com/cLjr2zI.png)


## Technologies
### Backend: Rails
### Database: PostgreSQL
### iOS Language: Swift

## Technical Challenges
### Learning Swift
- Swift is a statically typed, compiled language
### Composing meme database
- Initially we will manually seed the database with memes
- Bonus - write scripts that scrape popular websites for recent memes and post to our DB

### Writing user match algorithm
- Users are matched once they share 10 liked memes in common.
- Bonus: make more complex algorithm (ELO)

## Accomplished over the Weekend
- User auth with BCrypt
- Rails backend completed (DB table, model, controller, jBuilder)
  - Users
    - id
    - username
    - image_url
    - bio
    - password_digest
    - session_token
    - latitude
    - longitude
  - Memes
    - id
    - image_url
  - Likes (joins table for users and memes)
    - id
    - user_id
    - meme_id
    - liked (boolean)
  - Matches
    - id
    - user1_id
    - user2_id
  - Messages
    - id
    - user_id
    - match_id
    - body
- Familiarize entire team with Swift by following tutorials
- Swift App with 3 Views (Login, SignUp, MemeView) and segues between them
- Fetch Memes from database
- Let users swipe left or right, then display them the next meme

## Group Members
Kevin Chu, Zachary Smith, Seth Little

## Daily Breakdown
Day 1 - Persist liking a meme to database, calculate user matches on backend
Day 2 - MatchIndexView (matches for a user), and MatchShowView (chat and the users bio modal)
