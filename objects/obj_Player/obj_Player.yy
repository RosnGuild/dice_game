{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_Player",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":true,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Entity","path":"objects/obj_Entity/obj_Entity.yy",},"propertyId":{"name":"current_hp","path":"objects/obj_Entity/obj_Entity.yy",},"value":"global.player_current_hp",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Entity","path":"objects/obj_Entity/obj_Entity.yy",},"propertyId":{"name":"max_hp","path":"objects/obj_Entity/obj_Entity.yy",},"value":"global.player_max_hp",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Entity","path":"objects/obj_Entity/obj_Entity.yy",},"propertyId":{"name":"name","path":"objects/obj_Entity/obj_Entity.yy",},"value":"Player",},
  ],
  "parent": {
    "name": "Entities",
    "path": "folders/Objects/Entities.yy",
  },
  "parentObjectId": {
    "name": "obj_Entity",
    "path": "objects/obj_Entity/obj_Entity.yy",
  },
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"current_energy","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"2","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"base_energy","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"2","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_d20",
    "path": "sprites/spr_d20/spr_d20.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}