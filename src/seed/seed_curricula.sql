TRUNCATE users, courses, blurbs RESTART IDENTITY CASCADE;

INSERT INTO users 
  (
    password, 
    first_name, 
    last_name, 
    email, 
    location, 
    website, 
    created_at, 
    followers_count, 
    following_count
  )
  VALUES
    ('password', 'Mary', 'Ruefle', 'mruefle@hetnah.hah', 'Columbia, Vermont', 'maryruefle.io', '9/9/2019', 56, 98),
    ('wordpass', 'Don', 'DeLillo', 'libra@pointomega.bop', 'New York, New York', 'penguinpublishing.com', '9/9/1999', 78, 63),
    ('lastword', 'Rachel', 'Cusk', 'outline@transit.bop', 'London, United Kingdom', 'outlinetransit.kudos', '2/17/2004', 34, 109),
    ('wordlast', 'Ali', 'Smith', 'spring@howtobeboth.bop', 'London, United Kingdom', 'artandwords.com', '11/14/2002', 125, 98),
    ('firstword', 'Michael', 'Chabon', 'kavalier@adventure.klay', 'San Fransisco, California', 'yiddishpoliceman.com', '4/11/2018', 90, 34),
    ('wordfirst', 'Michael', 'Martone', 'four@four.four', 'Tuscaloosa, Alabama', 'eatatthe5.io', '7/16/2017', 89, 65),
    ('wordword', 'David', 'Wallace', 'jest@brief.king', 'Baltimore, Maryland', 'oblivion.io', '8/5/2009', 5, 39),;


INSERT INTO courses
  (title, description, notes, readings, duration, topic, created_at)
  VALUES
  ('Fiction After the Fall', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Geek Love, White Teeth, My Brilliant Friend, The Crying of Lot 49',
  16, 'Writing', '10/2/2018'),
  ('Traveling While Pausing', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Rusty Brown, GhostWorld, This American Life',
  16, 'Writing', '1/02/2018'),
  ('Indiana as Universe', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Four for a Quarter, Safety Patrol, Memoranda, Winesburg',
  16, 'Writing', '5/8/2019'),
  ('The Body as Thought', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Philosophy, The Noontime Demon, Illness as Metaphor',
  32, 'Politics', '3/9/2017'),
  ('Baseball in Film', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Pafko at the Wall, The Sportswriter, The Art of Fielding',
  32, 'Film', '12/17/2019'),
  ('Artful Sentences', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Verbs, Nouns, Adjectives, Adverbs, Interjections, Whatever'
  16, 'Writing', '5/18/2019'),
  ('Jigsaw Method', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Teaching as Literature, Ways of Reading, Woe is I, The STory of the Student',
  16, 'Teaching', '6/14/2018'),
  ('Debate Logic', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'YouTube links',
  16, 'Politics', '11/08/2019'),
  ('The Fly and The Thing', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'Horror in Isolation, The Monsters Abound, A Study of Film History, Survey of Horror',
  32, 'Film', '3/7/2017'),
  ('Cardi B and Crime', 'The second in a two-course sequence, English 102 introduces formal argumentation and college-level research methods, including synthesis of sources and citation formats. The course also reinforces and further develops the writing and reading skills learned in English 101',
  'Use in the classroom to discuss segmented narratives. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum)',
  'None',
  32, 'Pop Culture', '10/3/2019');

  INSERT INTO blurbs
  (content, created_at)
  VALUES
  ('Has anyone read the new CHris Ware?', '09/24/2019'),
  ('Im looking for ideas on incorporating film into English instruction', '9/21/2019'),
  ('Testing testing 123', '07/19/2019'),
  ('The idea is to use your secret idiosyncratic strength, just exploit the hell out of it, make of it a life, a synthetic reality', '09/12/2019'),
  ('The secret is to have the courage to live. If you have that, everything will sooner or later change', '09/06/2019'),
  ('James Salter said I would like to fit your hand like a favorite soap, so there.', '10/01/2019'),
  ('How can we imagine what our lives should be without the illumination of the lives of others?', '09/10/2019'),
  ('This frail engine, we think, and yet what murder is needed to take it down.', '09/11/2019'),
  ('Never be deceived that the rich will allow you to vote away their wealth.', '09/02/2019'),
  ('Writers must oppose systems. Its important to write against power, corporations, the state, and the whole system of consumption and of debilitating entertainments... I think writers, by nature, must oppose things, oppose whatever power tries to impose on us.', '09/12/2019'),
  ('Tech companies transformation of individuals into data sets has effectively moneyballed the entirety of human social reality.', '09/23/2019');
