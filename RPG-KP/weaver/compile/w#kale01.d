BEGIN w#kale01

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
   SAY ~As you hold the toy up to your eye and turn it slowly, the mirrors and glass pieces inside form colorful patterns.  Depending on how you turn the kaleidoscope, different sequences follow one another.  Some of them bear curious resemblance to certain arcane spells that you know.

It's a far cry from any normal methods of study or meditation, but you wonder if you could actually memorize a pattern sequence and translate it into a spell.~
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Agannazar's Scorcher".~
   DO ~ReallyForceSpellRES("w#kale01",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Blur".~
   DO ~ReallyForceSpellRES("w#kale02",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Deafness".~
   DO ~ReallyForceSpellRES("w#kale03",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Detect Evil".~
   DO ~ReallyForceSpellRES("w#kale04",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Detect Invisibility".~
   DO ~ReallyForceSpellRES("w#kale05",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Ghoul Touch".~
   DO ~ReallyForceSpellRES("w#kale06",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Glitterdust".~
   DO ~ReallyForceSpellRES("w#kale07",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Horror".~
   DO ~ReallyForceSpellRES("w#kale08",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Invisibility".~
   DO ~ReallyForceSpellRES("w#kale09",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Knock".~
   DO ~ReallyForceSpellRES("w#kale10",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Know Alignment".~
   DO ~ReallyForceSpellRES("w#kale11",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Luck".~
   DO ~ReallyForceSpellRES("w#kale12",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Melf's Acid Arrow".~
   DO ~ReallyForceSpellRES("w#kale13",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Mirror Image".~
   DO ~ReallyForceSpellRES("w#kale14",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Power Word, Sleep".~
   DO ~ReallyForceSpellRES("w#kale15",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Ray of Enfeeblement".~
   DO ~ReallyForceSpellRES("w#kale16",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Resist Fear".~
   DO ~ReallyForceSpellRES("w#kale17",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Stinking Cloud".~
   DO ~ReallyForceSpellRES("w#kale18",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Strength".~
   DO ~ReallyForceSpellRES("w#kale19",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Vocalize".~
   DO ~ReallyForceSpellRES("w#kale20",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Try to find a sequence that would resemble the spell "Web".~
   DO ~ReallyForceSpellRES("w#kale21",LastTalkedToBy)
   TakePartyItem("w#kale01")
   DestroySelf()~
   EXIT
   IF ~~ THEN REPLY ~Put the kaleidoscope away.~
   DO ~DestroySelf()~
   EXIT
END
