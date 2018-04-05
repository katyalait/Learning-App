$(function() {

    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            day: '2018-02-06',
            Whatsapp: 69,
            Snapchat: null,
            Messenger: 27,
            Kindle: 24
        }, {
                day: '2018-02-07',
            Whatsapp: 78,
            Snapchat: 22,
            Messenger: 41,
            Kindle: 47
        }, {
                day: '2018-02-08',
            Whatsapp: 12,
            Snapchat: 19,
            Messenger: 101,
            Kindle: 52
        }, {
                day: '2018-02-09',
            Whatsapp: 67,
            Snapchat: 37,
            Messenger: 89,
            Kindle: 69
        }, {
                day: '2018-02-10',
            Whatsapp: 60,
            Snapchat: 19,
            Messenger: 22,
            Kindle: 78
        }, {
                day: '2018-02-11',
            Whatsapp: 56,
            Snapchat: 42,
            Messenger: 18,
            Kindle: 93
        }, {
                day: '2018-02-12',
            Whatsapp: 48,
            Snapchat: 39,
            Messenger: 18,
            Kindle: 120
        }],
        xkey: 'day',
        ykeys: ['Whatsapp', 'Snapchat', 'Messenger', 'Kindle'],
        labels: ['Whatsapp', 'Snapchat', 'Messenger', 'Kindle'],
        pointSize: 6,
        hideHover: 'auto',
        parseTime: false,
        resize: true,
        fillOpacity: 0.0,
        lineWidth: 7,
        behaveLikeLine: true

    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Cafe",
            value: 10
        }, {
            label: "Home",
            value: 13
        }, {
            label: "Library",
            value: 9
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });
    
});
// JavaScript source code

//---------------------------------------------------------------------------
//Flot Pie Chart
$(function() {

    var data = [{
        label: "Facebook",
        data: 1000
    }, {
        label: "Snapchat",
        data: 800
    }, {
        label: "Twitter",
        data: 500
    }, {
        label: "Safari",
        data: 350
    }, {
        label: "Clock",
        data: 750
    }];

    var plotObj = $.plot($("#flot-pie-chart-appOverview"), data, {
        series: {
            pie: {
                show: true
            }
        },
        grid: {
            hoverable: true
        },
        tooltip: true,
        tooltipOpts: {
            content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
            shifts: {
                x: 20,
                y: 0
            },
            defaultTheme: false
        }
    });

});

//Flot Bar Chart

$(function() {

    var barOptions = {
        series: {
            bars: {
                show: true,
                barWidth: 43200000
            }
        },
        xaxis: {
            mode: "time",
            timeformat: "%m/%d",
            minTickSize: [1, "day"]
        },
        grid: {
            hoverable: true
        },
        legend: {
            show: true
        },
        //tooltip: true,
        //tooltipOpts: {
          //  content: "x: %x, y: %y"
        //}
    };
    var barData = {
        label: "Hours",
        data: [
            [1518269887000, 1.5],
            [1518442687000, 0.4],
            [1518529087000, 0.25],
            [1518615487000, 1],
            [1518701887000, 0.5],
            [1518788287000, 0.75]
        ]
    };
    $.plot($("#flot-bar-chart-appOverview"), [barData], barOptions);

});
//---------------------------------------------------------------------------
