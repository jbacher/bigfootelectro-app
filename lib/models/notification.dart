class Notification {
  final DateTime timeSent;
  final String title;
  final String message;
  //isBold bool?
  Notification(this.timeSent, this.title, this.message);
}

final List<Notification> notifications = [
  _notification1,
  _notification2,
  _notification3,
  _notification4,
  _notification5
];

final Notification _notification1 = Notification(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Notification _notification2 = Notification(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Notification _notification3 = Notification(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Notification _notification4 = Notification(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic",
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round, tenderloin short loin alcatra hamburger shank strip steak drumstick cow pig. Landjaeger meatball pork loin, ribeye short loin buffalo jerky boudin pork chop shoulder hamburger flank chislic. Beef alcatra pork loin beef ribs sausage ham kevin shoulder bacon ribeye landjaeger. Turkey fatback pork belly tail, frankfurter short ribs picanha ball tip drumstick tenderloin landjaeger swine buffalo."
);

final Notification _notification5 = Notification(
  DateTime.utc(2020, 1,2), 
  "Bacon ipsum dolor amet pancetta jowl meatball salami doner swine. T-bone bacon tri-tip ground round,", 
  "https://www.google.com"
);