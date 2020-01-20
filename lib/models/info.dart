class QuestionAnswer {
  final String question;
  final String answer;
  QuestionAnswer(this.question, this.answer);
}

final List<QuestionAnswer> faqs = [
  QuestionAnswer(_zipLineQuestion, _zipLineAnswer),
  QuestionAnswer(_volunteerQuestion, _volunteerAnswer),
  QuestionAnswer(_prohibitedQuestion, _prohibitedAnswer),
  QuestionAnswer(_ageQuestion, _ageAnswer),
  QuestionAnswer(_reentryQuestion, _reentryAnswer),
  QuestionAnswer(_iceQuestion, _iceAnswer),
  QuestionAnswer(_serviceAnimalQuestion, _serviceAnimalAnswer), //don't forget about the link
  QuestionAnswer(_showerQuestion, _showerAnswer),
  QuestionAnswer(_rvQuestion, _rvAnswer),
  QuestionAnswer(_campingQuestion, _campingAnswer),
  QuestionAnswer(_wristbandQuestion, _wristbandAnswer),
  QuestionAnswer(_adaQustion, _adaAnswer),
  QuestionAnswer(_farQuestion, _farAnswer),
  QuestionAnswer(_addressQuestion, _addressAnswer),
  QuestionAnswer(_foodQuestion, _foodAnswer),
  QuestionAnswer(_weatherQuestion, _weatherAnswer),
  QuestionAnswer(_dietaryQuestion, _dietaryAnswer),
  QuestionAnswer(_bagsQuestion, _bagsAnswer)
];


final String _zipLineQuestion = "ZIP LINE? SWIMMING? HIKING?";
final String _zipLineAnswer = ''' Yes. Yes. Yes! The sky is the limit at Bigfoot Electro. Our world-class tree canopy tour and outdoor adventure park features cutting-edge amenities. With over 500 acres of forests, fields, and trails atop the Cumberland Plateau, you’re sure to find something for everyone at Bigfoot Electro.

Thrill-seekers love our zipline attractions. We have eight exhilarating lines, including a double line where 2 people can race to the finish! Half of the ziplines soar over beautiful ponds, including Bigfoot Pond.

Enjoy competition? Challenge your friends and family to a game of disc golf! Our 9-hole disc golf course takes you on a wild trip through our expansive grounds. There’s even a chapel where you can get married!
''';

final String _volunteerQuestion = "HOW CAN I VOLUNTEER?";
final String _volunteerAnswer = ''' Bigfoot Electro offers all patrons the opportunity to get involved in the event. We are looking to open the land to people who wish to give back to the community. If this sounds like you – read on…

Would you like to volunteer by organizing a theme camp, a class or some other kind of undertaking? Examples of acceptable ideas for an activity may include morning yoga, a fireside chat about a particular topic, a sober camp, a song writing seminar,  guitar lessons, and more. If you would like to host a seminar, a workshop, a talk, or some other ‘flavor’ of a group activity… Get in touch!

Alternatively, we will be needing approximately 50 people to join various volunteers crews (i.e., parking, arrival gate, trash pickup). If you’d like to help, contact us now while there are still spots left!
''';

final String _prohibitedQuestion = "PROHIBITED ITEMS?";
final String _prohibitedAnswer = ''' All prohibited items will be confiscated:

– No glass (people walk barefoot here).
– No pets (see our service animal policy here).
– No megaphones or any other un-approved sound amplifying equipment (we ask “renegade” stages to coordinate their appearance).
– No professional audio, photo or video recording equipment (authorized media team members must have a valid permit).
– No drones.
– No stickers, flyers, markers or spray paint.
– No laser pointers.
– No weapons of any kind.
– No illegal substances, drugs or drug paraphernalia.
– No off-prem firewood.
– No squirt guns or water guns.
''';

final String _ageQuestion = 'MINIMUM AGE TO ATTEND?';
final String _ageAnswer = '18+. Patrons must bring a state-issued ID and fill out a waiver upon entry.';

final String _reentryQuestion = 'RE-ENTRY?';
final String _reentryAnswer = 'Allowed. All vehicles will get 1 free re-entry, then there will be a fee of \$5 per re-entry.';

final String _iceQuestion = 'ICE & FIREWOOD?';
final String _iceAnswer = 'Yes. Both ice and firewood can be purchased on-site.';

final String _serviceAnimalQuestion = 'SERVICE ANIMALS?';
final String _serviceAnimalAnswer = 'Yes. Click here to read our service animal policy';
final String _serviceAnimalLink = 'https://bigfootelectro.com/ada-service-animal-policy/';

final String _showerQuestion = 'SHOWERS / BATHROOMS?';
final String _showerAnswer = 'Yes. We have an on-site bath house with bathroom stalls. In addition, you’ll see porta-potties throughout the venue. We encourage patrons to bring a portable water shower to avoid having to wait in line.';

final String _rvQuestion = 'CAN I BRING AN RV?';
final String _rvAnswer = 'Yes. This option is available as an add-on. Please note, due to the limited supply of our on-site RV hookups, fewer than 10 RV camping spots remain.';

final String _campingQuestion = 'IS CAMPING REQUIRED?';
final String _campingAnswer = 'No. All admission tickets to the festival include complimentary camping. Whether you choose to camp is purely up to you! Some patrons prefer to stay at a hotel or at their houses if they live close by.';

final String _wristbandQuestion = 'WILL WRISTBANDS BE MAILED?';
final String _wristbandAnswer = 'No. Patrons will receive their admissions wristbands at the gate upon completing the waiver during arrival.';

//ada questin, how far question, address, food, weather, dietary, bags
final String _adaQustion = 'ADA & ACCOMODATIONS?';
final String _adaAnswer = 'Our helpful staff will help escort you from your vehicle to the main area. For persons with mobile disabilities, we recommend on-site camping which will give you close proximity between your vehicle and camp site. Vehicles with a handicapped placard will be exempt from the \$5 re-entry fee.';

final String _farQuestion = 'HOW FAR IS IT?';
final String _farAnswer = '''Conveniently located in Grundy County, this festival is:

– 1.5 hours from Nashville TN and Huntsville AL;

– 2.5 hours from Atlanta, GA and Knoxville TN;

– 3 hours from Knoxville TN and Hoover AL;

– 4 hours from Birmingham AL and Louisville KY;

– 4.5 hours from Memphis TN and Asheville, NC;

– 6 hours from Charlotte NC and St. Louis MO.
''';

final String _addressQuestion = "WHAT'S THE ADDRESS?";
final String _addressAnswer = '''518 Brawley Rd, Tracy City, TN 37387.

You’ll see signs for Bigfoot Adventure on approach.  The GPS will take you directly to the front gates.
''';

final String _foodQuestion = 'CAN I BRING IN FOOD?';
final String _foodAnswer = 'Please note, you don’t have to pack food because we’ll have food trucks inside the festival.  Small snacks are never a bad idea!  We recommend packing some non-perishable whole foods (nuts, breakfast cereal bars) as well as fresh & canned fruits so you can stay nourished all through the festival.  Car camping patrons are welcome to keep a cooking stove at their car.  You can get delicious breakfast, lunch and dinner on site; cooking stoves are only allowed inside the festival for patrons with RVs.';

final String _weatherQuestion = 'INCLEMENT WEATHER?';
final String _weatherAnswer = 'The Farm works diligently to make sure that the event is open & safe for patrons. We always advise patrons to come prepared for rain and cold; please stay aware of the forecast in the run-up to the event and plan accordingly. Bigfoot is well-equipped to handle a wide variety of weather patterns. Your safety is our number one priority. In the rare case of severe and/or dangerous weather conditions, such as lightning, heavy rains, storms, or strong wind, our staff will follow standard protocols to make sure the party never ends. We ask patrons to please be sure to listen to any updates from Bigfoot staff regarding your safety. Because this event is considered RAIN or SHINE, no refunds will be given due to inclement weather.';

final String _dietaryQuestion = 'DIETARY RESTRICTIONS?';
final String _dietaryAnswer = 'We will be offering an assortment of food options on-site.  Our delicious food truck partners will include vegetarian and vegan options.  Please take personal responsibility in informing our food vendors of any food allergies that you may have.';

final String _bagsQuestion = 'BAGS, BACKPACKS, & PURSES?';
final String _bagsAnswer = '''Bags & backpacks – We are allowing bags & backpacks, which will be subject to search at the gate.
Bottles – No glass bottles allowed. You may bring in sealed water containers (jugs, plastic bottles, metal hydroflasks, etc). Hydro backpacks are allowed.
''';