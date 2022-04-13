import { world, BlockLocation } from "mojang-minecraft";

world.events.blockBreak.subscribe((blockEvent) => {
    let p = blockEvent.player;
    let block = blockEvent.block;

    let location = [
      blockEvent.block.location.x,
      blockEvent.block.location.y,
      blockEvent.block.location.z
    ];

    let container = p.getComponent("inventory").container;
    let hand = container.getItem(p.selectedSlot);

    let items = ["minecraft:diamond_axe", "minecraft:wooden_axe", "minecraft:golden_axe", "minecraft:netherite_axe", "minecraft:stone_axe", "minecraft:iron_axe"]
    
    for(let itemsID of items){
        if (hand.id == itemsID) {
          p.runCommand(`summon new:axe ${location[0]} ${location[1] + 1} ${location[2]} new:axe_function`);
      }
    }

});

world.events.beforeItemUseOn.subscribe((useOn) =>{

     let pl = useOn.source;
     let blockLocation = [
        useOn.blockLocation.x,
        useOn.blockLocation.y,
        useOn.blockLocation.z

     ];
     let item = useOn.item.id;
     let itemId = ["minecraft:diamond_axe", "minecraft:wooden_axe", "minecraft:golden_axe", "minecraft:netherite_axe", "minecraft:stone_axe", "minecraft:iron_axe"]
     pl.addTag("active");

     for(let i of itemId){
        if(item == i && pl.isSneaking && pl.hasTag("active")){
           pl.removeTag("active");
           pl.runCommand(`summon new:axe2 ${blockLocation[0]} ${blockLocation[1]} ${blockLocation[2]} new:axe2_function`);
        }
     }
});