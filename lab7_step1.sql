/* FILE:  FLIX2YOU_data-load.txt                                            */
/* Script to populate tables for FLIX2YOU .. current schema before revision */
/* Written by Gary Heberling on July 2, 2012                                */
/* For IST210 world campus Penn State University                            */

/* This script is provided to students in IST210 for Lab # 7                */

/* Modifications:
   (1) Removed DELETE FROM and RESEED commands from script;  1/3/13 by glh
                                                                            */

/* PLEASE READ THE INSTRUCTIONS FOR LAB # 7 BEFORE EXECUTING                */

/* Insert data for table genre_codes */

/**
INSERT INTO genre_codes VALUES ('Action & Adventure');
INSERT INTO genre_codes VALUES ('Comedy');
INSERT INTO genre_codes VALUES ('Documentary');
INSERT INTO genre_codes VALUES ('Drama');
INSERT INTO genre_codes VALUES ('Education');
INSERT INTO genre_codes VALUES ('Foreign');
INSERT INTO genre_codes VALUES ('Horror');
INSERT INTO genre_codes VALUES ('Romance');
INSERT INTO genre_codes VALUES ('Thriller');
INSERT INTO genre_codes VALUES ('Western');

/* Insert data for table format_types */

INSERT INTO format_types values ('DVD');
INSERT INTO format_types values ('Blu-Ray');
INSERT INTO format_types values ('MiniDV');
INSERT INTO format_types values ('VHS');

/* Insert data for table video_stores */

INSERT INTO video_stores values ('FLIX2YOU Headquarters', '1225 W Linden Street', 'Scranton',
   'PA', '18501', 'INFO_SCRANTON@FLIX2YOU.COM', 'Headquarters');
INSERT INTO video_stores values ('Pittsburgh Shadyside', '4125 S Highland Ave', 'Pittsburgh',
   'PA', '15232', 'INFO_PITTSBURGH@FLIX2YOU.COM', 'Main Pittsburgh Store');

/* Insert data for table condition_codes */

INSERT INTO condition_codes VALUES ('rental');
INSERT INTO condition_codes VALUES ('used for sale');
INSERT INTO condition_codes VALUES ('damaged');

/* Insert data for moives, actors and move_cast */

/* FORMAT of the insert command --->   INSERT INTO movies VALUES (condition, format, genre, store, year, 
'Title', 'Desc', num, rental/sale/both, daily, sale); */

/* Amazing Spider-Man */
INSERT INTO movies VALUES (1, 1, 1, 1, 2012, 'The Amazing Spider-Man',
'The story of Peter Parker, an outcast high schooler who was abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben and Aunt May. Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. Peter is also finding his way with his first high school crush, Gwen Stacy, and together, they struggle with love, commitment, and secrets. As Peter discovers a mysterious briefcase that belonged to his father, he begins a quest to understand his parents disappearance - leading him directly to Oscorp and the lab of Dr. Curt Connors, his fathers former partner. As Spider-Man is set on a collision course with Connors alter-ego, The Lizard, Peter will make life-altering choices to use his powers and shape his destiny to become a hero.',
 100, 1, 1.99, 25.39);
INSERT INTO actors values ('M', 'Andrew', 'Garfield', 
'Although born in Los Angeles, Andrew Garfield grew up in England; his mother is English and they moved back there when he was three years old. He went to a private school, the City of London Freemen School, and began acting in youth theatre productions while he was still at school. At 19, he went to the Central School of Speech and Drama.');
INSERT INTO actors values ('F', 'Emma', 'Stone', 
'Stone began acting as a child as a member of the Valley Youth Theatre in Phoenix, Arizona, where she made her stage debut in a production of Kenneth Grahames The Wind in the Willows. She appeared in many more productions through her early teens until, at the age of 15, she decided that she wanted to make acting her career.');
INSERT INTO movie_cast VALUES (1,1);
INSERT INTO movie_cast VALUES (1,2);

/* Superbad */
INSERT INTO movies VALUES (1, 1, 2, 2, 2007, 'Superbad',
'Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.',
 25, 3, .99, 10.99);
INSERT INTO actors values ('M', 'Michael', 'Cera', 
'Canadian actor Michael Cera is the middle child of a Canadian mother and Italian father, both of whom worked for Xerox. He has two sisters. He was educated at Conestoga Public School, Robert H. Lagerquist Senior Public School and Heart Lake Secondary School until the ninth grade. Cera then completed his high school education via correspondence.');
INSERT INTO actors values ('M', 'Jonah', 'Hill', 
'Hill grew up in Los Angeles, the son of a tour accountant for Guns N Roses. He graduated from Crossroads School in Santa Monica and went on to The New School in New York to study drama.')
INSERT INTO actors values ('M', 'Christopher', 'Mintz-Plasse',
'Attended El Camino Real High School from 2003 to 2007. Because he was only 17 at the time of filming Superbad (2007), his mother was required to be on set during the filming of his sex scene.');
INSERT INTO movie_cast VALUES (2,3);
INSERT INTO movie_cast VALUES (2,4);
INSERT INTO movie_cast VALUES (2,5);


/* Gone with the wind */
INSERT INTO movies VALUES (2, 4, 4, 2, 1939, 'Gone with the Wind',
'American classic in which a manipulative woman and a roguish man carry on a turbulent love affair in the American south during the Civil War and Reconstruction.',
 4, 2, .99, 4.99);
INSERT INTO actors values ('M', 'Clark', 'Gable', 
'Clark Gables mother died when he was seven months old. At 16 he quit high school, went to work in an Akron Ohio tire factory and decided to become an actor after seeing the play The Bird of Paradise.');
INSERT INTO actors values ('F', 'Vivien', 'Leigh', 
'If a film were made of the life of Vivien Leigh, it would open in India just before World War I, where a successful British businessman could live like a prince. In the mountains above Calcutta, a little princess is born. Because of the outbreak of World War I, she is six years old the first time her parents take her to England.');
INSERT INTO actors values ('M', 'Thomas', 'Mitchell',
'Thomas Mitchell was one of the great American character actors, whose credits read like a list of the greatest films of the 20th century');
INSERT INTO movie_cast VALUES (3,6);
INSERT INTO movie_cast VALUES (3,7);
INSERT INTO movie_cast VALUES (3,8);

/* Fahrenheit 9/11 */
INSERT INTO movies VALUES (1, 1, 3, 1, 2004, 'Fahrenheit 9/11',
'Michael Moores view on what happened to the United States after September 11; and how the Bush Administration allegedly used the tragic event to push forward its agenda for unjust wars in Afghanistan and Iraq.',
 10, 3, .99, 11.99);
INSERT INTO actors values ('M', 'Michael', 'Moore', 
'Michael Moore was born in Flint, Michigan April 23, 1954, but was not raised there. Contrary to popular belief, he was actually raised in Davison, Michigan. He studied journalism at the University of Michigan-Flint, and also pursued other hobbies such as gun shooting, for which he even won a competition.');
INSERT INTO actors values ('M', 'George', 'Bush', 
'The 43rd President of the United States of America, George Walker Bush was born two days after the national holiday of the Fourth of July, 1946 in New Haven, Connecticut where his father was attending Yale College in the Class of 1949.');
INSERT INTO actors values ('M', 'Ben', 'Affleck',
'Benjamin Geza Affleck was born on August 15, 1972 in Berkeley, California, USA but raised in Cambridge, Massachusetts, USA. He was born to parents Tim Affleck, a social worker, who is now divorced from Bens mother Chris Affleck, a school teacher.');
INSERT INTO movie_cast VALUES (4,9);
INSERT INTO movie_cast VALUES (4,10);
INSERT INTO movie_cast VALUES (4,11);

/* The following command will cause the server to wait 5 seconds in order to be sure the server has committed the previous commands */
waitfor delay '0:0:5'


/* Good Will Hunting */
INSERT INTO movies VALUES (1, 1, 4, 2, 1997, 'Good Will Hunting',
'Will Hunting, a janitor at MIT, has a gift for mathematics but needs help from a psychologist to find direction in his life.',
 6, 3, .59, 9.99);
INSERT INTO actors values ('M', 'Robin', 'Williams', 
'Williams briefly studied political science before enrolling at Juilliard to study theatre. After he left Juilliard, he performed in night clubs where he was discovered for the role of Mork on an episode of Happy Days in 1974 and the subsequent Mork & Mindy TV series in 1978.');
INSERT INTO actors values ('M', 'Matt', 'Damon', 
'Matt Damon was born in 1970. His father, Kent Damon, a tax preparer, and his mother, Nancy Carlsson-Paige, a college professor, are now divorced.');
INSERT INTO movie_cast VALUES (5,12);
INSERT INTO movie_cast VALUES (5,13);
INSERT INTO movie_cast VALUES (5,11);
**/

/* After all data is inserted,  execute the following SELECT commands to review the data that has been inserted */
/* select to view movie data */
--SELECT movie_id, movie_title, movie_description, genre_code_description, condition_code_description, format_type_description, 
--store_name, release_year, number_in_stock, rental_daily_rate, sales_price 
--FROM movies, condition_codes, genre_codes, format_types, video_stores
--WHERE movies.condition_code = condition_codes.condition_code 
--AND   movies.format_Type_code = format_types.format_type_code 
--AND   movies.genre_type_code = genre_codes.genre_code
--AND   movies.store_id = video_stores.store_id;


--/* select to view the movie_cast data */
--SELECT movies.movie_title, actor_first_name+' '+actor_last_name AS NAME, other_actor_details
--FROM movie_cast, movies, actors
--WHERE movie_cast.movie_id = movies.movie_id
--AND   movie_cast.actor_id = actors.actor_id
--ORDER BY movie_title, actor_last_name;

/*  END OF SCRIPT */
