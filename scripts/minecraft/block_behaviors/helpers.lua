local Blocks = require("scripts/minecraft/data/blocks")
local Helpers = {}

function Helpers.place_if_air(world, int_x, int_y, int_z, block_id)
  if world:get_block(int_x, int_y, int_z) == Blocks.AIR then
    world:set_block(int_x, int_y, int_z, block_id)
  end
end

function Helpers.get_block_ids(list)
  local block_ids = {}

  for _, name in ipairs(list) do
    block_ids[#block_ids + 1] = Blocks[name]
  end

  return block_ids
end

return Helpers
