# Web.Maps.VE Changelog

version vNext - Coming Soon / Work in Progress

- Refactored to support Bing Maps v8 JavaScript Control
- Requires ASP.NET 4.5 or newer
- Breaking Changes:
    - Added
        - Map.Branch property - adds support for Release, Experimental and Frozen branches
        - Map.NavigationBarMode property
        - Map.MapType property and related events, properties, etc
    - Removed
        - Pan methods and events
        - 3D map support along with Pitch, Heading and Altitude properties, Bing Maps hasn't supported this in Years.
        - Map.MapMode property
        - Map.OnInitMode event
        - Map.OnModeNotAvailable event
        - Map.ShowDashboard property and associated ShowDashboard and HideDashboard Ajax methods
        - Map.UseVirtualEarthStagingUrl property
        - Map.oncredentialserror event
        - Map.oncredentialsvalid event
        - Map.MapStyle property and related events, properties, etc
        - Removed BirdseyeOrientation property
        - All Traffic functionality
        - SetDefaultInfoBoxStyles, CustomInfoBoxStylesEnabled, and ClearInfoBoxStyles
        - OnTokenExpire, OnTokenError
        - Map.Resize
        - Removed Map Types: Hybrid, Oblique, Shaded
        - Oblique map events and properties
        - Birdseye map events and properties
    - Disabled / Work in Progress
        - GetMapView method in JavaScript
        - DistanceUnit in JavaScript
        - Get ShapeLayers and Shapes to postback


version 4.0 - Released Apr 25, 2014

- First Open Source Release

version 3.0 - Released Jan 24, 2010

version 2.0 - Released May 19, 2009

version 1.0 - Released Oct, 2007

- Original release of the commercial Simplovation Web.Maps.VE control
- [Web.Maps.VE v1.0 Getting Started Tutorial Video](https://www.youtube.com/watch?v=eeIUUUJ_OMA) - This video is still relavent to getting started with the control.