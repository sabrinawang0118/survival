/* fit a Cox proportional hazards model to these data by using three classification effects for the variables C1–C3 and four regressor effects for the variables X1–X4. The ITHIST option displays a table that summarizes the steps of the optimization. */
proc phselect data=casuser.svv_data ithist;
   class C1-C3;
   model Time*Status(0) = C1-C3 X1-X4;
run;