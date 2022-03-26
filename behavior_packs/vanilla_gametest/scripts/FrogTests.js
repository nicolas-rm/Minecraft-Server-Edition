import * as GameTest from "mojang-gametest";
import { BlockLocation, MinecraftItemTypes, Location, TicksPerSecond } from "mojang-minecraft";
import GameTestExtensions from "./GameTestExtensions.js";

GameTest.register("FrogTests", "frog_jump", (test) => {
    const frogEntityType = "minecraft:frog";
    const startPos = new BlockLocation(0, 7, 0);
    const endPos = new BlockLocation(3, 7, 0);
    test.spawn(frogEntityType, startPos);

    test
        .startSequence()
        .thenWait(() => {
            test.assertEntityPresent(frogEntityType, endPos, true);
        })
        .thenSucceed();
}).maxTicks(TicksPerSecond * 20)
    .tag("Experiment Wild");

GameTest.register("FrogTests", "frog_eat_slime_drop_slimeball", (test) => {
    const frogEntityType = "minecraft:frog";
    const startPos = new BlockLocation(1, 2, 0);
    test.spawn(frogEntityType, startPos);

    const slimeEntityType = "minecraft:slime<spawn_small>";
    const entityLoc = new Location(1, 2, 3);
    test.spawnWithoutBehaviorsAtLocation(slimeEntityType, entityLoc);

    test
        .startSequence()
        .thenWait(() => {
            test.assertItemEntityPresent(MinecraftItemTypes.slimeBall, startPos, 10.0, true);
        })
        .thenSucceed();
}).maxTicks(TicksPerSecond * 5)
    .tag("Experiment Wild");

GameTest.register("FrogTests", "temperate_frog_magmacube_drop_ochre", (test) => {
    const frogEntityType = "minecraft:frog";
    const startPos = new BlockLocation(1, 2, 0);
    test.spawn(frogEntityType, startPos);

    const magmacubeEntityType = "minecraft:magma_cube<spawn_small>";
    const entityLoc = new Location(1, 2, 3);
    test.spawnWithoutBehaviorsAtLocation(magmacubeEntityType, entityLoc);

    test
        .startSequence()
        .thenWait(() => {
            test.assertItemEntityPresent(MinecraftItemTypes.ochreFroglight, startPos, 10.0, true);
        })
        .thenSucceed();
}).maxTicks(TicksPerSecond * 5)
    .tag("Experiment Wild");

GameTest.register("FrogTests", "warm_frog_magmacube_drop_pearlescent", (test) => {
    const frogEntityType = "minecraft:frog<spawn_warm>";
    const startPos = new BlockLocation(1, 2, 0);
    test.spawn(frogEntityType, startPos);

    const magmacubeEntityType = "minecraft:magma_cube<spawn_small>";
    const entityLoc = new Location(1, 2, 3);
    test.spawnWithoutBehaviorsAtLocation(magmacubeEntityType, entityLoc);

    test
        .startSequence()
        .thenWait(() => {
            test.assertItemEntityPresent(MinecraftItemTypes.pearlescentFroglight, startPos, 10.0, true);
        })
        .thenSucceed();
}).maxTicks(TicksPerSecond * 5)
    .tag("Experiment Wild");

GameTest.register("FrogTests", "cold_frog_magmacube_drop_verdant", (test) => {
    const frogEntityType = "minecraft:frog<spawn_cold>";
    const startPos = new BlockLocation(1, 2, 0);
    test.spawn(frogEntityType, startPos);

    const magmacubeEntityType = "minecraft:magma_cube<spawn_small>";
    const entityLoc = new Location(1, 2, 3);
    test.spawnWithoutBehaviorsAtLocation(magmacubeEntityType, entityLoc);

    test
        .startSequence()
        .thenWait(() => {
            test.assertItemEntityPresent(MinecraftItemTypes.verdantFroglight, startPos, 10.0, true);
        })
        .thenSucceed();
}).maxTicks(TicksPerSecond * 5)
    .tag("Experiment Wild");

GameTest.register("FrogTests", "frog_lay_egg_spawn_tadpole", (test) => {
    const startPosFrogOne = new BlockLocation(0, 4, 1);
    const startPosFrogTwo = new BlockLocation(4, 4, 1);
    const startPosPlayer = new BlockLocation(2, 4, 0);

    let playerSim = test.spawnSimulatedPlayer(startPosPlayer, "playerSim_frog");
    let frogOne = test.spawn("minecraft:frog", startPosFrogOne);
    let frogTwo = test.spawn("minecraft:frog", startPosFrogTwo);
    const testEx = new GameTestExtensions(test);

    test
        .startSequence()
        .thenExecute(() => testEx.giveItem(playerSim, MinecraftItemTypes.seagrass, 2, 0))
        .thenExecute(() => test.assert(playerSim.interactWithEntity(frogOne) == true, ""))
        .thenExecute(() => test.assert(playerSim.interactWithEntity(frogTwo) == true, ""))
        .thenWait(() => {
            test.assertEntityPresentInArea("minecraft:tadpole", true);
        })
        .thenSucceed();
}).maxTicks(TicksPerSecond * 90)
    .tag("Experiment Wild");
