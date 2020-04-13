BEGIN w#vial01

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
   SAY ~(The glass proves as fragile as an eggshell and the sad little vial snaps in half.  You wait a moment.  No fireworks, no poisonous fumes, not even a rude little bird.)~
   IF ~~ THEN REPLY ~(Shake the vial, see if anything comes out.)~ GOTO 2
   IF ~~ THEN REPLY ~(Drop the vial and crush it under your heel.)~ GOTO 1
   IF ~~ THEN REPLY ~(Throw the vial away.)~ GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY ~(The glass breaks with an unrefined crunch.)~
   IF ~~ THEN DO
   ~TakePartyItem("w#vial01")
   DestroySelf()~
   EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~(You give the halves of the vial a little shake, and the left one coughs out a small, downy scrap of a thing - a dandelion seed.  It hovers in midair for a moment, then twirls lazily to the other half, slips inside and disappears.)~
   IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~(Just as you are about to discard the vial, the half in your right hand shatters without a sound. Dozens of small sprouts uncurl from within, growing into green roots that bite into your hand like fangs, and coarse, silvery vines that creep up your arm with alarming speed.  The sting of the roots makes you grit your teeth, and you instinctively try to shake your hand free.)~
   =
   ~(The half in your left hand sends forth a single, thin beam of light that bores straight into your left eye and all the way through to the back of your skull.  The vines twine around your throat, stealing your breath, and as you gasp for air, one shoot crawls into your mouth and cuts into your tongue.)~
   =
   ~(The light in your left eye flares into images and colors, and the piercing pain in your mouth turns into words, a flow of words that pours from your lips: smooth, water-rounded consonants and vowels so spiked that they rasp your throat.

A semblance of clarity returns, and you realize that an immeasurable mass of magical patterns is searing through your mind and mouth.  They leave you drained, exhausted, and far craftier in bending the laws of magic to your liking than before.)~
   IF ~~ THEN DO
   ~ReallyForceSpellRES("w#vial01",LastTalkedToBy)
   TakePartyItem("w#vial01")
   DestroySelf()~
   EXIT
END
