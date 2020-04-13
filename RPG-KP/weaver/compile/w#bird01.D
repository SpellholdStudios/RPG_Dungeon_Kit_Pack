BEGIN w#bird01

IF ~Global("w#brdtlk","LOCALS",1)~
   THEN BEGIN 0 // So you want me to sing?
   SAY ~(A rift opens before you, and a plump, colorful little bird hops through.  It watches you with bright, alert eyes, as if sizing you up, then ruffles its feathers and whistles dismissively.)

You are not much to look at, surely, but let it not be said that I am choosy when it comes to audiences.  So you want me to sing, do you?~ [w#birdwh]
   IF ~~ THEN REPLY ~What?~
   GOTO 1
END

IF ~~ THEN BEGIN 1 // the "what"
   SAY ~(The bird gives an indignant sniff.)  Primates.  Always stammering about the why, the where, the "what" in particular.  Have none of you heard of Art for Art's sake?~
   IF ~~ THEN REPLY ~The Art?  I beg your pardon, master bird, but what would you know about the Art?~
   GOTO 4
   IF ~~ THEN REPLY ~You wouldn't be a mage or a minstrel in disguise, would you...  Why don't you sing to me the spell "Antichickenator"?~
   GOTO 3
   IF ~~ THEN REPLY ~Now, really. It's past time I ignored the chitter-chatter of small fowl.  Good day, goodbye.~
   GOTO 2
END

IF ~~ THEN BEGIN 2 // My pleasure.
   SAY ~The pleasure is mine.  (The bird turns, tail bobbing, hops through the rift, and is gone.)~
   IF ~~ THEN DO ~SetInterrupt(FALSE)
   CreateVisualEffectObject("SPPORTAL",Myself)
   Wait(2)
   DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // Chicken, indeed.
   SAY ~(The bird stares at you, unblinking.)  I shall let that pass.  Chicken, indeed.~
   IF ~~ THEN REPLY ~My apologies, master bird.  Will you sing to me, then?~
   GOTO 5
   IF ~~ THEN REPLY ~Touchy, are we?  Very well, just sing, then, the stage is yours.  (Loon.)~
   GOTO 5
   IF ~~ THEN REPLY ~Fine.  Look, it's been swell, but why don't you just flutter off the way you came.~
   GOTO 2
END

IF ~~ THEN BEGIN 4 // Try me.
   SAY ~Hmph.  "Try me" would be an appropriate vernacular, I believe.~
   IF ~~ THEN REPLY ~You wouldn't be a mage or a minstrel in disguise, would you...  Why don't you sing to me the spell "Antichickenator"?~
   GOTO 3
   IF ~~ THEN REPLY ~Fine, then.  Sing to me, if you would.~
   GOTO 5
   IF ~~ THEN REPLY ~You don't actually think that *you* could teach *me* something about magic?  Forget it, bird-brains.  Flutter off.~
   GOTO 2
END

IF ~~ THEN BEGIN 5 // What shall I sing about?
   SAY ~And about what shall I sing?  You must understand that I cannot simply blurt out some spurious sounds.  I must have inspiration; I must be given a spark.  ... Yours will have to do, I suppose.~
   IF ~~ THEN REPLY ~You wouldn't be a mage or a minstrel in disguise, would you...  Why don't you sing to me the spell "Antichickenator"?~
   GOTO 3
   IF ~~ THEN REPLY ~Sing to me of fiends.~
   DO ~SetGlobal("w#bird01","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of the undead.~
   DO ~SetGlobal("w#bird02","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of traps and trickery and infernal fire.~
   DO ~SetGlobal("w#bird03","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of death.~
   DO ~SetGlobal("w#bird04","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of wishes and their fulfillment.~
   DO ~SetGlobal("w#bird05","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of warmth and comfort.~
   DO ~SetGlobal("w#bird06","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of secrets and subtlety.~
   DO ~SetGlobal("w#bird07","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me a song of valor and victory.~
   DO ~SetGlobal("w#bird08","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me words of power.~
   DO ~SetGlobal("w#bird09","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me an ode in praise of color and light.~
   DO ~SetGlobal("w#bird10","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me a tale of deceit and doppelgangers.~
   DO ~SetGlobal("w#bird11","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me in praise of the fury of the elements.~
   DO ~SetGlobal("w#bird12","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of reversing cause and consequence, of undoing what has been done.~
   DO ~SetGlobal("w#bird13","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of the might of memory.~
   DO ~SetGlobal("w#bird14","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of turning your enemies' own arts against them.~
   DO ~SetGlobal("w#bird15","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of chaos.~
   DO ~SetGlobal("w#bird16","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of the plane of Air.~
   DO ~SetGlobal("w#bird17","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of the plane of Fire.~
   DO ~SetGlobal("w#bird18","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me of the suffering of Mystra.~
   DO ~SetGlobal("w#bird19","LOCALS",1)~
   GOTO 6
   IF ~~ THEN REPLY ~Sing to me a tale of the great magician, Khelben Arunsun.~
   DO ~SetGlobal("w#bird20","LOCALS",1)~
   GOTO 6
END

IF ~~ THEN BEGIN 6 // Singsong
   SAY ~(The bird seems about to protest, then resorts to what can only be the avian equivalent of a cavalier shrug, and sings.  It starts with a single, pure note before burbling into a melody.~ [w#birdsg]
   =
   ~(Gradually the song sharpens into a violent pattern of clicks, trills and shrieks.  An incantation forms from the cacophony and brands itself onto your mind.)~
   IF ~~ THEN DO ~SetGlobal("w#brdtlk","LOCALS",2)~
   EXIT
END

IF ~Global("w#brdtlk","LOCALS",3)~ THEN BEGIN 7 // The gig's over
   SAY ~(The bird stops, sniffs, and hops away.  The serenade is over.)~ [w#birdwh]
   IF ~~ THEN DO ~SetInterrupt(FALSE)
   Wait(1)
   EscapeArea()~ EXIT  
END
