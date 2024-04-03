import QtQuick 2.15
import QtMultimedia 5.15

Item {
    id: root
    width: 140
    height: 140
    property int actionState: 1
    property bool facingDirection: true
    enum ENUM_ActionState {
        RightIdle = 1,
        RightRun,
        RightDash,
        RightJump,
        RightFall,
        RightAttack,
        RightTakeHit,
        RightDeath,
        LeftIdle,
        LeftRun,
        LeftDash,
        LeftJump,
        LeftFall,
        LeftAttack,
        LeftTakeHit,
        LeftDeath
    }

    property int hp: 100
    property int mp: 100
    property real damage: 1
    property bool dying: false

    SpriteSequence {
        id: actionSprite
        anchors.fill: parent
        interpolate: false
        goalSprite: ""
        sprites: [
            //右侧等待
            Sprite {
                name: "RightIdle0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle1": 1
                }
            },
            Sprite {
                name: "RightIdle1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightIdle2": 1
                }
            },
            Sprite {
                name: "RightIdle2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle3": 1
                }
            },
            Sprite {
                name: "RightIdle3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle4": 1
                }
            },
            Sprite {
                name: "RightIdle4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle5": 1
                }
            },
            Sprite {
                name: "RightIdle5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle6": 1
                }
            },
            Sprite {
                name: "RightIdle6"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 6
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle7": 1
                }
            },
            Sprite {
                name: "RightIdle7"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 7
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle8": 1
                }
            },
            Sprite {
                name: "RightIdle8"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 8
                frameCount: 1
                duration: 10
                frameDuration: 200

                to: {
                    "RightIdle9": 1
                }
            },
            Sprite {
                name: "RightIdle9"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 9
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle10": 1
                }
            },
            Sprite {
                name: "RightIdle10"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 10
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle0": 1
                }
            },
            //左侧等待
            Sprite {
                name: "LeftIdle0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle1": 1
                }
            },
            Sprite {
                name: "LeftIdle1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftIdle2": 1
                }
            },
            Sprite {
                name: "LeftIdle2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle3": 1
                }
            },
            Sprite {
                name: "LeftIdle3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle4": 1
                }
            },
            Sprite {
                name: "LeftIdle4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle5": 1
                }
            },
            Sprite {
                name: "LeftIdle5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle6": 1
                }
            },
            Sprite {
                name: "LeftIdle6"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 6
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle7": 1
                }
            },
            Sprite {
                name: "LeftIdle7"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 7
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle8": 1
                }
            },
            Sprite {
                name: "LeftIdle8"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 8
                frameCount: 1
                duration: 10
                frameDuration: 200

                to: {
                    "LeftIdle9": 1
                }
            },
            Sprite {
                name: "LeftIdle9"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 9
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle10": 1
                }
            },
            Sprite {
                name: "LeftIdle10"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 10
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle0": 1
                }
            },
            //右侧跑动
            Sprite {
                name: "RightRun0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun1": 1
                }
            },
            Sprite {
                name: "RightRun1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightRun2": 1
                }
            },
            Sprite {
                name: "RightRun2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun3": 1
                }
            },
            Sprite {
                name: "RightRun3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun4": 1
                }
            },
            Sprite {
                name: "RightRun4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun5": 1
                }
            },
            Sprite {
                name: "RightRun5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun6": 1
                }
            },
            Sprite {
                name: "RightRun6"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 6
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun7": 1
                }
            },
            Sprite {
                name: "RightRun7"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 7
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightRun0": 1
                }
            },
            //左侧跑动
            Sprite {
                name: "LeftRun0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun1": 1
                }
            },
            Sprite {
                name: "LeftRun1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftRun2": 1
                }
            },
            Sprite {
                name: "LeftRun2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun3": 1
                }
            },
            Sprite {
                name: "LeftRun3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun4": 1
                }
            },
            Sprite {
                name: "LeftRun4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun5": 1
                }
            },
            Sprite {
                name: "LeftRun5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun6": 1
                }
            },
            Sprite {
                name: "LeftRun6"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 6
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun7": 1
                }
            },
            Sprite {
                name: "LeftRun7"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftRun.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 7
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftRun0": 1
                }
            },
            //右侧冲刺
            Sprite {
                name: "RightDash0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDash1": 1
                }
            },
            Sprite {
                name: "RightDash1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightDash2": 1
                }
            },
            Sprite {
                name: "RightDash2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDash3": 1
                }
            },
            Sprite {
                name: "RightDash3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDash0": 1
                }
            },

            //左侧冲刺
            Sprite {
                name: "LeftDash0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDash1": 1
                }
            },
            Sprite {
                name: "LeftDash1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftDash2": 1
                }
            },
            Sprite {
                name: "LeftDash2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDash3": 1
                }
            },
            Sprite {
                name: "LeftDash3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDash.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDash0": 1
                }
            },

            //右侧跳跃
            Sprite {
                name: "RightJump0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightJump1": 1
                }
            },
            Sprite {
                name: "RightJump1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightJump2": 1
                }
            },
            Sprite {
                name: "RightJump2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightJump3": 1
                }
            },
            Sprite {
                name: "RightJump3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightFall0": 1
                }
            },

            //左侧跳跃
            Sprite {
                name: "LeftJump0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftJump1": 1
                }
            },
            Sprite {
                name: "LeftJump1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftJump2": 1
                }
            },
            Sprite {
                name: "LeftJump2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftJump3": 1
                }
            },
            Sprite {
                name: "LeftJump3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftJump.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftFall0": 1
                }
            },

            //右侧落下
            Sprite {
                name: "RightFall0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightFall1": 1
                }
            },
            Sprite {
                name: "RightFall1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightFall2": 1
                }
            },
            Sprite {
                name: "RightFall2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightFall3": 1
                }
            },
            Sprite {
                name: "RightFall3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle0": 1
                }
            },

            //左侧落下
            Sprite {
                name: "LeftFall0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftFall1": 1
                }
            },
            Sprite {
                name: "LeftFall1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftFall2": 1
                }
            },
            Sprite {
                name: "LeftFall2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftFall3": 1
                }
            },
            Sprite {
                name: "LeftFall3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftFall.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle0": 1
                }
            },

            //右侧攻击
            Sprite {
                name: "RightAttack0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightAttack1": 1
                }
            },
            Sprite {
                name: "RightAttack1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightAttack2": 1
                }
            },
            Sprite {
                name: "RightAttack2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightAttack3": 1
                }
            },
            Sprite {
                name: "RightAttack3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightAttack4": 1
                }
            },
            Sprite {
                name: "RightAttack4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightAttack5": 1
                }
            },
            Sprite {
                name: "RightAttack5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle0": 1
                }
            },

            //左侧攻击
            Sprite {
                name: "LeftAttack0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftAttack1": 1
                }
            },
            Sprite {
                name: "LeftAttack1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftAttack2": 1
                }
            },
            Sprite {
                name: "LeftAttack2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftAttack3": 1
                }
            },
            Sprite {
                name: "LeftAttack3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftAttack4": 1
                }
            },
            Sprite {
                name: "LeftAttack4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftAttack5": 1
                }
            },
            Sprite {
                name: "LeftAttack5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftAttack.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle0": 1
                }
            },

            //右侧受击
            Sprite {
                name: "RightTakeHit0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightTakeHit1": 1
                }
            },
            Sprite {
                name: "RightTakeHit1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightTakeHit2": 1
                }
            },
            Sprite {
                name: "RightTakeHit2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightTakeHit3": 1
                }
            },
            Sprite {
                name: "RightTakeHit3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightIdle0": 1
                }
            },

            //左侧受击
            Sprite {
                name: "LeftTakeHit0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftTakeHit1": 1
                }
            },
            Sprite {
                name: "LeftTakeHit1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftTakeHit2": 1
                }
            },
            Sprite {
                name: "LeftTakeHit2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftTakeHit3": 1
                }
            },
            Sprite {
                name: "LeftTakeHit3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftTakeHit.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftIdle0": 1
                }
            },

            //右侧倒地
            Sprite {
                name: "RightDeath0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath1": 1
                }
            },
            Sprite {
                name: "RightDeath1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "RightDeath2": 1
                }
            },
            Sprite {
                name: "RightDeath2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath3": 1
                }
            },
            Sprite {
                name: "RightDeath3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath4": 1
                }
            },
            Sprite {
                name: "RightDeath4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath5": 1
                }
            },
            Sprite {
                name: "RightDeath5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath6": 1
                }
            },
            Sprite {
                name: "RightDeath6"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 6
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath7": 1
                }
            },
            Sprite {
                name: "RightDeath7"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 7
                frameCount: 1
                frameDuration: 200

                to: {
                    "RightDeath8": 1
                }
            },
            Sprite {
                name: "RightDeath8"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 8
                frameCount: 1
                frameDuration: 200
            },
            //左侧倒地
            Sprite {
                name: "LeftDeath0"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath1": 1
                }
            },
            Sprite {
                name: "LeftDeath1"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 1
                frameCount: 1
                frameSync: true
                frameDuration: 200

                to: {
                    "LeftDeath2": 1
                }
            },
            Sprite {
                name: "LeftDeath2"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 2
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath3": 1
                }
            },
            Sprite {
                name: "LeftDeath3"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 3
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath4": 1
                }
            },
            Sprite {
                name: "LeftDeath4"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 4
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath5": 1
                }
            },
            Sprite {
                name: "LeftDeath5"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 5
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath6": 1
                }
            },
            Sprite {
                name: "LeftDeath6"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 6
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath7": 1
                }
            },
            Sprite {
                name: "LeftDeath7"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 7
                frameCount: 1
                frameDuration: 200

                to: {
                    "LeftDeath8": 1
                }
            },
            Sprite {
                name: "LeftDeath8"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/LeftDeath.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 140 * 8
                frameCount: 1
                frameDuration: 200
            },
            //渲染错误帧
            Sprite {
                name: "dummy"
                source: "qrc:/Resource/Picture/Soldier/ActionSprite/RightIdle.png"
                frameHeight: 140
                frameWidth: 140
                frameX: 0
                frameCount: 3
                frameDuration: 200
            }
        ]
    }

    onActionStateChanged: {
        console.log("actionState:" + actionState)

        if (actionState === Soldier.ENUM_ActionState.RightIdle)
            actionRightIdle()
        if (actionState === Soldier.ENUM_ActionState.RightRun)
            actionRightRun()
        if (actionState === Soldier.ENUM_ActionState.RightDash)
            actionRightDash()
        if (actionState === Soldier.ENUM_ActionState.RightJump)
            actionRightJump()
        if (actionState === Soldier.ENUM_ActionState.RightFall)
            actionRightFall()
        if (actionState === Soldier.ENUM_ActionState.RightAttack)
            actionRightAttack()
        if (actionState === Soldier.ENUM_ActionState.RightTakeHit)
            actionRightTakeHit()
        if (actionState === Soldier.ENUM_ActionState.RightDeath)
            actionRightDeath()

        if (actionState === Soldier.ENUM_ActionState.LeftIdle)
            actionLeftIdle()
        if (actionState === Soldier.ENUM_ActionState.LeftRun)
            actionLeftRun()
        if (actionState === Soldier.ENUM_ActionState.LeftDash)
            actionLeftDash()
        if (actionState === Soldier.ENUM_ActionState.LeftJump)
            actionLeftJump()
        if (actionState === Soldier.ENUM_ActionState.LeftFall)
            actionLeftFall()
        if (actionState === Soldier.ENUM_ActionState.LeftAttack)
            actionLeftAttack()
        if (actionState === Soldier.ENUM_ActionState.LeftTakeHit)
            actionLeftTakeHit()
        if (actionState === Soldier.ENUM_ActionState.LeftDeath)
            actionLeftDeath()
    }
    function actionRightIdle() {
        if (dying)
            return
        actionSprite.jumpTo("RightIdle0")
    }
    function actionLeftIdle() {
        if (dying)
            return
        actionSprite.jumpTo("LeftIdle0")
    }

    function actionRightRun() {
        if (dying)
            return
        actionSprite.jumpTo("RightRun0")
    }
    function actionLeftRun() {
        if (dying)
            return
        actionSprite.jumpTo("LeftRun0")
    }
    function actionRightDash() {
        if (dying)
            return
        actionSprite.jumpTo("RightDash0")
    }
    function actionLeftDash() {
        if (dying)
            return
        actionSprite.jumpTo("LeftDash0")
    }
    function actionRightJump() {
        if (dying)
            return
        actionSprite.jumpTo("RightJump0")
    }
    function actionLeftJump() {
        if (dying)
            return
        actionSprite.jumpTo("LeftJump0")
    }
    function actionRightFall() {
        if (dying)
            return
        actionSprite.jumpTo("RightFall0")
    }
    function actionLeftFall() {
        if (dying)
            return
        actionSprite.jumpTo("LeftFall0")
    }
    function actionRightAttack() {
        if (dying)
            return
        actionSprite.jumpTo("RightAttack0")
    }
    function actionLeftAttack() {
        if (dying)
            return
        actionSprite.jumpTo("LeftAttack0")
    }
    function actionRightTakeHit() {
        if (dying)
            return
        actionSprite.jumpTo("RightTakeHit0")
    }
    function actionLeftTakeHit() {
        if (dying)
            return
        actionSprite.jumpTo("LeftTakeHit0")
    }
    function actionRightDeath() {
        if (dying)
            return
        actionSprite.jumpTo("RightDeath0")
    }
    function actionLeftDeath() {
        if (dying)
            return
        actionSprite.jumpTo("LeftDeath0")
    }

    Keys.enabled: true
    focus: true
    Keys.onPressed: {
        if (event.key === Qt.Key_D) {
            root.facingDirection = true
            actionState = Soldier.ENUM_ActionState.RightRun
        } else if (event.key === Qt.Key_A) {
            root.facingDirection = false
            actionState = Soldier.ENUM_ActionState.LeftRun
        } else if (event.key === Qt.Key_J) {
            if (!attackTimer.running)
                attackTimer.restart()
            if (root.facingDirection) {
                actionState = Soldier.ENUM_ActionState.RightAttack
            } else {
                actionState = Soldier.ENUM_ActionState.LeftAttack
            }
        } else if (event.key === Qt.Key_Space) {
            if (!actorJumpAnima.running)
                actorJumpAnima.start()
            if (root.facingDirection) {
                actionState = Soldier.ENUM_ActionState.RightJump
            } else {
                actionState = Soldier.ENUM_ActionState.LeftJump
            }
        }
    }
    Keys.onReleased: {
        if (!event.isAutoRepeat) {
            if (event.key === Qt.Key_D) {
                actionState = Soldier.ENUM_ActionState.RightIdle
            } else if (event.key === Qt.Key_A) {
                actionState = Soldier.ENUM_ActionState.LeftIdle
            } else if (event.key === Qt.Key_J) {
                attackTimer.stop()
                if (root.facingDirection) {
                    actionState = Soldier.ENUM_ActionState.RightIdle
                } else {
                    actionState = Soldier.ENUM_ActionState.LeftIdle
                }
            } else if (event.key === Qt.Key_Space) {
                if (root.facingDirection) {
                    actionState = Soldier.ENUM_ActionState.RightIdle
                } else {
                    actionState = Soldier.ENUM_ActionState.LeftIdle
                }
            }
        }
    }
    Timer {
        id: attackTimer
        interval: 4 * 200 - 200
        onTriggered: {
            attackSound01.play()
        }
    }

    SequentialAnimation {
        id: actorJumpAnima
        NumberAnimation {
            target: root
            property: "y"
            to: root.y - 50
            duration: 800
        }
        NumberAnimation {
            target: root
            property: "y"
            to: root.y
            duration: 800
        }
        onFinished: {
            if (facingDirection)
                root.actionState = 1
            else
                root.actionState = 9
        }
    }

    SoundEffect {
        id: attackSound01
        source: "qrc:/Resource/Music/SoundEffect/SwordAttack.wav"
    }
}
