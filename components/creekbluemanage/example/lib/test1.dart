void main() {
  List<Map<String, double>> data = [
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 13664, "pace": 43},
    {"speed": 7200, "pace": 378},
    {"speed": 7200, "pace": 340},
    {"speed": 3600, "pace": 515},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 7200, "pace": 378},
    {"speed": 10800, "pace": 311},
    {"speed": 3600, "pace": 505},
    {"speed": 7200, "pace": 471},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 10800, "pace": 316},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 13664, "pace": 45},
    {"speed": 7200, "pace": 378},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 3600, "pace": 694},
    {"speed": 3600, "pace": 694},
    {"speed": 3600, "pace": 641},
    {"speed": 3600, "pace": 595},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 1265},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 7200, "pace": 421},
    {"speed": 7200, "pace": 462},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 1388},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 3600, "pace": 694},
    {"speed": 3600, "pace": 694},
    {"speed": 3600, "pace": 632},
    {"speed": 3600, "pace": 537},
    {"speed": 3600, "pace": 657},
    {"speed": 3600, "pace": 641},
    {"speed": 3600, "pace": 649},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0},
    {"speed": 0, "pace": 0}
  ];

  double distancePerKilometer = 1000.0;

  // Function to calculate average speed and pace for a given range of data
  Map<String, double> calculateAverage(List<Map<String, double>> kilometerData) {
    double totalSpeed = 0;
    double totalTime = 0;
    int count = 0;

    for (var entry in kilometerData) {
      if (entry["speed"] != 0) {
        totalSpeed += entry["speed"]! / 1000;
        totalTime += entry["pace"]!; // Assuming pace is in seconds
        count++;
      }
    }

    if (count > 0) {
      double averageSpeed = totalSpeed / count;
      double averagePaceInMinutes = (totalTime / count) / 60.0; // Convert pace to minutes per kilometer
      return {"averageSpeed": averageSpeed, "averagePace": averagePaceInMinutes};
    } else {
      return {"averageSpeed": 0, "averagePace": 0};
    }
  }

  // Function to display the results for each kilometer
  void displayResults(int kilometerIndex, Map<String, double> averages) {
    print("Kilometer ${kilometerIndex + 1}:");
    print("Average Speed: ${averages["averageSpeed"]} km/h");
    print("Average Pace: ${averages["averagePace"]} min/km");
    print("");
  }

  // Iterate through the data by kilometer
  for (var i = 0; i < (data.length / (distancePerKilometer / 5)).ceil(); i++) {
    // Calculate start and end indices for the current kilometer
    int startIndex = i * (distancePerKilometer / 5).floor();
    int endIndex = (startIndex + (distancePerKilometer / 5).floor()).clamp(0, data.length);

    // Extract data for the current kilometer
    List<Map<String, double>> kilometerData = data.sublist(startIndex, endIndex);

    // Calculate and display the results for the kilometer
    Map<String, double> averages = calculateAverage(kilometerData);
    displayResults(i, averages);
  }
}
