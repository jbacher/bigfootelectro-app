class Announcement {
  final DateTime timeSent;
  final String title;
  final String message;
  //isBold bool?
  Announcement(this.timeSent, this.title, this.message);
}

final List<Announcement> notifications = [
  _notification1,
  _notification2,
  _notification3,
  _notification4,
  _notification5
];

final Announcement _notification1 = Announcement(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Announcement _notification2 = Announcement(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Announcement _notification3 = Announcement(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Announcement _notification4 = Announcement(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic",
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Announcement _notification5 = Announcement(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "https://www.google.com"
);