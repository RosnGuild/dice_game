{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Tutorial_Room",
  "creationCodeFile": "rooms/Battle_Room/RoomCreationCode.gml",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": true,
  "instanceCreationOrder": [
    {"name":"inst_31B10733","path":"rooms/Tutorial_Room/Tutorial_Room.yy",},
    {"name":"inst_5BED50ED","path":"rooms/Tutorial_Room/Tutorial_Room.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Button_Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_31B10733","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_button_goto_battleroom","path":"objects/obj_button_goto_battleroom/obj_button_goto_battleroom.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":960.0,"y":928.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5BED50ED","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_display_parent","path":"objects/obj_display_parent/obj_display_parent.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_display_parent","path":"objects/obj_display_parent/obj_display_parent.yy",},"propertyId":{"name":"display_x_scale","path":"objects/obj_display_parent/obj_display_parent.yy",},"value":"0",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_display_parent","path":"objects/obj_display_parent/obj_display_parent.yy",},"propertyId":{"name":"display_y_scale","path":"objects/obj_display_parent/obj_display_parent.yy",},"value":"0",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_display_parent","path":"objects/obj_display_parent/obj_display_parent.yy",},"propertyId":{"name":"display_body_text","path":"objects/obj_display_parent/obj_display_parent.yy",},"value":"\"Welcome to Dice Jail!\\n\\nIn this game you play as a D20 die that has been thrown into Dice Jail for rolling poorly just a few too many times.\\nYour goal is to escape Dice Jail by fighting through hordes of enemies in turn-based battles.\\n\\nIn a battle, you will face up to four enemies.\\nAt the start of a round, they're upcoming actions will appear underneath them.\\nIn response, you get to choose up to two actions to use on your turn.\\n\\nThese actions appear on each of your 20 faces!\\nAt any given time you can select one of the three faces adjacent to the current Top Face (the center face)\\nto perform the action stored in it.\\nIf the action requires selecting an enemy (such as Strike), you must click an enemy in order to perform it!\\n\\nGood luck out there!\"",},
          ],"rotation":0.0,"scaleX":5.6829267,"scaleY":3.7428572,"x":960.00006,"y":448.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":200,"effectEnabled":true,"effectType":"_filter_greyscale","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
      ],"spriteId":{"name":"spr_battle_wip_screenshot","path":"sprites/spr_battle_wip_screenshot/spr_battle_wip_screenshot.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": {
    "name": "Battle_Room",
    "path": "rooms/Battle_Room/Battle_Room.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 1920,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}