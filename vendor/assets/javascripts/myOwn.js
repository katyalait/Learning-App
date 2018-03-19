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
