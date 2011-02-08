import Qt 4.7
Rectangle {
    id: reel
    //property alias index: path.currentIndex
    property alias interactive: path.interactive
    property int index: 0
    property bool moving: false
    property ListModel model    
    property Component delegate    
    property int itemsShown: 4
    property bool autoClose: true
    width: 100
    height: 100
    color: "transparent"
    clip: true
    onIndexChanged: path.currentIndex = reel.index/*; selectIndex()

    //TODO: figure out a way to access the enabled property on pathView instance
    function selectIndex() {
        var str = path.model.get(index).enabled ? "enabled" : "disabled";
        console.log("item " + path.model.get(index).number+" "+str+" "+path.model.get(index).enabled)

        if(path.model.get(index).enabled) {
            var checks = path.model.count/2+1;
            var last = path.model.count-1;
            for(var i = 1; i <= checks; i++) {
                if(path.model.get((index+i)%last).enabled) {
                    reel.index = (index+i)%last;
                    console.log("corrected up");
                    break;
                } else if (model.get((last+index-i)%last).enabled) {
                    reel.index = (last+index-i)%last;
                    console.log("corrected down");
                    break;
                }
            }
        }
    }*/

    PathView {
        id: path
        width: parent.width
        height: (pathItemCount-1)*parent.height
        pathItemCount: parent.itemsShown+1
        clip: true
        anchors.centerIn: parent
        model: parent.model
        delegate: Loader {
            id: item
            sourceComponent: reel.delegate
            MouseArea {
                anchors.fill: parent
                onClicked: {path.currentIndex = index;
                            reel.clip = true;
                            reel.index = path.currentIndex;}
            }
        }
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        highlightRangeMode: PathView.StrictlyEnforceRange
        focus: true

        path: Path {
            startX: path.x+path.width/2; startY: 1-reel.height/2
            PathLine {x: path.x+path.width/2; y: path.height+reel.height/2}
        }
        onMovementStarted: {reel.moving = true; clippingTimer.stop(); reel.clip = false}
        onMovementEnded: {            
            if(reel.autoClose) {
                clippingTimer.interval = 2000;
                clippingTimer.restart();
            }
            reel.index = path.currentIndex;
            reel.moving = false;
        }

        Timer {
            id: clippingTimer
            interval: 3000; repeat: false
            triggeredOnStart: false; onTriggered: reel.clip = true
        }        
    }
}