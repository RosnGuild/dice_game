{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_D20_map_triangle",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":10,"eventType":6,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":11,"eventType":6,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":64,"eventType":8,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "D20_Map_Display",
    "path": "folders/Objects/UI/D20_Map_Display.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"triangle_number","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"triangle_face","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"global.die_graph_array[triangle_number - 1].move","varType":4,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_d20_triangle_tile",
    "path": "sprites/spr_d20_triangle_tile/spr_d20_triangle_tile.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}