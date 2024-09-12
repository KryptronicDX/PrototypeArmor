function OnInit()
  if remote.interfaces["freeplay"] then
    local ship_items = remote.call("freeplay", "get_ship_items")
    ship_items['fusion-construction-robot'] = (ship_items['fusion-construction-robot'] or 0) + 25
    ship_items['prototype-power-armor'] = (ship_items['prototype-power-armor'] or 0) + 1 
    
    local debris_items = remote.call("freeplay", "get_debris_items")
    debris_items['prototype-fusion-reactor-equipment'] = (debris_items['prototype-fusion-reactor-equipment'] or 0) + 1 
    debris_items['energy-shield-equipment'] = (debris_items['energy-shield-equipment'] or 0) + 1 
    debris_items['exoskeleton-equipment'] = (debris_items['exoskeleton-equipment'] or 0) + 1 
    debris_items['personal-roboport-mk2-equipment'] = (debris_items['personal-roboport-mk2-equipment'] or 0) + 1 
      
    remote.call("freeplay", "set_ship_items", ship_items)
    remote.call("freeplay", "set_debris_items", debris_items)
  end
end
script.on_init(OnInit)
