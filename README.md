# Meme Matcher
Flex Project by Kevin Chu, Zachary Smith, Seth Little

Meme Matcher is a Tinder inspired iOS application which matches users together based on shared interest in internet memes.

## Functionality & MVP
- Users may create accounts with a profile picture and a 250 character bio.
- Users are presented a view with a single meme which they may approve (swipe right) or disapprove (swipe left).
- Users are "matched" together once a certain threshold of similarity in meme taste has been reached.
- Users may view all matches and open up a chat view with each individual match.
- Users set a location radius for matches.
## Technologies & Technical Challenges
### Backend: Rails
### Database: PostgreSQL
### iOS Language: Swift

### Learning Swift

### Composing meme database
- Write a web scraper which compiles memes from popular websites like reddit.

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
- Basic Swift App with 1 view
## Group Members & Work Breakdown
Kevin Chu, Zachary Smith, Seth Little
