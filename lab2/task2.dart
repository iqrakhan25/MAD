import 'dart:async';
import 'dart:math';

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));
  
  // Simulating API success or failure
  if (Random().nextBool()) {
    return 'Weather: Sunny, 25°C';
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  print('Fetching weather data...');
  
  try {
    String weather = await fetchWeatherData();
    print('Weather Data: $weather');
  } catch (e) {
    print('Error: $e');
  }
}

