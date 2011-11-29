// Visual style for Symbian
import QtQuick 1.1

Item {
    // General
    property string defaultFontFamily: "Helvetica"  // Defaults to correct ones in device
    property int defaultFontSize: 14
    property color defaultFontColor: "#45291a"
    property color defaultFontColorLink: "#7c0505"
    property color defaultFontColorButton: "#ffffff"
    property color defaultBackgroundColor: "#d9d3b5"
    property double margins: 4
    property int spacing: 8
    property int defaultItemHeight: 48

    property int scrollBarWidth: 8
    property string callButtonSource: "content/call_button.png"
    property string wwwButtonSource: "content/www_button.png"
    property string titleImageSource: "content/title.png"
    property string cancelButtonSource: "content/cancel_button.png"
    property string bookingIconSource: "content/booking_icon.png"
    property string backgroundImageSource: "content/background.jpg"
    property string foodTeaserSource: "content/food_teaser.png"

    // Title bar
    property int titleFontSize: 36
    property color titleFontColor: "#ffffff"
    property color titleBackgroundColor: "#7c0505"

    property string captionFontFamily: defaultFontFamily
    property int captionFontSize: 8
    property color captionFontColor: "#ffffff"
    property color captionBackgroundColor: "#770d0f"

    property string exitButtonSource: "content/exit_button.png"
    property string backButtonSource: "content/back_button.png"

    // Tab bar
    property string tabBarButtonFont: defaultFontFamily
    property int tabBarButtonFontSize: 10
    property color tabBarButtonFontColor: "#ffffff"

    property string infoButtonSource: "content/info_button.png"
    property string menuButtonSource: "content/menu_button.png"
    property string mapButtonSource: "content/map_button.png"
    property string bookingButtonSource: "content/booking_button.png"

    // Info view
    property int infoViewReservationFontSize: 14
    property int infoViewAddressFontSize: 18
    property int infoViewFontSize: 18
    
    // Menu grid view
    property int menuGridViewFontSize: 10

    // Menu list view
    property color menuListViewBackgroundColor: "#f9f6f6"
    property color menuListViewDishTitleFontColor: "#7c0505"
    property color menuListViewDishFontColor: defaultFontColor
    property int menuListViewTitleSize: 12
    property int menuListTitleFontSize: 8
    property int menuListItemFontSize: 6

    // Map view
    property string zoomiInSource: "content/zoom_in.png"
    property string zoomiOutSource: "content/zoom_out.png"
    property int infoFontSize: 10

    // Booking view
    property int bookingViewFontSize: 20
}
