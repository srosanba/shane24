title "How BI Customers Use Their Platforms";
%let path = _your_path_here_;


*--------------------------------------------------------------------------------;
*---------- generate dummy data ----------;
*--------------------------------------------------------------------------------;

proc format;
   value company
      1 = "SAP"
      2 = "IBM"
      3 = "Microsoft"
      4 = "SAS"
      5 = "Targit"
      6 = "Infor"
      7 = "LogiXML"
      8 = "Japsersoft"
      9 = "Tibco"
      10 = "Oracle"
      11 = "Tableau"
      12 = "MicroStrategy"
      ;
   value application
      1 = "Doing intermediate ad hoc analysis"
      2 = "Viewing static management reports"
      3 = "Monitoring scorecards"
      4 = "Doing complex ad hoc analysis"
      5 = "Using parameterized reports"
      6 = "Using personalized dashboards"
      7 = "Doing simple ad hoc analysis"
      8 = "Doing predictive analysis"
      ;
run;

data pbc;
   do company = 1 to 12;
      do application = 1 to 8;
         upper = 80*ranuni(1)/application;
         do customer = 1 to upper;
            output;
         end;
      end;
   end;
   format company company. application application.;
run;

ods trace on;
ods output crosstabfreqs=ctf;
proc freq data=pbc;
   table company*application;
run;


*--------------------------------------------------------------------------------;
*---------- stacked bar chart ----------;
*--------------------------------------------------------------------------------;

ods graphics / reset=all imagename="Stacked";
ods listing gpath="&path";
proc sgplot data=pbc pctlevel=group noborder;
   hbar company / group=application stat=percent;
   yaxis display=(nolabel noticks);
   xaxis label="Percent of Respondents";
   keylegend / title="" noborder;
run;


*--------------------------------------------------------------------------------;
*---------- paneled with rows ----------;
*--------------------------------------------------------------------------------;

ods graphics / reset=all imagename="PanelRows";
ods listing gpath="&path";
proc sgpanel data=ctf noautolegend;
   panelby application / 
      rows=8 
      novarname 
      noheaderborder 
      noborder
      start=bottomleft
      ;
   vbar company / 
      group=application 
      response=rowpercent
      ;
   rowaxis 
      label="Percent of Respondents"
      ;
   colaxis 
      display=(nolabel noline noticks) 
      valuesrotate=vertical
      ;
run;


*--------------------------------------------------------------------------------;
*---------- paneled with columns ----------;
*--------------------------------------------------------------------------------;

proc sql;
   create   table application as
   select   distinct application
   from     pbc
   ;
quit;

data sganno;
   set application;
   length function x1space y1space $20;
   retain 
      function "text"
      x1space  "layoutpercent"
      y1space  "layoutpercent"
      rotate   270
      width    100
      ;
   label=put(application,application.);
   x1 = 12.5 + 86.5*(application/8);
   y1 = 55;
run;

ods graphics / reset=all imagename="PanelColumns";
ods listing gpath="&path";
proc sgpanel data=ctf noautolegend sganno=sganno;
   panelby application / 
      columns=8 
      noheader 
      noborder
      ;
   hbar company / 
      group=application 
      response=rowpercent
      ;
   rowaxis 
      display=(nolabel noline noticks)
      ;
   colaxis 
      label="Percent of Respondents"
      ;
run;


