Sat Oct  2 05:20:57 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD4/TD2/dat99.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m99.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1685.36745824864        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2506E+02 -3.4981E+01 -6.1041E+01  5.1206E+01  7.9206E+01  7.2471E+01 -2.3366E+00  1.1821E+01  2.3098E+01  1.3798E+01
            -1.8056E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1693.01207967962        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.8926E-01  1.1055E+00  1.1710E+00  9.4678E-01  1.0329E+00  8.6192E-01  1.0193E+00  9.3495E-01  9.1254E-01  8.9737E-01
             1.1050E+00
 PARAMETER:  8.9203E-02  2.0031E-01  2.5782E-01  4.5313E-02  1.3236E-01 -4.8593E-02  1.1916E-01  3.2736E-02  8.4788E-03 -8.2838E-03
             1.9982E-01
 GRADIENT:  -3.2992E+01 -1.4851E+01  1.2980E+01 -3.6354E+01 -2.2626E+01 -2.7291E+01 -4.7567E+00  8.5680E-01 -4.7187E+00 -4.5280E+00
             1.1596E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1693.89483030840        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.8938E-01  1.1405E+00  1.1872E+00  9.2760E-01  1.0638E+00  9.0008E-01  1.0384E+00  7.6405E-01  8.7794E-01  9.7112E-01
             1.0974E+00
 PARAMETER:  8.9321E-02  2.3146E-01  2.7160E-01  2.4842E-02  1.6183E-01 -5.2757E-03  1.3772E-01 -1.6913E-01 -3.0172E-02  7.0696E-02
             1.9297E-01
 GRADIENT:  -2.9749E+01 -1.0894E+01  1.6538E+01 -3.7184E+01 -1.9244E+01 -8.7837E+00 -3.2179E+00 -8.4961E-01 -1.1092E+01 -1.5362E+00
             7.1338E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1695.91679801011        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      523
 NPARAMETR:  1.0024E+00  1.1235E+00  9.6099E-01  9.4609E-01  9.7966E-01  9.2334E-01  1.0861E+00  4.1683E-01  9.1716E-01  9.2131E-01
             1.0608E+00
 PARAMETER:  1.0235E-01  2.1642E-01  6.0204E-02  4.4582E-02  7.9453E-02  2.0244E-02  1.8263E-01 -7.7506E-01  1.3527E-02  1.8043E-02
             1.5900E-01
 GRADIENT:   2.5648E+00 -4.9508E-01 -3.2706E-01  1.7121E-01 -1.4219E+00  4.0304E-01  3.3456E-01  3.4496E-01  6.9867E-01  1.3287E+00
             8.9807E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1696.04363344787        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  1.0019E+00  1.3070E+00  8.2664E-01  8.2791E-01  1.0064E+00  9.2281E-01  9.7558E-01  2.2093E-01  9.9318E-01  9.0217E-01
             1.0626E+00
 PARAMETER:  1.0189E-01  3.6777E-01 -9.0388E-02 -8.8845E-02  1.0636E-01  1.9671E-02  7.5276E-02 -1.4099E+00  9.3157E-02 -2.9534E-03
             1.6071E-01
 GRADIENT:  -1.8847E+00  2.3626E+00 -1.1626E+00  3.7337E+00  1.0398E+00 -5.2250E-01 -5.5452E-01  1.2075E-01 -2.5984E-01 -1.8180E-01
             2.9520E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1696.08475420680        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      838
 NPARAMETR:  1.0025E+00  1.3259E+00  8.1888E-01  8.1209E-01  1.0112E+00  9.2362E-01  9.6835E-01  7.3198E-02  1.0067E+00  9.0477E-01
             1.0616E+00
 PARAMETER:  1.0250E-01  3.8212E-01 -9.9812E-02 -1.0815E-01  1.1113E-01  2.0548E-02  6.7835E-02 -2.5146E+00  1.0663E-01 -7.8646E-05
             1.5980E-01
 GRADIENT:   3.8946E+02  1.9997E+02  3.2786E+00  4.2848E+01  3.5638E+00  3.9029E+01  4.4393E+00  2.1401E-02  3.9224E+00  1.5324E-02
             7.9781E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1696.09740689507        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1014
 NPARAMETR:  1.0027E+00  1.3258E+00  8.1584E-01  8.1335E-01  1.0122E+00  9.2460E-01  9.6717E-01  3.3331E-02  1.0059E+00  9.0745E-01
             1.0613E+00
 PARAMETER:  1.0272E-01  3.8201E-01 -1.0354E-01 -1.0660E-01  1.1211E-01  2.1603E-02  6.6616E-02 -3.3013E+00  1.0584E-01  2.8804E-03
             1.5951E-01
 GRADIENT:   2.2181E-01 -1.3371E-01 -1.8672E-01  2.0819E-01  7.4322E-01  1.9539E-01 -1.6619E-01  2.4317E-03 -1.9919E-01 -1.4731E-01
            -3.1635E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1696.09948100051        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1176
 NPARAMETR:  1.0026E+00  1.3244E+00  8.1619E-01  8.1418E-01  1.0111E+00  9.2406E-01  9.6822E-01  1.0000E-02  1.0064E+00  9.0749E-01
             1.0619E+00
 PARAMETER:  1.0261E-01  3.8095E-01 -1.0311E-01 -1.0557E-01  1.1109E-01  2.1024E-02  6.7706E-02 -4.6240E+00  1.0638E-01  2.9273E-03
             1.6011E-01
 GRADIENT:  -4.5251E-02  3.4393E-02  2.6124E-02  7.7724E-03 -7.0830E-02 -2.5502E-02 -4.4711E-02  0.0000E+00  1.6227E-02  2.1208E-03
            -8.2138E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1176
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.5494E-04 -1.2569E-02 -2.9757E-04  5.5694E-03 -2.3494E-02
 SE:             2.9800E-02  2.2421E-02  1.2806E-04  2.2539E-02  2.2803E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9050E-01  5.7506E-01  2.0143E-02  8.0483E-01  3.0288E-01

 ETASHRINKSD(%)  1.6685E-01  2.4888E+01  9.9571E+01  2.4492E+01  2.3606E+01
 ETASHRINKVR(%)  3.3342E-01  4.3581E+01  9.9998E+01  4.2986E+01  4.1639E+01
 EBVSHRINKSD(%)  5.5879E-01  2.4383E+01  9.9606E+01  2.5600E+01  2.2318E+01
 EBVSHRINKVR(%)  1.1145E+00  4.2821E+01  9.9998E+01  4.4646E+01  3.9655E+01
 RELATIVEINF(%)  9.8518E+01  2.3167E+00  1.4198E-04  2.3329E+00  7.6194E+00
 EPSSHRINKSD(%)  4.2495E+01
 EPSSHRINKVR(%)  6.6932E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1696.0994810005059     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -960.94865443676770     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1696.099       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.32E+00  8.16E-01  8.14E-01  1.01E+00  9.24E-01  9.68E-01  1.00E-02  1.01E+00  9.07E-01  1.06E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       14.430
Stop Time:
Sat Oct  2 05:21:13 CDT 2021