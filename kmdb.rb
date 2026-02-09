# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
#
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
#
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======
# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========
# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Represented by agent
# ====================
# Christian Bale

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

# Prints a header for the agent's list of represented actors output
puts ""
puts "Represented by agent"
puts "===================="
puts ""

# Query the actor data and loop through the results to display the agent's list of represented actors output.
# TODO!

Movie.destroy_all
Topcast.destroy_all


Batman1 = Movie.new
Batman1["movie_name"] = "Batman Begins"
Batman1["year"] = 2005
Batman1["MPAA_rating"] = "PG-13"
Batman1["studio"] = "Warner Bros"
Batman1.save

Batman2 = Movie.new
Batman2["movie_name"] = "The Dark Knight"
Batman2["year"] = 2008
Batman2["MPAA_rating"] = "PG-13"
Batman2["studio"] = "Warner Bros"
Batman2.save

Batman3 = Movie.new
Batman3["movie_name"] = "The Dark Knight Rises"
Batman3["year"] = 2012
Batman3["MPAA_rating"] = "PG-13"
Batman3["studio"] = "Warner Bros"
Batman3.save

puts "There are #{Movie.all.count} movies"

Cast1 = Topcast.new
Cast1["movie_name"] = "Batman Begins"
Cast1["actor_name"] = " Christian Bale"
Cast1["character_name"] = "Bruce Wayne"
Cast1.save

Cast2 = Topcast.new
Cast2["movie_name"] = "Batman Begins"
Cast2["actor_name"] = "  Michael Caine"
Cast2["character_name"] = "Alfred"
Cast2.save

Cast3 = Topcast.new
Cast3["movie_name"] = "Batman Begins"
Cast3["actor_name"] = " Liam Neeson"
Cast3["character_name"] = "Ra's Al Ghul"
Cast3.save

Cast4 = Topcast.new
Cast4["movie_name"] = "Batman Begins"
Cast4["actor_name"] = " Katie Holmes"
Cast4["character_name"] = "Rachel Dawes"
Cast4.save

Cast5 = Topcast.new
Cast5["movie_name"] = "Batman Begins"
Cast5["actor_name"] = " Gary Oldman"
Cast5["character_name"] = "Commissioner Gordon"
Cast5.save

Cast6 = Topcast.new
Cast6["movie_name"] = "The Dark Knight"
Cast6["actor_name"] = "Christian Bale"
Cast6["character_name"] = "Bruce Wayne"
Cast6.save

Cast7 = Topcast.new
Cast7["movie_name"] = "The Dark Knight"
Cast7["actor_name"] = "Heath Ledger"
Cast7["character_name"] = "Joker"
Cast7.save

Cast8 = Topcast.new
Cast8["movie_name"] = "The Dark Knight"
Cast8["actor_name"] = "Aaron Eckhart"
Cast8["character_name"] = "Harvey Dent"
Cast8.save

Cast9 = Topcast.new
Cast9["movie_name"] = "The Dark Knight"
Cast9["actor_name"] = "Michael Caine"
Cast9["character_name"] = "Alfred"
Cast9.save

Cast10 = Topcast.new
Cast10["movie_name"] = "The Dark Knight"
Cast10["actor_name"] = "Maggie Gyllenhall"
Cast10["character_name"] = "Rachel Dawes"
Cast10.save

Cast11 = Topcast.new
Cast11["movie_name"] = "The Dark Knight Rises"
Cast11["actor_name"] = "Christian Bale"
Cast11["character_name"] = "Bruce Wayne"
Cast11.save

Cast12 = Topcast.new
Cast12["movie_name"] = "The Dark Knight Rises"
Cast12["actor_name"] = "Gary Oldman"
Cast12["character_name"] = "Commisionner Gordon"
Cast12.save

Cast13 = Topcast.new
Cast13["movie_name"] = "The Dark Knight Rises"
Cast13["actor_name"] = "Tom Hardy"
Cast13["character_name"] = "Bane"
Cast13.save

Cast14 = Topcast.new
Cast14["movie_name"] = "The Dark Knight Rises"
Cast14["actor_name"] = "Joseph Gordon-Levitt"
Cast14["character_name"] = "John Blake"
Cast14.save

Cast15 = Topcast.new
Cast15["movie_name"] = "The Dark Knight Rises"
Cast15["actor_name"] = "Anne Hathaway"
Cast15["character_name"] = "Selina Kyle"
Cast15.save

puts "There are #{Topcast.all.count} casts"





