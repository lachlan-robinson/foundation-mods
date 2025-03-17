local myMod = foundation.createMod();

myMod:override ({
    Id = "DEFAULT_IMMIGRATION_SETTINGS",
    ImmigrationWaveDelayInDays = 3,
    ImmigrationProbabilitySettingList = {
        MAXIMUM = {
            ProbabilityUpperValue = 1.0,
            VillagerCountRange = { 10, 10 }
        },
        HIGH = {
            ProbabilityUpperValue = 0.8,
            VillagerCountRange = { 8, 8 }
        },
        AVERAGE = {
            ProbabilityUpperValue = 0.6,
            VillagerCountRange = { 6, 6 }
        },
        LOW = {
            ProbabilityUpperValue = 0.3,
            VillagerCountRange = { 3, 3 }
        },
        NIL = {
            ProbabilityUpperValue = 0.0,
            VillagerCountRange = { 0, 0 }
        }
    }
})

myMod:override({
    Id = "IMMIGRATION_FACTOR_HAPPINESS",
    MinimumValue = 0.0,
})

myMod:override({
    Id = "IMMIGRATION_FACTOR_RESIDENTIAL",
    MinimumValue = 0.0,
})

myMod:override({
    Id = "IMMIGRATION_FACTOR_UNEMPLOYMENT",
    MinimumValue = 0.0,
})