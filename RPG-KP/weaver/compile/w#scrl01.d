BEGIN w#scrl01

IF ~Global("w#frails","GLOBAL",0)~
   THEN BEGIN 0 // Gibberish
   SAY ~The gibberish on the scroll seems to defy every attempt to read it.  You can't reach even the end of the first line before you find yourself somehow distracted and your gaze strays back to the first words.~
   IF ~~ THEN REPLY ~Keep trying to comprehend the uncooperative text.~
   GOTO 3
   IF ~CheckStatGT(LastTalkedToBy,14,INT)~
   THEN REPLY ~Try reading some randomly picked line.~
   GOTO 4
   IF ~~ THEN REPLY ~Put the scroll away for now.~
   DO ~DestroySelf()~
   EXIT
END

IF ~GlobalGT("w#frails","GLOBAL",0)
   GlobalLT("w#frails","GLOBAL",3)~
   THEN BEGIN 1 // Re-read
   SAY ~You find the treatise on observing wild surges easily, now that you know how.  The instructions detail how to weave various rudimentary spells.  The scroll seems to grow frailer, the longer you read it.~
   IF ~~ THEN REPLY ~Try to weave the spell "Armor".~
   DO ~ReallyForceSpellRES("w#scrl01",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Blindness".~
   DO ~ReallyForceSpellRES("w#scrl02",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Burning Hands".~
   DO ~ReallyForceSpellRES("w#scrl03",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Charm Person".~
   DO ~ReallyForceSpellRES("w#scrl04",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Chill Touch".~
   DO ~ReallyForceSpellRES("w#scrl05",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Chromatic Orb".~
   DO ~ReallyForceSpellRES("w#scrl06",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Color Spray".~
   DO ~ReallyForceSpellRES("w#scrl07",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Find Familiar".~
   DO ~ReallyForceSpellRES("w#scrl08",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Friends".~
   DO ~ReallyForceSpellRES("w#scrl09",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Grease".~
   DO ~ReallyForceSpellRES("w#scrl10",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Identify".~
   DO ~ReallyForceSpellRES("w#scrl11",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Infravision".~
   DO ~ReallyForceSpellRES("w#scrl12",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Larloch's Minor Drain".~
   DO ~ReallyForceSpellRES("w#scrl13",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Magic Missile".~
   DO ~ReallyForceSpellRES("w#scrl14",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Protection from Evil".~
   DO ~ReallyForceSpellRES("w#scrl15",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Protection from Petrification".~
   DO ~ReallyForceSpellRES("w#scrl16",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Reflected Image".~
   DO ~ReallyForceSpellRES("w#scrl17",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Shield".~
   DO ~ReallyForceSpellRES("w#scrl18",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Shocking Grasp".~
   DO ~ReallyForceSpellRES("w#scrl19",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Sleep".~
   DO ~ReallyForceSpellRES("w#scrl20",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Spook".~
   DO ~ReallyForceSpellRES("w#scrl21",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Put the scroll away for now.~
   DO ~IncrementGlobal("w#frails","GLOBAL",1)
   DestroySelf()~
   EXIT
END

IF ~GlobalGT("w#frails","GLOBAL",2)~
   THEN BEGIN 2 // Disappearance
   SAY ~As soon as you set your eyes on the text, the scroll curls up in your fingers and unceremoniously disappears.  Apparently the magic that hid the incantations in plain sight finally ran dry.~
   IF ~~ THEN DO ~TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
END

IF ~~ THEN BEGIN 3 // No avail
   SAY ~You struggle with the scroll a while longer, but the lines won't yield their secrets.  You will need to think up a more roundabout strategy.~
   IF ~~ THEN REPLY ~Put the scroll away for now.~
   DO ~DestroySelf()~
   EXIT
END

IF ~~ THEN BEGIN 4 // The text opens
   SAY ~After several failed attempts, you find that reading a bit from here and a line from there seems to make the text clearer.  You realize that several spells split the writing into layers.  There seems to be some logic to the structure, but it's somehow fuzzy and warped, and trying to follow it only leaves your temples pounding.~
   IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // The treatise
   SAY ~Finally you come across a passage that does not try to thwart you back to the beginning, instead compels you to read on.  As far as you can tell, it is a treatise on observing different patterns of wild surges, and crafting them into spells that even spellweavers may add to their repertoire.  Instructions for weaving magic into various rudimentary spells follow.  The scroll seems to grow frailer, the longer you read it.~
   IF ~~ THEN REPLY ~Try to weave the spell "Armor".~
   DO ~ReallyForceSpellRES("w#scrl01",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Blindness".~
   DO ~ReallyForceSpellRES("w#scrl02",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Burning Hands".~
   DO ~ReallyForceSpellRES("w#scrl03",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Charm Person".~
   DO ~ReallyForceSpellRES("w#scrl04",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Chill Touch".~
   DO ~ReallyForceSpellRES("w#scrl05",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Chromatic Orb".~
   DO ~ReallyForceSpellRES("w#scrl06",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Color Spray".~
   DO ~ReallyForceSpellRES("w#scrl07",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Find Familiar".~
   DO ~ReallyForceSpellRES("w#scrl08",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Friends".~
   DO ~ReallyForceSpellRES("w#scrl09",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Grease".~
   DO ~ReallyForceSpellRES("w#scrl10",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Identify".~
   DO ~ReallyForceSpellRES("w#scrl11",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Infravision".~
   DO ~ReallyForceSpellRES("w#scrl12",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Larloch's Minor Drain".~
   DO ~ReallyForceSpellRES("w#scrl13",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Magic Missile".~
   DO ~ReallyForceSpellRES("w#scrl14",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Protection from Evil".~
   DO ~ReallyForceSpellRES("w#scrl15",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Protection from Petrification".~
   DO ~ReallyForceSpellRES("w#scrl16",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Reflected Image".~
   DO ~ReallyForceSpellRES("w#scrl17",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Shield".~
   DO ~ReallyForceSpellRES("w#scrl18",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Shocking Grasp".~
   DO ~ReallyForceSpellRES("w#scrl19",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Sleep".~
   DO ~ReallyForceSpellRES("w#scrl20",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to weave the spell "Spook".~
   DO ~ReallyForceSpellRES("w#scrl21",LastTalkedToBy)
   TakePartyItem("w#scrl01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Put the scroll away for now.~
   DO ~IncrementGlobal("w#frails","GLOBAL",1)
   DestroySelf()~
   EXIT
END
