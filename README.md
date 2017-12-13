# DarkSkyWeather
The DarkSkyWeather application displays Current Forecast, Wind speed, sunrise, sunset, following with next week days High and Low temperature and respective weather summary.

How to run

•    The application is designed and developed using Xcode 9.2 and Swift 4 version.
•    Please use .xcworkspace to build and run the application
•    If you are running with simulator, Please configure your location by going to Simulator -> Debug -> Location with custom or Apple other than None before you run the application.
•    Please do, pod install or pod update if you see any errors, so make sure we get the latest version of the pods.

Implementation

•    Followed MVC Architecture to structure the project
•    Using the documentation of the API at Dark Sky API, determined what information can be displayed. Using this information, set up the Storyboard with single view which have UILabels and Table View to display weather information
•    Used URLSession API to make asynchronous network calls to get the response from Dark Sky API
•    I have implemented CoreData to persist weather data into Entities. As a backup, Each time when API response is successful, a record will be created in core data.
•    Used MBProgessHUD cocoa pod (Dependency Manager) to display an indicator.
•    As a secondary API, I have used Open Weather API to complement with Dark Sky API to display wind speed, sunrise and sunset

