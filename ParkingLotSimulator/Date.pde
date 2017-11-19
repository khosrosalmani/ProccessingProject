class Date {
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;

  Date(int d, int h, int m, boolean beforeNoon) {
    this.today = d%7;
    this.hour = h%12;
    this.minute = m%60;
    this.before_noon = beforeNoon;

    if (hour==0 && !before_noon)
      hour=12;
  }

  Date(Date d) {
    this.today = d.today%7;
    this.hour = d.hour%12;
    this.minute = d.minute%60;
    this.before_noon = d.before_noon;

    if (hour==0 && !before_noon)
      hour=12;
  }

  void addHour() {
    this.hour++;
    if (hour==12 && this.before_noon) {
      this.before_noon= false;
    } else if (hour == 12 && !before_noon) {
      hour = 0;
      before_noon = true;
      today=(today++)%7;
    } else if (hour == 13) {
      hour = 1;
    }
  }

  void addMminute() {
    minute++;
    if (minute == 60) {
      minute = 0;
      addHour();
    }
  }

  String toString() {
    String date = days[today];

    if (hour<10)
      date += " 0" + hour;
    else
      date += " " + hour;

    if (minute<10)
      date += ":0" + hour;
    else
      date += ":" + hour;

    if (before_noon)
      date+= "AM";
    else
      date += "PM";

    return date;
  }

  boolean equal (Date date) {
    if (this.today == date.today && this.hour == date.hour && this.minute == date.minute && this.before_noon == date.before_noon)
      return true;
    else
      return false;
  }
}