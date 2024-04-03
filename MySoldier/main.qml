import QtQuick 2.15
import QtQuick.Window 2.15
import QtMultimedia 5.15
import QtQuick.Controls 2.15
import "./Character"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("soldier")
    color: "#2e2f30"
    flags: Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint
    Soldier {
        id: mySoldier
        x: 250
        y: 170
    }

    MediaPlayer {
        id: bgMusic
        loops: MediaPlayer.Infinite
        source: "qrc:/Resource/Music/Cyberpunk Moonlight Sonata.mp3"
        volume: 0.5
    }
    Component.onCompleted: {
        bgMusic.play()
    }
}
