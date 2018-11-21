// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

@JsonSerializable()
class Forecast {
  /// [required] The requested latitude.
  double latitude;

  /// [required] The requested longitude.
  double longitude;

  /**
   * [required] The IANA timezone name for the requested location. This is used 
   * for text summaries and for determining when hourly and daily data block 
   * objects begin.
   */
  String timezone;

  /**
   * [optional] A data point containing the current weather conditions at the 
   * requested location.
   */
  CurrentlyDataPoint currently;

  /**
   * [optional] A data block containing the weather conditions minute-by-minute 
   * for the next hour.
   */
  MinutelyDataBlock minutely;

  /**
   * [optional] A data block containing the weather conditions hour-by-hour for 
   * the next two days.
   */
  HourlyDataBlock hourly;

  /**
   * [optional] A data block containing the weather conditions day-by-day for 
   * the next week.
   */
  DailyDataBlock daily;

  Forecast();
  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
