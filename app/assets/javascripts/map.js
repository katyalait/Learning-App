
// necessary variables
var map;
var infoWindow;

// markersData variable stores the information necessary to each marker
var markersData = [
    {
        lat: 53.33935213,
        lng: -6.27275515,
        name: "1",
        date: "10/12/2018",
        time: "15:00"
    },
    {
        lat: 53.34288805,
        lng: -6.25224162,
        name: "2",
        date: "18/12/2018",
        time: "12:00"
    },
    {
        lat: 53.33719969,
        lng: -6.25284243,
        name: "3",
        date: "28/12/2018",
        time: "10:00"
    }, 
    {
        lat: 53.34611624,
        lng: -6.26812029,
        name: "4",
        date: "09/01/2018",
        time: "22:00"
    },
    {
        lat: 53.34206815,
        lng: -6.26297045,
        name: "5",
        date: "12/01/2018",
        time: "11:00"
    }
];


function initialize() {
    var mapOptions = {
        center: new google.maps.LatLng(53.3498053, -6.2603097),
        zoom: 9,
        mapTypeId: 'roadmap',
    };

    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    // a new Info Window is created
    infoWindow = new google.maps.InfoWindow();

    // Event that closes the Info Window with a click on the map
    google.maps.event.addListener(map, 'click', function () {
        infoWindow.close();
    });

    // Finally displayMarkers() function is called to begin the markers creation
    displayMarkers();
}
google.maps.event.addDomListener(window, 'load', initialize);


// This function will iterate over markersData array
// creating markers with createMarker function
function displayMarkers() {

    // this variable sets the map bounds according to markers position
    var bounds = new google.maps.LatLngBounds();

    // for loop traverses markersData array calling createMarker function for each marker 
    for (var i = 0; i < markersData.length; i++) {

        var latlng = new google.maps.LatLng(markersData[i].lat, markersData[i].lng);
        var name = markersData[i].name;
        var date = markersData[i].date;
        var time = markersData[i].time;

        createMarker(latlng, name, date, time);

        // marker position is added to bounds variable
        bounds.extend(latlng);
    }

    // Finally the bounds variable is used to set the map bounds
    // with fitBounds() function
    map.fitBounds(bounds);
}

// This function creates each marker and it sets their Info Window content
function createMarker(latlng, name, date, time) {
    var marker = new google.maps.Marker({
        map: map,
        position: latlng,
        title: name
    });

    // This event expects a click on a marker
    // When this event is fired the Info Window content is created
    // and the Info Window is opened.
    google.maps.event.addListener(marker, 'click', function () {

        // Creating the content to be inserted in the infowindow
        var iwContent = '<div id="iw_container">' +
            '<div class="iw_title">' + name + '</div>' +
            '<div class="iw_content">' + date + '<br />' +
            time + '<br />' +'</div></div>';

        // including content to the Info Window.
        infoWindow.setContent(iwContent);

        // opening the Info Window in the current map and at the current marker location.
        infoWindow.open(map, marker);
    });
}