--[[
    Directions:

    North /\
    East >
    South \/
    West <


    Structure:
    [OutfitID] = {
        [Direction] = {x = OFFSETX, y = OFFSETY},
    }
]]

--Lista de offsets para cada Outfit.
local OutfitOffsets = {
  [401] = { --Outfit do primeiro gif
      [North] = {x = 0, y = -60},
      [East] = {x = 0, y = -60},
      [South] = {x = 0, y = -60},
      [West] = {x = 0, y = -60},
  },
  [402] = { --Outfit de anão com o nome full drogado.
      [North] = {x = 0, y = -35},
      [East] = {x = 0, y = -35},
      [South] = {x = 0, y = -35},
      [West] = {x = 0, y = -35},
  },
  [413] = { --Outfit de anão com o nome full drogado.
  [North] = {x = 0, y = -35},
  [East] = {x = 0, y = -35},
  [South] = {x = 0, y = -35},
  [West] = {x = 0, y = -35},
},
[434] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[474] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[475] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[480] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[481] = { --Outfit buu 3
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[482] = { --Outfit buu 2
[North] = {x = 0, y = -60},
[East] = {x = 0, y = -60},
[South] = {x = 0, y = -60},
[West] = {x = 0, y = -60},
},
[487] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[487] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[389] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[542] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[543] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[568] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[572] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[577] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[578] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[585] = { --Outfit buu 4
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[586] = { --Outfit buu 5
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[594] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[598] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[623] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[638] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[645] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[646] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[647] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[652] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},
[655] = { --Outfit de anão com o nome full drogado.
[North] = {x = 0, y = -35},
[East] = {x = 0, y = -35},
[South] = {x = 0, y = -35},
[West] = {x = 0, y = -35},
},

}




local function translateDir(dir)
  if dir == NorthEast or dir == SouthEast then
      return East
  elseif dir == NorthWest or dir == SouthWest then
      return West
  end
  return dir
end

local function getOutfitInformationOffset(outfit, dir)
  if OutfitOffsets[outfit] then
      return OutfitOffsets[outfit][translateDir(dir)]
  end
  return {x = 0, y = 0}
end

local function onCreatureAppear(creature)
  local Offset = getOutfitInformationOffset(creature:getOutfit().type, creature:getDirection())
  creature:setInformationOffset(Offset.x, Offset.y)
end

local function onCreatureDirectionChange(creature, oldDirection, newDirection)
  local Offset = getOutfitInformationOffset(creature:getOutfit().type, newDirection)
  creature:setInformationOffset(Offset.x, Offset.y)
end

local function onCreatureOutfitChange(creature, newOutfit, oldOutfit)
  local Offset = getOutfitInformationOffset(newOutfit.type, creature:getDirection())
  creature:setInformationOffset(Offset.x, Offset.y)
end

function init()
  connect(LocalPlayer, {onOutfitChange = onCreatureOutfitChange})
  connect(Creature, {
      onAppear = onCreatureAppear,
      onDirectionChange = onCreatureDirectionChange,
      onOutfitChange = onCreatureOutfitChange
  })
end

function terminate()
  disconnect(LocalPlayer, {onOutfitChange = onCreatureOutfitChange})
  disconnect(Creature, {
      onAppear = onCreatureAppear,
      onDirectionChange = onCreatureDirectionChange,
      onOutfitChange = onCreatureOutfitChange
  })
end