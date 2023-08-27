         CLIPS (6.31 6/12/19)
CLIPS> (defrule read-destination
(initial-fact)
=>
(printout t crlf "                              Welcome! Please follow these rules for using this expert system properly:
                    *******************************************************************************************
                    1. This expert system is applicable only between Ramban to Banihal stretch of NH-44.
                    2. In case of traffic congestion, check by adding buffer distance accordingly.
                    3. Call immediately on contacts provided in case of landslides.
                    4. Enter distance upto 2 decimal places in kilometers for accurate results.
                    5. Fields are case sensitive.
                    *******************************************************************************************" crlf)

(printout t "Enter 1 if you are travelling from Ramban to Banihal:"crlf
            "Enter 2 if you are travelling from Banihal to Ramban:"crlf)
(assert (destination (read))))

CLIPS> (defrule read-distance
(destination ?destination)
=>
(if (= ?destination 1)
then
   (printout t "How far you have come from Ramban?"crlf)
(assert (distance (read)))
else
   (printout t "How away are you from Ramban?"crlf)
(assert (distance (read)))))

CLIPS> (defrule calculate-actdist
(distance ?distance)
=>
(assert (actdist (- ?distance 2))))
CLIPS> (defrule read-result1
(actdist ?actdist)
=>
(if (<= ?actdist 0.39)
  then
 (printout t "Relax! You are in Zone 1 with 0% probability of landslide occurence. You are safe." crlf)))

CLIPS> (defrule read-result2
(actdist ?actdist)
=>
(if (<= ?actdist 0.71)
  then
(if (> ?actdist 0.39)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result3
(actdist ?actdist)
=>
(if (<= ?actdist 1.24)
  then
(if (> ?actdist 0.71)
  then
 (printout t "Relax! You are in Zone 1 with 0% probability of landslide occurence. You are safe." crlf))))

CLIPS> (defrule read-result4
(actdist ?actdist)
=>
(if (<= ?actdist 1.38)
  then
(if (> ?actdist 1.24)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result5
(actdist ?actdist)
=>
(if (<= ?actdist 1.68)
  then
(if (> ?actdist 1.38)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result6
(actdist ?actdist)
=>
(if (<= ?actdist 1.98)
  then
(if (> ?actdist 1.68)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result7
(actdist ?actdist)
=>
(if (<= ?actdist 2.89)
  then
(if (> ?actdist 1.98)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result8
(actdist ?actdist)
=>
(if (<= ?actdist 3.75)
  then
(if (> ?actdist 2.89)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result9
(actdist ?actdist)
=>
(if (<= ?actdist 4.2)
  then
(if (> ?actdist 3.75)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result10
(actdist ?actdist)
=>
(if (<= ?actdist 4.61)
  then
(if (> ?actdist 4.2)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result11
(actdist ?actdist)
=>
(if (<= ?actdist 5.19)
  then
(if (> ?actdist 4.61)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result12
(actdist ?actdist)
=>
(if (<= ?actdist 5.56)
  then
(if (> ?actdist 5.19)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result13
(actdist ?actdist)
=>
(if (<= ?actdist 5.97)
  then
(if (> ?actdist 5.56)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result14
(actdist ?actdist)
=>
(if (<= ?actdist 7.29)
  then
(if (> ?actdist 5.97)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result15
(actdist ?actdist)
=>
(if (<= ?actdist 7.53)
  then
(if (> ?actdist 7.29)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result16
(actdist ?actdist)
=>
(if (<= ?actdist 8.08)
  then
(if (> ?actdist 7.53)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result17
(actdist ?actdist)
=>
(if (<= ?actdist 8.46)
  then
(if (> ?actdist 8.08)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result18
(actdist ?actdist)
=>
(if (<= ?actdist 8.71)
  then
(if (> ?actdist 8.46)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result19
(actdist ?actdist)
=>
(if (<= ?actdist 9.77)
  then
(if (> ?actdist 8.71)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result20
(actdist ?actdist)
=>
(if (<= ?actdist 10.32)
  then
(if (> ?actdist 9.77)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result21
(actdist ?actdist)
=>
(if (<= ?actdist 11.79)
  then
(if (> ?actdist 10.32)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result22
(actdist ?actdist)
=>
(if (<= ?actdist 12.86)
  then
(if (> ?actdist 11.79)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result23
(actdist ?actdist)
=>
(if (<= ?actdist 13.86)
  then
(if (> ?actdist 12.86)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result24
(actdist ?actdist)
=>
(if (<= ?actdist 14.13)
  then
(if (> ?actdist 13.86)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result25
(actdist ?actdist)
=>
(if (<= ?actdist 14.58)
  then
(if (> ?actdist 14.13)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result26
(actdist ?actdist)
=>
(if (<= ?actdist 15)
  then
(if (> ?actdist 14.58)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result27
(actdist ?actdist)
=>
(if (<= ?actdist 15.68)
  then
(if (> ?actdist 15)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result28
(actdist ?actdist)
=>
(if (<= ?actdist 16.29)
  then
(if (> ?actdist 15.68)
  then
 (printout t "Relax! You are in Zone 2 with 10% probability of landslide occurence. You are safe." crlf))))

CLIPS> (defrule read-result29
(actdist ?actdist)
=>
(if (<= ?actdist 16.65)
  then
(if (> ?actdist 16.29)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result30
(actdist ?actdist)
=>
(if (<= ?actdist 17.2)
  then
(if (> ?actdist 16.65)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result31
(actdist ?actdist)
=>
(if (<= ?actdist 18.14)
  then
(if (> ?actdist 17.2)
  then
 (printout t "Relax! You are in Zone 1 with 0% probability of landslide occurence. You are safe." crlf))))

CLIPS> (defrule read-result32
(actdist ?actdist)
=>
(if (<= ?actdist 19.39)
  then
(if (> ?actdist 18.14)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result33
(actdist ?actdist)
=>
(if (<= ?actdist 19.88)
  then
(if (> ?actdist 19.39)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result34
(actdist ?actdist)
=>
(if (<= ?actdist 24.74)
  then
(if (> ?actdist 19.88)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result35
(actdist ?actdist)
=>
(if (<= ?actdist 25.04)
  then
(if (> ?actdist 24.74)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result36
(actdist ?actdist)
=>
(if (<= ?actdist 28.39)
  then
(if (> ?actdist 25.04)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result37
(actdist ?actdist)
=>
(if (<= ?actdist 28.71)
  then
(if (> ?actdist 28.39)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result38
(actdist ?actdist)
=>
(if (<= ?actdist 30.46)
  then
(if (> ?actdist 28.71)
  then
 (printout t "You are in Zone 3 with 25% probability of landslide occurence."crlf
             "The risk is moderate. Avoid travelling in heavy rains."crlf))))

CLIPS> (defrule read-result39
(actdist ?actdist)
=>
(if (<= ?actdist 30.79)
  then
(if (> ?actdist 30.46)
  then
 (printout t "Warning! You are in Zone 5 with 60% probability of landslide occurence."crlf
             "It is a high risk zone."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))

CLIPS> (defrule read-result40
(actdist ?actdist)
=>
(if (<= ?actdist 31)
  then
(if (> ?actdist 30.79)
  then
 (printout t "Warning! You are in Zone 4 with 35% probability of landslide occurence."crlf
             "If it is raining heavily and congestion is there, drive back to flat region."crlf
             "National highway emergency contact: 1033"crlf
             "NDRF Helpline: 9711077372"crlf))))