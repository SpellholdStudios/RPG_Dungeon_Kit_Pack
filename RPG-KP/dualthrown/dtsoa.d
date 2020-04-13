REPLACE_TRIGGER_TEXT WSMITH01
~PartyHasItem("ax1h10")~
~OR(3)
PartyHasItem("ax1h10")
PartyHasItem("w#ax1h10")
PartyHasItem("w#ax10NR")~

REPLACE WSMITH01
IF ~~ THEN BEGIN 94 // from: 13.36
  SAY ~Ah. I could apply a coating of pure illithium to Azuredge, granting further offensive and defensive powers against the evils of the undead. For 20,000 gold I'd do the work for you.~
  IF ~~ THEN REPLY ~Not right now.~ GOTO 13
  IF ~OR(3)
PartyHasItem("ax1h10")
PartyHasItem("w#ax1h10")
PartyHasItem("w#ax10NR")
PartyHasItem("misc5k")
PartyGoldGT(19999)
~ THEN REPLY @243 DO ~TakePartyGold(20000)
DestroyGold(20000)
TakePartyItemNum("ax1h10",1)
DestroyItem("ax1h10")
TakePartyItemNum("w#ax1h10",1)
DestroyItem("w#ax1h10")
TakePartyItemNum("w#ax10NR",1)
DestroyItem("w#ax10NR")
TakePartyItemNum("misc5k",1)
DestroyItem("misc5k")
GiveItemCreate("c2ax1h01",Player1,1,1,1)
CreateVisualEffect("spcrtwpn",[401.348])
~ EXIT
END
END
