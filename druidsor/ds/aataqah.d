ADD_TRANS_TRIGGER AATAQAH 1 ~OR(7)
                               !Class(Player1,SORCERER)
                               !CheckStatGT(Player1,12,WIS)
                               !CheckStatGT(Player1,8,CHR)
                               Alignment(Player1,LAWFUL_GOOD)
                               Alignment(Player1,LAWFUL_EVIL)
                               Alignment(Player1,CHAOTIC_GOOD)
                               Alignment(Player1,CHAOTIC_EVIL)~ DO 1

ADD_TRANS_TRIGGER AATAQAH 2 ~OR(7)
                               !Class(Player1,SORCERER)
                               !CheckStatGT(Player1,12,WIS)
                               !CheckStatGT(Player1,8,CHR)
                               Alignment(Player1,LAWFUL_GOOD)
                               Alignment(Player1,LAWFUL_EVIL)
                               Alignment(Player1,CHAOTIC_GOOD)
                               Alignment(Player1,CHAOTIC_EVIL)~ DO 1


ADD_TRANS_TRIGGER AATAQAH 15 ~OR(7)
                               !Class(Player1,SORCERER)
                               !CheckStatGT(Player1,12,WIS)
                               !CheckStatGT(Player1,8,CHR)
                               Alignment(Player1,LAWFUL_GOOD)
                               Alignment(Player1,LAWFUL_EVIL)
                               Alignment(Player1,CHAOTIC_GOOD)
                               Alignment(Player1,CHAOTIC_EVIL)~

ADD_TRANS_TRIGGER AATAQAH 17 ~OR(7)
                               !Class(Player1,SORCERER)
                               !CheckStatGT(Player1,12,WIS)
                               !CheckStatGT(Player1,8,CHR)
                               Alignment(Player1,LAWFUL_GOOD)
                               Alignment(Player1,LAWFUL_EVIL)
                               Alignment(Player1,CHAOTIC_GOOD)
                               Alignment(Player1,CHAOTIC_EVIL)~

ADD_TRANS_TRIGGER AATAQAH 18 ~OR(7)
                               !Class(Player1,SORCERER)
                               !CheckStatGT(Player1,12,WIS)
                               !CheckStatGT(Player1,8,CHR)
                               Alignment(Player1,LAWFUL_GOOD)
                               Alignment(Player1,LAWFUL_EVIL)
                               Alignment(Player1,CHAOTIC_GOOD)
                               Alignment(Player1,CHAOTIC_EVIL)~ 

EXTEND_BOTTOM AATAQAH 1
IF ~Class(Player1,SORCERER)
    CheckStatGT(Player1,12,WIS)
    CheckStatGT(Player1,8,CHR)
    !Alignment(Player1,LAWFUL_GOOD)
    !Alignment(Player1,LAWFUL_EVIL)
    !Alignment(Player1,CHAOTIC_GOOD)
    !Alignment(Player1,CHAOTIC_EVIL)~ THEN REPLY #11474 GOTO CaedNewInterjection
END

EXTEND_BOTTOM AATAQAH 2
IF ~Class(Player1,SORCERER)
    CheckStatGT(Player1,12,WIS)
    CheckStatGT(Player1,8,CHR)
    !Alignment(Player1,LAWFUL_GOOD)
    !Alignment(Player1,LAWFUL_EVIL)
    !Alignment(Player1,CHAOTIC_GOOD)
    !Alignment(Player1,CHAOTIC_EVIL)~ THEN REPLY #11499 GOTO CaedNewInterjection
END

EXTEND_BOTTOM AATAQAH 5
IF ~Class(Player1,SORCERER)
    CheckStatGT(Player1,12,WIS)
    CheckStatGT(Player1,8,CHR)
    !Alignment(Player1,LAWFUL_GOOD)
    !Alignment(Player1,LAWFUL_EVIL)
    !Alignment(Player1,CHAOTIC_GOOD)
    !Alignment(Player1,CHAOTIC_EVIL)~ THEN REPLY @1 GOTO CaedNewInterjection2
END

EXTEND_BOTTOM AATAQAH 15
IF  ~Class(Player1,SORCERER)
    CheckStatGT(Player1,12,WIS)
    CheckStatGT(Player1,8,CHR)
    !Alignment(Player1,LAWFUL_GOOD)
    !Alignment(Player1,LAWFUL_EVIL)
    !Alignment(Player1,CHAOTIC_GOOD)
    !Alignment(Player1,CHAOTIC_EVIL)~ THEN DO ~~ GOTO More15
END

EXTEND_BOTTOM AATAQAH 17
IF  ~Class(Player1,SORCERER)
    CheckStatGT(Player1,12,WIS)
    CheckStatGT(Player1,8,CHR)
    !Alignment(Player1,LAWFUL_GOOD)
    !Alignment(Player1,LAWFUL_EVIL)
    !Alignment(Player1,CHAOTIC_GOOD)
    !Alignment(Player1,CHAOTIC_EVIL)~ THEN DO ~~ GOTO More15
END

EXTEND_BOTTOM AATAQAH 18
IF  ~Class(Player1,SORCERER)
    CheckStatGT(Player1,12,WIS)
    CheckStatGT(Player1,8,CHR)
    !Alignment(Player1,LAWFUL_GOOD)
    !Alignment(Player1,LAWFUL_EVIL)
    !Alignment(Player1,CHAOTIC_GOOD)
    !Alignment(Player1,CHAOTIC_EVIL)~ THEN DO ~~ GOTO More15
END

APPEND AATAQAH

  IF ~~ THEN BEGIN CaedNewInterjection SAY @2
    IF ~~ THEN GOTO 5
  END

  IF ~~ THEN BEGIN CaedNewInterjection2 SAY @3
    COPY_TRANS AATAQAH 5
  END
  /*
  IF ~~ THEN BEGIN CaedNewInterjection3 REPLY @5
    IF ~~ THEN GOTO More16
  END
   */
  IF ~~ THEN BEGIN More15 SAY @4
    IF ~~ THEN REPLY @5 GOTO More16
  END
  /*
  IF WEIGHT #-1 ~Dead("AataqahOgre")
                Class(Player1,SORCERER)
                CheckStatGT(Player1,12,WIS)
                CheckStatGT(Player1,8,CHR)
                !Alignment(Player1,LAWFUL_GOOD)
                !Alignment(Player1,LAWFUL_EVIL)
                !Alignment(Player1,CHAOTIC_GOOD)
                !Alignment(Player1,CHAOTIC_EVIL)~ THEN BEGIN ReplaceState16 SAY @4
    IF ~~ THEN REPLY @5 GOTO More16
  END

    IF WEIGHT #-1 ~NumDead("AataqahGibber",4)
                Class(Player1,SORCERER)
                CheckStatGT(Player1,12,WIS)
                CheckStatGT(Player1,8,CHR)
                !Alignment(Player1,LAWFUL_GOOD)
                !Alignment(Player1,LAWFUL_EVIL)
                !Alignment(Player1,CHAOTIC_GOOD)
                !Alignment(Player1,CHAOTIC_EVIL)~ THEN BEGIN ReplaceState16 SAY @4
    IF ~~ THEN REPLY @5 GOTO More16
  END
  */
/*    IF WEIGHT #+2 ~True()
                Class(Player1,SORCERER)
                CheckStatGT(Player1,12,WIS)
                CheckStatGT(Player1,8,CHR)
                !Alignment(Player1,LAWFUL_GOOD)
                !Alignment(Player1,LAWFUL_EVIL)
                !Alignment(Player1,CHAOTIC_GOOD)
                !Alignment(Player1,CHAOTIC_EVIL)~ THEN BEGIN ReplaceState16 SAY @4
    IF ~~ THEN REPLY @5 GOTO More16
  END                         */

  
  IF ~~ THEN BEGIN More16 SAY @6
    IF ~~ THEN REPLY @7 GOTO Yeehaw
    IF ~~ THEN REPLY @8 GOTO SodOff
  END
  
  IF ~~ THEN BEGIN Yeehaw SAY @9
    IF ~~ THEN DO ~ActionOverride(Player1,AddKit(CA#DSORC))
                   ApplySpellRES("CA#STLOS",Player1)
                   CreateVisualEffectObject("SPFLSRIN",Myself)
                   Wait(1)
                   PlaySound("EFF_M38")
                   CreateVisualEffectObject("SPFLESHS",Myself)
                   DestroySelf()~ EXIT
  END

  IF ~~ THEN BEGIN SodOff SAY @11
    IF ~~ THEN DO ~CreateVisualEffectObject("SPFLSRIN",Myself)
                   Wait(1)
                   PlaySound("EFF_M38")
                   CreateVisualEffectObject("SPFLESHS",Myself)
                   DestroySelf()~ EXIT
  END

END