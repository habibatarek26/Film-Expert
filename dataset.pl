
% knowledge base
%comedy%
comedy("Ace Ventura: Pet Detective", "Tom Shadyac",["Jim Carrey", "Courteney Cox", "Sean Young", "Tone Loc", "Dan Marino"], 1994, 6.9).
comedy("The Grand Budapest Hotel", "Wes Anderson",["Ralph Fiennes", "Tony Revolori", "Saoirse Ronan", "Adrien Brody", "Willem Dafoe"],2014, 8.1).
comedy("Crazy Rich Asians", "Jon M. Chu",["Constance Wu", "Henry Golding", "Awkwafina", "Michelle Yeoh", "Gemma Chan"],2018, 6.9).
comedy("Caddyshack", "Harold Ramis",["Chevy Chase", "Rodney Dangerfield", "Bill Murray", "Ted Knight", "Michael O'Keefe"],1980, 7.3).
comedy("Ghostbusters", "Ivan Reitman",["Bill Murray", "Dan Aykroyd", "Sigourney Weaver","Harold Ramis", "Rick Moranis"],1984, 7.8).
comedy("Ferris Bueller's Day Off", "John Hughes",["Matthew Broderick", "Alan Ruck", "Mia Sara", "Jeffrey Jones","Jennifer Grey"] ,1986, 7.8).
comedy("Coming to America", "John Landis",["Eddie Murphy", "Arsenio Hall", "James Earl Jones", "John Amos", "Madge Sinclair"],1988, 7.0).
comedy("The Breakfast Club", "John Hughes",["Emilio Estevez", "Anthony Michael Hall", "Judd Nelson", "Molly Ringwald", "Ally Sheedy"],1985, 7.8).
 
%superheros%
superheros("Thor: Love and Thunder","Taika Waititi",["Chris Hemsworth","Natalie Portman","Tessa Thompson","Christian Bale","Taika Waititi"],2022, 7.9).
superheros("Spider-Man: No Way Home","Jon Watts",["Tom Holland","Zendaya","Benedict Cumberbatch","Jacob Batalon","Willem Dafoe"],2021, 8.5).
superheros("Avengers: Endgame","Joe Russo",["Robert Downey Jr.","Chris Evans","Tom Holland","Chris Hemsworth","Mark Ruffalo"],2019, 8.4).
superheros("Guardians of the Galaxy","James Gunn",["Chris Pratt","Zoe Saldana","Dave Bautista","Vin Diesel","Bradley Cooper"],2014, 8.0).
superheros("Doctor Strange","Scott Derrickson",["Benedict Cumberbatch","Chiwetel Ejiofor","Rachel McAdams","Benedict Wong","Mads Mikkelsen"],2016, 7.5).
 
%cartoon%
cartoon("Kung Fu Panda","Mark Osborne",["Jack Black","Dustin Hoffman","Angelina Jolie","Ian McShane","Jackie Chan"],2008, 7.6).
cartoon("The Incredibles","Brad Bird",["Craig T. Nelson","Holly Hunter","Samuel L. Jackson","Jason Lee","Sarah Vowell"],2004, 8.0).
cartoon("Megamind","Tom McGrath",["Will Ferrell","Tina Fey","Jonah Hill","David Cross","Brad Pitt"],2010, 7.2).
cartoon("Big Hero 6","Don Hall",["Ryan Potter","Scott Adsit","Jamie Chung","Damon Wayans Jr.","Genesis Rodriguez"],2014, 7.8).
cartoon("Wreck-It Ralph","Rich Moore",["John C. Reilly","Sarah Silverman","Jack McBrayer","Jane Lynch","Alan Tudyk"],2012, 7.7).
 
%science_fiction%
science_fiction("Blade Runner 2049","Denis Villeneuve", ["Ryan Gosling", "Harrison Ford", "Ana de Armas", "Sylvia Hoeks", "Jared Leto"], 2017, 8.0).
science_fiction("Interstellar","Christopher Nolan",["Matthew McConaughey","Anne Hathaway"," Jessica Chastain", "Michael Caine", "Casey Affleck"] , 2014, 8.6).
science_fiction("Inception","Christopher Nolan",["Leonardo DiCaprio","Joseph Gordon-Levitt","Ellen Page","Tom Hardy", " Ken Watana"], 2010, 8.8).
science_fiction("Dune","Denis Villeneuve",["Timothée Chalamet","Rebecca Ferguson","Oscar Isaac", "Josh Brolin"], 2021, 8.3).
science_fiction("The Terminator","James Cameron", ["Arnold Schwarzenegger", "Michael Biehn", "Linda Hamilton", "Paul Winfield", "Lance Henriksen"], 1984, 8.0).
science_fiction("Avatar", "James Cameron",["Sam Worthington", "Zoe Saldana", "Sigourney Weaver", "Stephen Lang", "Michelle Rodriguez"], 2009, 7.8).
science_fiction("The Matrix","The Wachowskis", ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss", "Hugo Weaving", "Joe Pantoliano"], 1999, 8.7).
 
%Action%
action("John Wick","Chad Stahelski", [ "Keanu Reeves", "Ian McShane", "Willem Dafoe", "John Leguizamo","Lance Reddick"] ,2014, 7.4).
action("Mad Max: Fury Road","George Miller",[ "Tom Hardy","Charlize Theron","Nicholas Hoult","Hugh Keays,Byrne","Rosie Huntington","Whiteley"],2015, 8.1).
action("The Raid: Redemption","Gareth Evans",[ "Iko Uwais", "Yayan Ruhian", "Donny Alamsyah", "Joe Taslim", "Pierre Gruno"], 2011, 7.6).
action("Die Hard", "John McTiernan",["Bruce Willis", "Alan Rickman", "Bonnie Bedelia", "Reginald VelJohnson", "Alexander Godunov"], 1988, 8.2).
action("The Dark Knight","Christopher Nolan", ["Christian Bale", "Heath Ledger", "Aaron Eckhart", "Michael Caine", "Maggie Gyllenhaal"], 2008, 9.0).
action("Mission: Impossible - Fallout","Christopher McQuarrie" ,["Tom Cruise", "Henry Cavill", "Ving Rhames", "Simon Pegg", "Rebecca Ferguson"], 2018, 7.7).
 
%Drama%
drama("The Shawshank Redemption","Frank Darabont" ,["Tim Robbins", "Morgan Freeman", "Bob Gunton", "William Sadler","Clancy Brown"], 1994, 9.3).
drama("The Pursuit of Happyness","Gabriele Muccino",["Will Smith", "Jaden Smith", "Thandie Newton", "Brian Howe", "James Karen"],2006, 8.0).
drama("12 Years a Slave","Steve McQueen",[ "Chiwetel Ejiofor", "Michael Fassbender", "Lupita Nyongo", "Sarah Paulson", "Benedict Cumberbatch"], 2013, 8.1).
 
% relations

list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL). % to get actor from the list

genre(X,"comedy"):- comedy(X,_,_,_,_).
genre(X,"superheros"):- superheros(X,_,_,_,_).
genre(X,"cartoon"):- cartoon(X,_,_,_,_).
genre(X,"science_fiction"):- science_fiction(X,_,_,_,_).
genre(X,"action"):- action(X,_,_,_,_).
genre(X,"drama"):- drama(X,_,_,_,_).

age(X,Y) :- 
    (X<12,Y="child");
    (Y="adult").

film(X, Y, Z, W,R):- comedy(X, Y, Z, W,R);
                superheros(X, Y, Z, W,R);
                cartoon(X, Y, Z, W,R);
                science_fiction(X, Y, Z, W,R);
                action(X, Y, Z, W,R);
                drama(X, Y, Z, W,R).

film_year(Y, N):- film(N, _, _, Y,_).

films_of_year(X ,Y, O):- film_year(Y, X), Y < 2000, O = "Older". % returns films of given years
films_of_year(X ,Y, O):- film_year(Y, X), Y >= 2000, O = "Recent".
films_of_year(X ,Y):- film_year(Y, X).

film_with_actor(X,Z) :- film(X,_,Y,_,_) , list_member(Z,Y).

actor_of_film(X,Y):- film(X,_,Y,_,_).

director_of_film(X,Y):- film(X,Y,_,_,_).

year_of_film(N, Y):- film(N, _, _, Y,_). % year of given film

rating_of_film(Film,Rating) :-film(Film, _,_,_,Rating).

rating_greater_than(Film, MinRating) :-
    rating_of_film(Film, Rating),
    Rating >= MinRating.
year_greater_than(Film, MinYear) :-
    year_of_film(Film, Year),
    Year >= MinYear.

recommend("male", "happy", "adult", Film) :- action(Film, _, _, _, _); comedy(Film, _, _, _, _).
recommend("female", "happy", "adult", Film) :- drama(Film, _, _, _, _); comedy(Film, _, _, _, _).
recommend("male", "sad", "adult", Film) :- drama(Film, _, _, _, _); science_fiction(Film, _, _, _, _).
recommend("female", "sad", "adult", Film) :- drama(Film, _, _, _, _); superheros(Film, _, _, _, _).
recommend("male", "neutral", "adult", Film) :- superheros(Film, _, _, _, _); science_fiction(Film, _, _, _, _).
recommend("female", "neutral", "adult", Film) :- superheros(Film, _, _, _, _); science_fiction(Film, _, _, _, _).
 
recommend("male", "happy", "child", Film) :- cartoon(Film, _, _, _, _); comedy(Film, _, _, _, _).
recommend("female", "happy", "child", Film) :- cartoon(Film, _, _, _, _); comedy(Film, _, _, _, _).
recommend("male", "sad", "child", Film) :- cartoon(Film, _, _, _, _); superheros(Film, _, _, _, _).
recommend("female", "sad", "child", Film) :- cartoon(Film, _, _, _, _); superheros(Film, _, _, _, _).
recommend("male", "neutral", "child", Film) :- cartoon(Film, _, _, _, _); superheros(Film, _, _, _, _).
recommend("female", "neutral", "child", Film) :- cartoon(Film, _, _, _, _); superheros(Film, _, _, _, _).

filtered_film(Film, Genre, Year, Rating) :-
    film(Film,_,_,_,_),genre(Film,Genre),year_greater_than(Film,Year),
    rating_greater_than(Film, Rating).

complex_recommend("male", "happy", "adult", Film) :-
    (action(Film, _, _, _, Rating); comedy(Film, _, _, _, Rating)),
    Rating > 7.5.
 
complex_recommend("male", "happy", "adult", Film) :-
comedy(Film, _, _, _, Rating),
Rating > 7.0. % Lower rating threshold for comedies.

complex_recommend("male", "happy", "adult", Film) :-
drama(Film, _, _, _, Rating),
Rating > 8.0. % Higher rating threshold for dramas.

complex_recommend("female", "happy", "adult", Film) :-
        (drama(Film, _, _, _, Rating); comedy(Film, _, _, _, Rating)),
Rating > 7.5.

complex_recommend("male", "sad", "adult", Film) :-
drama(Film, _, _, _, Rating),
Rating > 7.5.

complex_recommend("female", "sad", "adult", Film) :-
        (drama(Film, _, _, _, Rating); superheros(Film, _, _, _, Rating)),
Rating > 7.5.

complex_recommend("male", "neutral", "adult", Film) :-
        (superheros(Film, _, _, _, Rating); science_fiction(Film, _, _, _, Rating)),
Rating > 7.0.

complex_recommend("female", "neutral", "adult", Film) :-
        (superheros(Film, _, _, _, Rating); science_fiction(Film, _, _, _, Rating)),
Rating > 7.0.

complex_recommend("male", "happy", "child", Film) :-
cartoon(Film, _, _, _, Rating),
Rating > 7.0.

complex_recommend("female", "happy", "child", Film) :-
cartoon(Film, _, _, _, Rating),
Rating > 7.0.

complex_recommend("male", "sad", "child", Film) :-
        (cartoon(Film, _, _, _, Rating); superheros(Film, _, _, _, Rating)),
Rating > 7.0.

complex_recommend("female", "sad", "child", Film) :-
        (cartoon(Film, _, _, _, Rating); superheros(Film, _, _, _, Rating)),
Rating > 7.0.

complex_recommend("male", "neutral", "child", Film) :-
        (cartoon(Film, _, _, _, Rating); superheros(Film, _, _, _, Rating)),
Rating > 7.0.

complex_recommend("female", "neutral", "child", Film) :-
        (cartoon(Film, _, _, _, Rating); superheros(Film, _, _, _, Rating)),
Rating > 7.0.

%% user input 

start(Y) :-	

          
              write('Expert System - Film Recommender OMNIBUS 2000'), nl,
              write('Please answer the questions below'), nl,
    
              write('What is your name? '), read(Name), nl,
              write('Hello '), write(Name), nl,
    
              write('Enter your age? '),  nl,read(Age),age(Age,C),
              write('Enter your gender?'),nl,
              write('1- Male'),nl,
              write('2- Female'), 
              read(Gender), nl,((Gender=:=1,G="male");
                               (Gender=:=2,G="female");
                               write('Invalid choice'),nl
                                %(write('No'),fail)
                               ),

              write('How about your mood? '),nl,
              write('1- Happy'),nl,
              write('2- Sad'),nl,
              write('3- Neutral'),nl,(   
              read(Mood), nl, ((Mood=:=1,M="happy");
                              (Mood=:=2,M="sad");
                              (Mood=:=3,M="neutral");
                              write('Invalid choice'),nl

                             %  (write('No'),fail) trying to make a loop
                              )),nl,
    
              write('Is there a particular genre that you \' d like to be recommended?'),nl,
              write('1- Yes'),nl,
              write('2- No'),nl,read(Film),nl,
              ( Film=:=1,
              write('1- Drama'),nl,
              write('2- Comedy'),nl,
              write('3- Superheros'),nl,
              write('4- Cartoon'),nl,
              write('5- Science_fiction'),nl,
              write('6- Action'),nl,
              read(Choice),(( Choice=:=1,genre(Film,"Drama") );
                           (  Choice=:=2, genre(Film,"comedy"));
                           (Choice=:=3,genre(Film,"Superheros"));
                           (Choice=:=4, genre(Film,"Cartoon")  );
                           (Choice=:=5, genre(Film,"Science_fiction") );
                           (Choice=:=6, genre(Film,"Action"));
                            write('Invalid choice'),nl
                           ),
              write(X)
             );(   
              complex_recommend(G,M, C, Film),
              write('We recommend you watch: '), write(Film)), nl.
    
    
      %Complex_recommend(gender,status,age,film)%
    
    
    
    
    
