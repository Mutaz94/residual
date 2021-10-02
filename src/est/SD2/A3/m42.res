Fri Oct  1 10:33:25 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat42.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   712.618769259558        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1209E+02  1.6929E+02  2.1324E+02  8.3422E+01  2.4713E+02  4.9271E+01 -1.1570E+02 -1.8842E+02 -1.1956E+02 -2.3780E+02
            -4.9741E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1420.44882152012        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.1659E+00  9.7949E-01  8.9372E-01  1.1837E+00  9.1475E-01  8.9351E-01  9.9766E-01  9.7152E-01  9.9819E-01  1.0620E+00
             5.4235E+00
 PARAMETER:  2.5349E-01  7.9274E-02 -1.2368E-02  2.6864E-01  1.0895E-02 -1.2594E-02  9.7661E-02  7.1110E-02  9.8186E-02  1.6015E-01
             1.7907E+00
 GRADIENT:   1.9490E+02  1.4011E+01 -1.6265E+01  5.4251E+01 -7.2326E+00 -1.3527E+01  1.1805E+01  7.5677E+00  2.5136E+01  2.4618E+01
             2.6306E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1458.73203014451        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0887E+00  6.2929E-01  2.3899E-01  1.2255E+00  3.2032E-01  8.7835E-01  4.0676E-01  3.2704E-02  1.5578E+00  2.6900E-01
             4.7288E+00
 PARAMETER:  1.8496E-01 -3.6316E-01 -1.3314E+00  3.0334E-01 -1.0384E+00 -2.9712E-02 -7.9953E-01 -3.3203E+00  5.4326E-01 -1.2130E+00
             1.6537E+00
 GRADIENT:   3.2493E+01  1.3457E+02  6.7461E+01  1.2480E+02 -1.5516E+02 -2.6766E+01 -1.9428E+00  1.1470E-02  2.2611E+01 -2.7354E-01
             2.1658E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1501.02144306872        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      276
 NPARAMETR:  1.0176E+00  5.6438E-01  2.1067E-01  1.1277E+00  3.1967E-01  9.1223E-01  4.0779E-01  1.0000E-02  1.3603E+00  5.0844E-01
             3.8746E+00
 PARAMETER:  1.1745E-01 -4.7202E-01 -1.4575E+00  2.2019E-01 -1.0405E+00  8.1416E-03 -7.9700E-01 -6.1123E+00  4.0772E-01 -5.7642E-01
             1.4545E+00
 GRADIENT:  -1.0292E+02 -4.6897E+00 -7.9662E+01  8.3008E+01  1.0904E+02 -2.4641E+01  6.0023E-01  0.0000E+00 -6.6463E+00  1.0826E+01
             1.0392E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1524.76204705068        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      452
 NPARAMETR:  1.0484E+00  3.8875E-01  1.8689E-01  1.0386E+00  2.5088E-01  9.6861E-01  2.0511E-01  1.0000E-02  1.4432E+00  5.0397E-01
             3.3575E+00
 PARAMETER:  1.4726E-01 -8.4482E-01 -1.5772E+00  1.3783E-01 -1.2828E+00  6.8110E-02 -1.4842E+00 -7.1799E+00  4.6685E-01 -5.8523E-01
             1.3112E+00
 GRADIENT:  -5.9293E+00  1.1371E+00 -1.8229E-01  6.2644E+00  3.5584E+00 -4.6100E-01 -3.2309E-02  0.0000E+00  1.5270E+00 -2.3556E+00
            -7.7894E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1524.98314312273        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      627
 NPARAMETR:  1.0509E+00  3.7884E-01  1.7630E-01  1.0160E+00  2.4131E-01  9.7110E-01  1.5700E-01  1.0000E-02  1.4620E+00  5.3560E-01
             3.3573E+00
 PARAMETER:  1.4966E-01 -8.7063E-01 -1.6355E+00  1.1586E-01 -1.3217E+00  7.0676E-02 -1.7515E+00 -7.3527E+00  4.7984E-01 -5.2436E-01
             1.3111E+00
 GRADIENT:  -1.2134E+00 -2.7406E-01 -4.6330E-01 -2.7233E-01  9.1198E-01  4.6539E-02  3.6830E-02  0.0000E+00  4.4556E-01 -8.9860E-03
             2.9101E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1524.99923861766        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      808
 NPARAMETR:  1.0515E+00  3.7850E-01  1.7638E-01  1.0163E+00  2.4127E-01  9.7108E-01  3.4925E-02  1.0000E-02  1.4601E+00  5.3912E-01
             3.3594E+00
 PARAMETER:  1.5026E-01 -8.7155E-01 -1.6351E+00  1.1613E-01 -1.3219E+00  7.0653E-02 -3.2545E+00 -7.3527E+00  4.7851E-01 -5.1781E-01
             1.3118E+00
 GRADIENT:  -5.6626E-02 -2.0826E-01 -9.1425E-02 -1.1719E-01  6.2361E-01  5.4840E-02  1.7457E-03  0.0000E+00  1.0466E-01  2.6788E-01
             6.8706E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1525.00052901968        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      970
 NPARAMETR:  1.0516E+00  3.7847E-01  1.7634E-01  1.0163E+00  2.4122E-01  9.7100E-01  1.0000E-02  1.0000E-02  1.4599E+00  5.3801E-01
             3.3581E+00
 PARAMETER:  1.5027E-01 -8.7162E-01 -1.6353E+00  1.1617E-01 -1.3221E+00  7.0566E-02 -4.6706E+00 -7.3527E+00  4.7836E-01 -5.1987E-01
             1.3114E+00
 GRADIENT:   1.6383E-02 -3.5249E-02  3.5820E-02  1.4069E-03  1.0504E-01  4.7077E-03  0.0000E+00  0.0000E+00  1.4976E-03  3.0692E-02
             1.0364E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      970
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.2571E-04 -9.5411E-05  2.0409E-04 -1.0389E-02  5.1895E-03
 SE:             2.8780E-02  1.3345E-04  2.0452E-04  2.6643E-02  2.0409E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7711E-01  4.7463E-01  3.1833E-01  6.9658E-01  7.9928E-01

 ETASHRINKSD(%)  3.5848E+00  9.9553E+01  9.9315E+01  1.0741E+01  3.1628E+01
 ETASHRINKVR(%)  7.0412E+00  9.9998E+01  9.9995E+01  2.0329E+01  5.3253E+01
 EBVSHRINKSD(%)  3.3472E+00  9.9550E+01  9.9319E+01  8.0925E+00  3.2333E+01
 EBVSHRINKVR(%)  6.5823E+00  9.9998E+01  9.9995E+01  1.5530E+01  5.4212E+01
 RELATIVEINF(%)  9.3117E+01  2.6888E-04  3.3758E-04  4.5256E+01  1.5729E+00
 EPSSHRINKSD(%)  2.3367E+01
 EPSSHRINKVR(%)  4.1274E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1525.0005290196809     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -606.06199581500823     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.03
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1525.001       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  3.78E-01  1.76E-01  1.02E+00  2.41E-01  9.71E-01  1.00E-02  1.00E-02  1.46E+00  5.38E-01  3.36E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.077
Stop Time:
Fri Oct  1 10:33:42 CDT 2021