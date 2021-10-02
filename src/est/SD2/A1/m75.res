Fri Oct  1 09:35:25 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat75.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m75.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1610.09696154612        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1092E+02 -7.3871E+00  7.6180E+01 -5.6987E+01  1.5002E+02  4.0151E+01 -4.4731E+01 -7.8254E+01 -5.8918E+01 -6.4898E+01
            -7.3876E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1820.75881488494        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0278E+00  7.5674E-01  5.4380E-01  1.0858E+00  5.3052E-01  9.7938E-01  1.1938E+00  8.8186E-01  1.2349E+00  8.6654E-01
             1.5144E+00
 PARAMETER:  1.2742E-01 -1.7874E-01 -5.0918E-01  1.8234E-01 -5.3390E-01  7.9165E-02  2.7713E-01 -2.5725E-02  3.1102E-01 -4.3242E-02
             5.1505E-01
 GRADIENT:   2.6995E+02  4.5899E+01  9.2519E+01 -3.1655E+01 -4.3101E+01  7.7335E+00  7.6724E+00  4.9557E-01  3.6323E+01  2.8961E+01
            -7.8309E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1833.30894227370        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      244
 NPARAMETR:  1.0331E+00  6.9238E-01  6.1919E-01  1.3218E+00  5.7607E-01  1.0421E+00  1.5823E+00  2.8857E-01  1.0650E+00  7.4376E-01
             1.7766E+00
 PARAMETER:  1.3257E-01 -2.6762E-01 -3.7934E-01  3.7896E-01 -4.5152E-01  1.4127E-01  5.5891E-01 -1.1428E+00  1.6301E-01 -1.9603E-01
             6.7471E-01
 GRADIENT:   5.8072E+01  6.4868E+01  3.6542E+01  1.0557E+02 -3.6171E+01  1.8354E+01  3.2466E+00 -4.7161E-01 -9.8527E-01 -3.3744E+00
             1.3610E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1849.76015361322        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      422
 NPARAMETR:  1.0004E+00  4.8860E-01  4.4138E-01  1.2640E+00  4.2641E-01  9.9239E-01  1.6056E+00  2.6503E-01  1.0392E+00  6.0755E-01
             1.6924E+00
 PARAMETER:  1.0044E-01 -6.1622E-01 -7.1785E-01  3.3429E-01 -7.5235E-01  9.2360E-02  5.7353E-01 -1.2279E+00  1.3846E-01 -3.9832E-01
             6.2614E-01
 GRADIENT:  -4.1457E+00  1.0487E+01  1.1761E+01 -6.2668E+00 -1.5873E+01  1.0954E+00  1.6912E-02 -1.1493E+00 -3.9352E+00  1.6911E+00
            -1.1095E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1852.94418731521        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      599
 NPARAMETR:  9.9906E-01  2.9842E-01  4.8533E-01  1.3682E+00  4.1296E-01  9.9079E-01  2.3257E+00  6.3625E-01  1.0201E+00  5.7910E-01
             1.6963E+00
 PARAMETER:  9.9059E-02 -1.1093E+00 -6.2293E-01  4.1349E-01 -7.8440E-01  9.0751E-02  9.4401E-01 -3.5216E-01  1.1989E-01 -4.4627E-01
             6.2843E-01
 GRADIENT:   5.7078E+00  5.5464E+00  1.2332E+01 -1.4885E+00 -1.7575E+01  2.6635E+00  1.2602E+00  1.5066E+00  6.0375E+00  7.3442E+00
            -2.9326E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1854.20153795215        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      774
 NPARAMETR:  9.9509E-01  2.2695E-01  4.5326E-01  1.3820E+00  3.8483E-01  9.8349E-01  2.7308E+00  7.0282E-01  9.9070E-01  4.5234E-01
             1.7011E+00
 PARAMETER:  9.5080E-02 -1.3830E+00 -6.9129E-01  4.2352E-01 -8.5496E-01  8.3349E-02  1.1046E+00 -2.5265E-01  9.0660E-02 -6.9332E-01
             6.3126E-01
 GRADIENT:   1.6429E+00 -9.8127E-02  6.6708E+00  1.8920E+00 -9.8367E+00  2.0194E-01 -2.0976E+00 -9.7664E-01  4.5110E-01 -6.7858E-01
             1.0235E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1854.26932519684        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      949
 NPARAMETR:  9.9305E-01  2.0632E-01  4.5766E-01  1.3918E+00  3.8613E-01  9.8198E-01  2.9827E+00  7.1539E-01  9.8285E-01  4.5693E-01
             1.6975E+00
 PARAMETER:  9.3021E-02 -1.4783E+00 -6.8163E-01  4.3063E-01 -8.5159E-01  8.1815E-02  1.1928E+00 -2.3493E-01  8.2698E-02 -6.8323E-01
             6.2918E-01
 GRADIENT:  -3.9986E-01  1.5228E-01  2.0327E-01  1.4804E-01 -3.6494E-01  1.8800E-02  1.3800E-01 -1.3994E-01 -5.0054E-02 -8.4016E-02
            -4.1253E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1854.26932519684        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      971
 NPARAMETR:  9.9305E-01  2.0632E-01  4.5766E-01  1.3918E+00  3.8613E-01  9.8198E-01  2.9827E+00  7.1539E-01  9.8285E-01  4.5693E-01
             1.6975E+00
 PARAMETER:  9.3021E-02 -1.4783E+00 -6.8163E-01  4.3063E-01 -8.5159E-01  8.1815E-02  1.1928E+00 -2.3493E-01  8.2698E-02 -6.8323E-01
             6.2918E-01
 GRADIENT:  -3.9986E-01  1.5228E-01  2.0327E-01  1.4804E-01 -3.6494E-01  1.8800E-02  1.3800E-01 -1.3994E-01 -5.0054E-02 -8.4016E-02
            -4.1253E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      971
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9619E-03  3.4382E-02 -1.6085E-02 -1.6592E-02  6.2648E-03
 SE:             2.9621E-02  1.5359E-02  1.7360E-02  2.7780E-02  1.5075E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4719E-01  2.5185E-02  3.5417E-01  5.5034E-01  6.7773E-01

 ETASHRINKSD(%)  7.6448E-01  4.8545E+01  4.1842E+01  6.9333E+00  4.9496E+01
 ETASHRINKVR(%)  1.5231E+00  7.3524E+01  6.6177E+01  1.3386E+01  7.4493E+01
 EBVSHRINKSD(%)  1.0273E+00  5.9268E+01  3.8972E+01  5.7844E+00  4.6843E+01
 EBVSHRINKVR(%)  2.0441E+00  8.3409E+01  6.2756E+01  1.1234E+01  7.1743E+01
 RELATIVEINF(%)  9.6675E+01  6.2454E+00  3.5754E+00  4.6733E+01  2.5378E+00
 EPSSHRINKSD(%)  3.1542E+01
 EPSSHRINKVR(%)  5.3135E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1854.2693251968394     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -935.33079199216672     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1854.269       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  2.06E-01  4.58E-01  1.39E+00  3.86E-01  9.82E-01  2.98E+00  7.15E-01  9.83E-01  4.57E-01  1.70E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.067
Stop Time:
Fri Oct  1 09:35:42 CDT 2021
