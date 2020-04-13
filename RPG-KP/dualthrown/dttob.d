REPLACE_TRIGGER_TEXT BOTSMITH
~PartyHasItem("ax1h10")~
~OR(3)
PartyHasItem("ax1h10")
PartyHasItem("w#ax1h10")
PartyHasItem("w#ax10NR")~

REPLACE BOTSMITH
IF ~~ THEN BEGIN 230 // from: 229.0
  SAY ~Anyway, pink not really your color. Could apply coating of illithium to Azuredge, make it a much more refined purple. Also grant some extra undead-smiting powers and protections. 20,000 gold. You like?~
  IF ~~ THEN REPLY ~Not right now.~ GOTO 4
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
