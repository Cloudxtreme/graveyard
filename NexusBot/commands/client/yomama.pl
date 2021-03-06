# COMMAND NAME:
#	YOMAMA
# DESCRIPTION:
#	Recieve a random "Yo Mama!" joke.
# COMPATIBILITY:
#	FULLY COMPATIBLE

sub yomama {
	my ($self,$client,$msg,$listener) = @_;

	# Create our array of random Yo Mama! jokes.
	my @jokes = (
		"Yo mama's so big, that she climbed Mt. Fuji with one step!",
		"Yo mama's so big, her belly button's got an echo!",
		"Yo mama's so big, she can't wear an X jacket cause helicopters kept landing on her back!",
		"Yo mama's so big, she rollerskates on busses!",
		"Yo mama's so big, she thought Barnum \& Bailey were clothing designers!",
		"Yo mama's so big, she uses a jungle gym for a walker!",
		"Yo mama's so big, she uses bowling balls for earrings!",
		"Yo mama's so big, she uses the interstate for a Slip 'n Slide!",
		"Yo mama's so big, she whistles bass.",
		"Yo mama's so big, that they had to change 'One size fits all' to 'One size fits most!'",
		"Yo mama's so big, they had to paint a stripe down her back to see if she was walking or rolling!",
		"Yo mama's so big, when I fingered her I lost a watch and two rings!",
		"Yo mama's so big, when she bent down to tie her shoes, her face got burnt from re-entry!",
		"Yo mama's so big, when she goes in the water at the beach she changes the tide!",
		"Yo mama's so big, when she stands up the sun goes out!",
		"Yo mama's so big, when she went to the airport and said she wanted to fly they stamped Goodyear on her and sent her out to the runway!",
		"Yo mama's so big, when you climb on top of her your ears pop!",
		"Yo mama's so fat, when she turns around, people give her a welcome back party!",
		"Yo mama's so fat, she saw a yellow bus full of white kids and said 'STOP THAT TWINKIE!!'",
		"Yo mama's so fat, when she runs she makes the cd played skip, at the radio station!",
		"Yo mama's so fat, she went outside in a red dress and the neighborhood hollered HEY KOOL-AID!",
		"Yo mama's so fat, she jumped up in the air and got stuck!",
		"Yo mama's so fat, her waist size is equator!",
		"Yo mama's so fat, she went bungee jumping and went straight to Hell!",
		"Yo mama's so fat she's on both sides of the family!",
		"Yo mama's so fat, when she walks around in Texas in high heels she strikes oil!",
		"Yo mama's so fat, the last time she saw 90210 was on the scale!",
		"Yo mama's so fat, when God said 'Let there be light' he told her to move her fat ole butt over!",
		"Yo mama's so fat, she fell in love and broke it!",
		"Yo mama's so fat, when her beeper goes off people thought she was backing up!",
		"Yo mama's so fat, even Bill Gates couldn't pay for her liposuction!",
		"Yo mama's so fat, she wakes up in sections!",
		"Yo mama's so fat, when she goes to an amusement park, people try to ride HER!",
		"Yo mama's so fat, when she lies on the beach no one else gets sun!",
		"Yo mama's so fat, when she jumps up in the air she gets stuck!",
		"Yo mama's so fat, she's got more Chins than a Hong Kong phone book!",
		"Yo mama's so fat, she has a wooden leg with a kickstand!",
		"Yo mama's so fat, when she gets on the scale it says 'To be continued...'!",
		"Yo mama's so fat, her nickname is 'DAMN!'",
		"Yo mama's so fat, she eats Wheat Tricks.",
		"Yo mama's so fat, we're in her right now!",
		"Yo mama's so fat, people jog around HER for exercise!",
		"Yo mama's so fat, she went to the movies and sat next to everyone!",
		"Yo mama's so fat, she has been declared a natural habitat for Condors!",
		"Yo mama's so fat, you have to roll over twice to get off her!",
		"Yo mama's so fat, she was floating in the ocean and Spain clamed her for the new world!",
		"Yo mama's so fat, she lay on the beach and people run around yelling 'Free Willy!'",
		"Yo mama's so fat, when she has sex, she has to give directions!",
		"Yo mama's so fat, she goes to a restaurant, looks at the menu and says 'okay!'",
		"Yo mama's so fat, when she wears a yellow raincoat people yelled 'Taxi!'",
		"Yo mama's so fat, she has to go to Sea World to be baptized!",
		"Yo mama's so fat, she has to iron her pants on the driveway!",
		"Yo mama's so fat, I've known her all my life ... and I still haven't seen ALL of her!",
		"Yo mama's so fat, she puts on her libstick with a paint-roller!",
		"Yo mama's so fat, she has to pull down her pants to get into her pockets!",
		"Yo mama's so fat, when she tripped over on 4th Ave, she landed on 12th!",
		"Yo mama's so fat, when she bungee jumps she brings down the bridge too!",
		"Yo mama's so fat, the highway patrol made her wear 'Caution! Wide Turn!'",
		"Yo mama's so fat, when she sits around the house, she SITS AROUND THE HOUSE!",
		"Yo mama's so fat, when she steps on a scale it reads 'One at a time, please!'",
		"Yo mama's so fat, when she sits on my face I can't hear the stereo!",
		"Yo mama's so fat, her neck looks like a pair of hot dogs!",
		"Yo mama's so fat, she's got her own area code!",
		"Yo mama's so fat, she looks like she's smuggling a Volkswagon!",
		"Yo mama's so fat, God couldn't light Earth till she moved!",
		"Yo mama's so fat, NASA has to orbit a satellite around her!",
		"Yo mama's so fat, whenever she goes to the beach the tide comes in!",
		"Yo mama's so fat, when she plays hopscotch, she goes to New York, L.A., Chicago...",
		"Yo mama's so fat, she's got Amtrak written on her leg!",
		"Yo mama's so fat, her legs are like spoiled milk - white and chunky!",
		"Yo mama's so fat, I had to take a train and two buses just to get on the bitch's good side!",
		"Yo mama's so fat, she sat on a quarter and a booger shot out of George Washington's nose!",
		"Yo mama's so fat, she was mistaken for God's bowling ball!",
		"Yo mama's so fat, her senior pictures had to be aerial views!",
		"Yo mama's so fat, she fell and made the Grand Canyon!",
		"Yo mama's so fat she went to the beach and Greenpeace threw her in!",
		"Yo mama's so fat, that when she hauls ass, she has to make two trips!",
		"Yo mama's so fat, even her clothes have stretch marks!",
		"Yo mama's so fat, she has to use a VCR as a beeper!",
		"Yo mama's so fat, she uses a pillow case as a sock!",
		"Yo mama's so fat, she broke her leg and gravy poured out!",
		"Yo mama's so fat, when she rides in a hot air balloon it looks like she's wearing tights!",
		"Yo mama's so fat, she got hit by a parked car!",
		"Yo mama's so fat, they have to grease the bath tub to get her out!",
		"Yo mama's so fat, she fills up the tub THEN turns on the water!",
		"Yo mama's so fat, she has a run in her blue-jeans!",
		"Yo mama's so fat, her blood type is Ragu!",
		"Yo mama's so fat, they use the elastic in her underwear for bungee jumping!",
		"Yo mama's so fat, when they used her underwear elastic for bungee jumping, they hit the ground!",
		"Yo mama's so fat, she has to buy two airline tickets!",
		"Yo mama's so fat, when she fell over she rocked herself asleep trying to get again.",
		"Yo mama's so fat, when I tried to drive around her I ran out of gas!",
		"Yo mama's so fat, the animals at the zoo feed her!",
		"Yo mama's so fat, when she dances at a concert the whole band skips!",
		"Yo mama's so fat, she stands in two time zones!",
		"Yo mama's so fat, you have to grease the door frame and hold a twinkie on the other side just to get her through!",
		"Yo mama's so fat, when the bitch goes to an all-you-can-eat buffet, they have to install speed bumps!",
		"Yo mama's so fat, she can't tie her own shoes!",
		"Yo mama's so fat, she sets off car alarms when she runs!",
		"Yo mama's so fat, she can't reach her back pocket!",
		"Yo mama's so fat, she uses redwoods to pick her teeth!",
		"Yo mama's so fat, the only pictures you have of her are satellite photos!",
		"Yo mama's so fat, she put on some BVD's and by the time they reached her waist they spelled boulevard!",
		"Yo mama's so fat, she stepps on a rainbow and made Skittles!",
		"Yo mama's so fat, she uses a mattress for a tampon!",
		"Yo mama's so fat, she hoola-hooped the Super Bowl!",
		"Yo mama's so fat, they tie a rope around her shoulders and drag her through a tunnel when they want to clean it!",
		"Yo mama's so fat, when she got hit by a bus she said 'Who threw that rock?'",
		"Yo mama's so fat, when she stands in a left-turn lane it gives her the green arrow!",
		"Yo mama's so fat, that when she was born she gave the hospital stretch marks!",
		"Yo mama's so fat, the National Weather Agency has to assign names to her farts!",
		"Yo mama's so fat, we went to the drive-in and didn't have to pay because we dressed her as a Chevrolet!",
		"Yo mama's so fat, she was Miss Arizona -- class Battleship!",
		"Yo mama's so fat, she accidentally got a 747 caught in her teeth!",
		"Yo mama's so fat, to her 'light food' means under 4 Tons!",
		"Yo mama's so fat, she went on a date with high heels and came back with sandals!",
		"Yo mama's so fat and stupid, her waist size is larger than her IQ!",
		"Yo mama's so fat she was zoned for commercial development!",
		"Yo mama's so fat she won 'Miss Bessie the Cow 94'!",
		"Yo mama's so fat, she has her own brand of jeans: FA - FatAss Jeans!",
		"Yo mama's so stupid, she studied for a drug test!",
		"Yo mama's so stupid, she thought 'Wu Tang' was an African orange drink!",
		"Yo mama's so stupid, she hears it's chilly outside so she gets a bowl!",
		"Yo mama's so stupid, she got locked in a grocery store and starved!",
		"Yo mama's so stupid she tried to put M\&M's in alphabetical order!",
		"Yo mama's so stupid she could trip over a cordless phone!",
		"Yo mama's so stupid she sold her car for gas money!",
		"Yo mama's so stupid she bought a solar-powered flashlight!",
		"Yo mama's so stupid she things a quarterback is a refund!",
		"Yo mama's so stupid she took a ruler to bed to see how long she slept.",
		"Yo mama's so stupid when she read on her job application to not write below the dotted line she put 'O.K.'",
		"Yo mama's so stupid she stole free bread!",
		"Yo mama's so stupid she makes Beavis and Butthead look like Nobel Prize winners!",
		"Yo mama's so stupid she sits on the TV, and watches the couch!",
		"Yo mama's so stupid she bought a videocamera to record cable TV shows at home!",
		"Yo mama's so stupid she took an umbrella to see Purple Rain!",
		"Yo mama's so stupid it took her 2 hours to watch 60 minutes!",
		"Yo mama's so stupid when she saw the NC-17 (under 17 not admitted) sign, she went home and got 16 friends!",
		"Yo mama's so stupid she told everyone that she was 'illegitiment' because she couldn't read!"<
		"Yo mama's so stupid she puts lipstick on her head just to make up her mind!",
		"Yo mama's so stupid you have to dig for her IQ!",
		"Yo mama's so stupid she took a cup to see Juice!",
		"Yo mama's so stupid she asked you 'What is the number for 911?'",
		"Yo mama's so stupid she got stabbed in a shoot out!",
		"Yo mama's so stupid she took a spoon to the Super Bowl!",
		"Yo mama's so stupid she called Dan Quayle for a spell check!",
		"Yo mama's so stupid she stepped on a crack and broke her own back!",
		"Yo mama's so stupid she thought she needed a token to get on Soul Train!",
		"Yo mama's so stupid when asked on an application, 'Sex?', the marked, 'M, F, and sometimes Wednesday too.'!",
		"Yo mama's so stupid she took the Pepsi challenge and chose Jif.",
		"Yo mama's so stupid when you stand next to her you hear the ocean!",
		"Yo mama's so stupid she things Fleetwood Mac is a new hamburger at McDonalds!",
		"Yo mama's so stupid she sits on the TV, and watches the couch!",
		"Yo mama's so stupid she thought Boyz II Men was a day care center!",
		"Yo mama's so stupid she went to take the 44 bus, she took the 22 twice instead!",
		"Yo mama's so stupid she jumped out the window and went up!",
		"Yo mama's so stupid that under 'Education' on her job application she put 'Hooked on Phonics'",
		"Yo mama's so stupid she put out the cigarette butt that was heating your house!",
		"Yo mama's so stupid she watches The Three Stooges and takes notes!",
		"Yo mama's so stupid she was born on Independence Day and can't remember her birthday!",
		"Yo mama's so stupid she thought gangrene was another golf course!",
		"Yo mama's so stupid she went to a Clippers game to get a hair cut!",
		"Yo mama's so stupid she couldn't read an audio book!",
		"Yo mama's so stupid it takes her a month to get rid of the 7 day itch!",
		"Yo mama's so stupid she stands on an empty bus!",
		"Yo mama's so stupid it took her a week to get rid of a 24hr virus!",
		"Yo mama's so stupid it took her a day to cook a 3 minute egg!",
		"Yo mama's so stupid she has to ask for help to use hamburger helper!",
		"Yo mama's so stupid she went to Disney World and saw a sign that said 'Disney World Left' so she went home!",
		"Yo mama's so stupid she asked me what kind of jeans I had on and I said 'Guess' so she said 'Levi's.'",
		"Yo mama's so poor she bounces food stamps!",
		"Yo mama's so poor she can't afford to live in a two story Cheerio box!",
		"Yo mama's so poor she can't afford to pay attention!",
		"Yo mama's so poor, when I ring the doorbell I hear the toilet flush!",
		"Yo mama's so poor she went to McDonald's and put a milkshake on layaway!",
		"Yo mama's so poor your family ate cereal with a fork to save milk!",
		"Yo mama's so poor burglars break in her house and leave money!",
		"Yo mama's so poor she can't afford the O or the R!",
		"Yo mama's so poor when I saw her kicking a can down the street, I asked her what she was doing and she said 'Moving'.",
		"Yo mama's so poor when she goes to KFC, she has to lick other people's fingers!",
		"Yo mama's so poor when I ring the doorbell she says, 'Ding!'",
		"Yo mama's so poor her face is on the front of a food stamp!",
		"Yo mama's so poor when she heard about the last supper she thought she had run out of food stamps!",
		"Yo mama's so poor she was in K-Mart with a box of Hefty bags. I said, 'what ya doin'?', she said 'Buying luggage.'",
		"Yo mama's so poor she drives a peanut!",
		"Yo mama's so poor she waves around a popsicle stick and calls it air conditioning!",
		"Yo mama's so poor you go out for Sunday pushes of the skateboard",
		"Do you know the story about the little old woman that lives in a shoe? Well, yo mama so poor she lives in a flip flop!",
		"Yo mama's so poor she does drive by shootings on the bus.",
		"Yo mama's so poor you put RoundUp on the weeds and she said, 'There goes breakfast, lunch, and dinner!'",
		"Yo mama's so poor you asked her where the facilities were and she sad, 'Pick a corner, any corner!'",
		"Yo mama's so poor I walked into your house and 3 roaches tripped me and tried to take my wallet!",
		"Yo mama's so poor I opened her front door and ended up in the back yard!",
	);

	# Count the jokes?
	my $count_jokes = 1;

	if ($count_jokes) {
		my $count = 0;
		foreach $item (@jokes) {
			$count++;
		}
		print "\n\nThere are $count Yo Mama jokes.\n\n";
	}

	# Return a random joke.
	$reply = $jokes [ int(rand(scalar(@jokes))) ];

	return $reply;
}
1;