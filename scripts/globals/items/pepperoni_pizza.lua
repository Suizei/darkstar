-----------------------------------------
-- ID: 5697
-- Item: pepperoni_pizza
-- Food Effect: 3 hours, all Races
-----------------------------------------
-- HP +30
-- Strength 1
-- Accuracy 9% (caps @ 10)
-- Attack 10% (caps @ 15)
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effects.FOOD) == true or target:hasStatusEffect(dsp.effects.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effects.FOOD,0,0,10800,5697);
end;

function onEffectGain(target,effect)
    target:addMod(MOD_HP, 30);
    target:addMod(MOD_STR, 1);
    target:addMod(MOD_FOOD_ATTP, 10);
    target:addMod(MOD_FOOD_ATT_CAP, 15);
    target:addMod(MOD_FOOD_ACCP, 9);
    target:addMod(MOD_FOOD_ACC_CAP, 10);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_HP, 30);
    target:delMod(MOD_STR, 1);
    target:delMod(MOD_FOOD_ATTP, 10);
    target:delMod(MOD_FOOD_ATT_CAP, 15);
    target:delMod(MOD_FOOD_ACCP, 9);
    target:delMod(MOD_FOOD_ACC_CAP, 10);
end;
