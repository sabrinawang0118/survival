proc phselect data=casuser.svv_data;
   class C1 C2;
   model Time*Status(0) = C1 C2 X1-X4;
   strata C3;
   code file='ScoreCode.txt' showtime;
run;