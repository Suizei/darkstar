-----------------------------------------
-- ID: 14989
-- Aero Mufflers
--  Enchantment: "Enaero"
-----------------------------------------

function onItemCheck(target)
    return 0;
end;

function onItemUse(target)
    local effect = dsp.effects.ENAERO;
    doEnspell(target,target,nil,effect);
end;
