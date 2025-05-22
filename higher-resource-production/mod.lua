local myMod = foundation.createMod();
local multiplier = 5 ;
local prefix = "BUILDING_FUNCTION_"

local buildingFunctions = {
    --BARREL
    { Id = "COOPERAGE", Resources = { { Resource = "BARREL", Quantity = 1 } } },
    --BEER
    { Id = "BREWERY", Resources = { { Resource = "BEER", Quantity = 3 } } },
    --BERRIES
    { Id = "GATHERING_HUT", Resources = { { Resource = "BERRIES", Quantity = 1 } } },
    { Id = "MONASTERY_BERRY_GARDEN", Resources = { { Resource = "BERRIES", Quantity = 1 } } },
    --BERRY_BREW
    { Id = "INN_BREWERY", Resources = { { Resource = "BERRY_BREW", Quantity = 3 } } },
    --BOAR
    { Id = "HUNTERS_HUT", Resources = { { Resource = "BOAR", Quantity = 1 } } },
    --BREAD
    { Id = "BAKERY", Resources = { { Resource = "BREAD", Quantity = 1 } } },
    --CANDLE
    { Id = "CANDLE_WORKSHOP", Resources = { { Resource = "CANDLE", Quantity = 1 } } },
    --CHEESE
    { Id = "CHEESE_MAKER", Resources = { { Resource = "CHEESE", Quantity = 1 } } },
    --CLOTHES
    { Id = "TAILOR_WORKSHOP", Resources = { { Resource = "CLOTHES", Quantity = 2 } } },
    --COAL
    { Id = "COAL_HUT", Resources = { { Resource = "COAL", Quantity = 1 } } },
    --COMMON_WARES
    { Id = "COMMON_WARES_WORKSHOP", Resources = { { Resource = "COMMON_WARES", Quantity = 3 } } },
    --FISH
    { Id = "FISHING_HUT", Resources = { { Resource = "FISH", Quantity = 6 } } },
    --FLOUR
    { Id = "WINDMILL", Resources = { { Resource = "FLOUR", Quantity = 1 } } },
    --GLASS
    { Id = "GLASS_SMELTER", Resources = { { Resource = "GLASS", Quantity = 1 } } },
    --GOLD_BARS
    { Id = "GOLD_SMELTER", Resources = { { Resource = "GOLD_BARS", Quantity = 1 } } },
    --GOLD_ORE
    { Id = "QUARRY_GOLD", Resources = { { Resource = "GOLD_ORE", Quantity = 1 } } },
    --GRAPES
    { Id = "VINEYARD", Resources = { { Resource = "GRAPES", Quantity = 1 } } },
    --HERBS
    { Id = "MONASTERY_HERB_GARDEN", Resources = { { Resource = "HERBS", Quantity = 1 } } },
    --HONEY
    --WAX
    { Id = "MONASTERY_BEEKEEPING", Resources = { { Resource = "HONEY", Quantity = 1 },{ Resource = "WAX", Quantity = 1 } } },
    --HOP
    { Id = "HOP_FARM", Resources = { { Resource = "HOP", Quantity = 1 } } },
    --IRON
    { Id = "IRON_SMELTER", Resources = { { Resource = "IRON", Quantity = 1 } } },
    --IRON_ORE
    { Id = "IRON_MINE", Resources = { { Resource = "IRON_ORE", Quantity = 1 } } },
    { Id = "QUARRY_IRON", Resources = { { Resource = "IRON_ORE", Quantity = 1 } } },
    --JEWELRY
    { Id = "JEWELER_WORKSHOP", Resources = { { Resource = "JEWELRY", Quantity = 1 } } },
    --MANUSCRIPT
    { Id = "MONASTERY_SCRIPTORIUM", Resources = { { Resource = "MANUSCRIPT", Quantity = 1 } } },
    --MARBLE
    { Id = "QUARRY_MARBLE", Resources = { { Resource = "MARBLE", Quantity = 1 } } },
    --MEAL
    { Id = "KITCHEN", Resources = { { Resource = "MEAL", Quantity = 5 } } },
    --MEAT
    { Id = "BUTCHER", Resources = { { Resource = "MEAT", Quantity = 5 } } },
    --MILK
    { Id = "DAIRY_FARM", Resources = { { Resource = "MILK", Quantity = 1 } } },
    --MONASTIC_MEAL
    { Id = "MONASTERY_KITCHEN_RECIPE_A", Resources = { { Resource = "MONASTIC_GARNISHED_GREENS", Quantity = 5 } } },
    { Id = "MONASTERY_KITCHEN_RECIPE_B", Resources = { { Resource = "MONASTIC_GOLDEN_GRUEL", Quantity = 5 } } },
    { Id = "MONASTERY_KITCHEN_RECIPE_C", Resources = { { Resource = "MONASTIC_ROBUST_ROAST", Quantity = 5 } } },
    { Id = "MONASTERY_KITCHEN_RECIPE_D", Resources = { { Resource = "MONASTIC_SIMPLE_STEW", Quantity = 5 } } },
    --PLANK
    { Id = "SAWMILL", Resources = { { Resource = "PLANK", Quantity = 1 } } },
    --POLISHED_STONE
    { Id = "STONEMASON_HUT", Resources = { { Resource = "POLISHED_STONE", Quantity = 1 } } },
    --QUARTZ
    { Id = "QUARRY_QUARTZ", Resources = { { Resource = "QUARTZ", Quantity = 1 } } },
    --SCULPTURE
    --{ Id = "SCULPTURE_WORKSHOP", Resources = { { Resource = "SCULPTURE", Quantity = 1 } } },
    --STAINED_GLASS
    --{ Id = "STAINED_GLASS_WORKSHOP", Resources = { { Resource = "STAINED_GLASS", Quantity = 1 } } },
    --STONE
    { Id = "STONECUTTER_CAMP", Resources = { { Resource = "STONE", Quantity = 1 } } },
    --TOOL
    { Id = "BLACKSMITH", Resources = { { Resource = "TOOL", Quantity = 1 } } },
    --VEGETABLES
    { Id = "MONASTERY_VEGETABLE_GARDEN", Resources = { { Resource = "VEGETABLES", Quantity = 1 } } },
    --WHEAT
    { Id = "WHEAT_FARM", Resources = { { Resource = "WHEAT", Quantity = 1 } } },
    --WINE
    { Id = "MONASTERY_WINERY", Resources = { { Resource = "WINE", Quantity = 3 } } },
    --WOOD
    { Id = "WOODCUTTER", Resources = { { Resource = "WOOD", Quantity = 1 } } },
    --WOOL
    { Id = "SHEEP_FARM", Resources = { { Resource = "WOOL", Quantity = 1 } } },
    --WOOLEN_CLOTH
    { Id = "WEAVER_HUT", Resources = { { Resource = "WOOLEN_CLOTH", Quantity = 1 } } },
}

for _, building in ipairs(buildingFunctions) do
    local resourcesProduced = {}
    for _, resource in ipairs(building.Resources) do
        table.insert(resourcesProduced, {
            Resource = resource.Resource,
            Quantity = (resource.Quantity * multiplier)
        })
    end
    myMod:override({
        Id = prefix .. building.Id,
        ResourceProduced = resourcesProduced
    })
end

