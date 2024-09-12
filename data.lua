require("prototypes.fusion-construction-robot") 

if mods['Krastorio2'] then
  data.raw['equipment-grid']['mini-equipment-grid'].equipment_categories = {"armor", "universal-equipment", "robot-interaction-equipment"}
end

data:extend({
  { type = "equipment-grid",
    name = "prototype-equipment-grid",
    width = 6,
    height = 4,
    equipment_categories = {"armor"}
    },
  
  { type = "item",
    name = "fusion-construction-robot",
    icon = "__prototypearmor__/graphics/icons/fusion-construction-robot.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "a[robot]-b[construction-robot]-a[fusion-construction-robot]",
    place_result = "fusion-construction-robot",
    stack_size = 50
    },
  
  { type = "item",
    name = "prototype-fusion-reactor-equipment",
    icon = "__prototypearmor__/graphics/icons/prototype-fusion-reactor-equipment.png",  
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "prototype-fusion-reactor-equipment",
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor]-a[prototype-fusion-reactor-equipment]",
    stack_size = 20
    },
  
  { type = "armor",
    name = "prototype-power-armor",
    icon = "__prototypearmor__/graphics/icons/prototype-power-armor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "armor",
    order = "c[modular-armor]-a[prototype-power-armor]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "prototype-equipment-grid",
    inventory_size_bonus = 10,
    resistances = 
    { {type = "acid",decrease = 0,percent = 10},
      {type = "explosion",decrease = 5,percent = 20},
      {type = "fire",decrease = 0,percent = 10},
      {type = "physical",decrease = 3,percent = 20}
      }
    },
  
  { type = "generator-equipment",
    name = "prototype-fusion-reactor-equipment",
    sprite =
    { filename = "__prototypearmor__/graphics/equipment/prototype-fusion-reactor-equipment.png",
      width = 65,
      height = 128,
      priority = "medium"
      },
    shape = {width = 2,height = 4,type = "full"},
    energy_source = {type = "electric",usage_priority = "primary-output"},
    power = "200kW",
    categories = {"armor"}
    }
})
