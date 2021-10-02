Sat Oct  2 05:16:01 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat84.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m84.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1692.90069524046        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4115E+02 -4.2228E+01 -4.7693E+01  8.5120E+00  4.9712E+01  7.3057E+01 -1.0703E+01  1.3912E+01  3.1364E+00  1.4842E+00
            -2.1012E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1701.43860803459        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0376E+00  1.1444E+00  1.2952E+00  9.8402E-01  1.1666E+00  7.6810E-01  1.1222E+00  8.5967E-01  1.0182E+00  9.9662E-01
             1.1598E+00
 PARAMETER:  1.3687E-01  2.3489E-01  3.5863E-01  8.3890E-02  2.5408E-01 -1.6383E-01  2.1525E-01 -5.1209E-02  1.1807E-01  9.6618E-02
             2.4827E-01
 GRADIENT:  -1.3426E+01  6.1011E+00 -9.4430E+00  1.7264E+01  3.4150E+01 -5.7970E+01  4.0397E+00  2.1097E+00  2.3349E-01 -2.1788E+01
             2.5578E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1704.77778823851        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      368
 NPARAMETR:  1.0362E+00  1.0989E+00  1.7118E+00  9.9033E-01  1.2812E+00  8.2651E-01  8.9590E-01  5.0743E-01  1.1324E+00  1.2586E+00
             1.1692E+00
 PARAMETER:  1.3560E-01  1.9429E-01  6.3752E-01  9.0284E-02  3.4776E-01 -9.0543E-02 -9.9209E-03 -5.7840E-01  2.2432E-01  3.2998E-01
             2.5634E-01
 GRADIENT:  -1.0514E+01 -1.8384E+01  7.8971E+00 -2.2269E+01  1.5348E+01 -2.2620E+01  2.1759E+00 -1.2883E+00  6.9590E+00 -4.1462E+00
             2.4637E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1709.21241639646        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      543
 NPARAMETR:  1.0410E+00  1.1934E+00  1.1564E+00  9.3766E-01  1.1306E+00  8.7750E-01  1.0164E+00  2.6824E-01  1.0736E+00  1.1532E+00
             1.0676E+00
 PARAMETER:  1.4017E-01  2.7680E-01  2.4527E-01  3.5631E-02  2.2272E-01 -3.0683E-02  1.1630E-01 -1.2159E+00  1.7098E-01  2.4251E-01
             1.6539E-01
 GRADIENT:   3.0932E-01  1.9563E+00  2.7920E-01  1.5020E+00 -1.2919E+00 -3.3946E-01 -7.2098E-01  1.2722E-01 -3.1480E-01  1.1353E-01
             2.9741E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1709.27727279405        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      718
 NPARAMETR:  1.0403E+00  1.0607E+00  1.1844E+00  1.0216E+00  1.0821E+00  8.7770E-01  1.1182E+00  1.8529E-01  1.0035E+00  1.1348E+00
             1.0651E+00
 PARAMETER:  1.3952E-01  1.5891E-01  2.6922E-01  1.2137E-01  1.7889E-01 -3.0449E-02  2.1176E-01 -1.5858E+00  1.0354E-01  2.2650E-01
             1.6308E-01
 GRADIENT:   4.1858E-01  9.4246E-01 -5.7265E-02  1.1311E+00 -6.6057E-01  1.4943E-02  4.2001E-02  3.6181E-02  2.9637E-02  1.2428E-01
             1.2000E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1709.27868887520        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      893
 NPARAMETR:  1.0400E+00  1.0399E+00  1.1924E+00  1.0340E+00  1.0769E+00  8.7760E-01  1.1311E+00  1.6790E-01  9.9503E-01  1.1342E+00
             1.0650E+00
 PARAMETER:  1.3926E-01  1.3914E-01  2.7598E-01  1.3347E-01  1.7409E-01 -3.0569E-02  2.2320E-01 -1.6844E+00  9.5016E-02  2.2593E-01
             1.6297E-01
 GRADIENT:   8.0782E-02  1.0124E-02 -6.5882E-03  8.6100E-02 -9.7690E-02  3.8190E-02 -2.6349E-02  1.9652E-02  5.5384E-03  2.0244E-02
             6.2578E-03

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1709.27879552034        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1068
 NPARAMETR:  1.0400E+00  1.0317E+00  1.1930E+00  1.0389E+00  1.0738E+00  8.7745E-01  1.1378E+00  1.5387E-01  9.9133E-01  1.1334E+00
             1.0649E+00
 PARAMETER:  1.3919E-01  1.3118E-01  2.7645E-01  1.3818E-01  1.7122E-01 -3.0730E-02  2.2910E-01 -1.7717E+00  9.1293E-02  2.2521E-01
             1.6288E-01
 GRADIENT:   1.6013E-02 -3.2740E-01 -1.1639E-01 -2.3854E-01  1.0783E-01 -5.5885E-03 -1.3825E-02  1.4982E-02  3.6190E-02  5.6738E-02
             2.7369E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1709.29465408710        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1249
 NPARAMETR:  1.0403E+00  1.0829E+00  1.1632E+00  1.0053E+00  1.0846E+00  8.7765E-01  1.1056E+00  2.3710E-02  1.0129E+00  1.1343E+00
             1.0648E+00
 PARAMETER:  1.3953E-01  1.7963E-01  2.5115E-01  1.0524E-01  1.8122E-01 -3.0512E-02  2.0038E-01 -3.6418E+00  1.1280E-01  2.2598E-01
             1.6280E-01
 GRADIENT:  -1.0908E-01 -7.2530E-01 -2.5562E-01 -7.2966E-01 -2.4903E-03 -1.0776E-01  2.0016E-02  6.8086E-04  8.8670E-02  2.2795E-01
             1.1620E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1709.29813805243        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  1.0415E+00  1.1152E+00  1.1546E+00  9.8540E-01  1.0956E+00  8.7822E-01  1.0838E+00  1.0000E-02  1.0280E+00  1.1368E+00
             1.0652E+00
 PARAMETER:  1.4064E-01  2.0899E-01  2.4376E-01  8.5297E-02  1.9132E-01 -2.9860E-02  1.8051E-01 -4.6517E+00  1.2765E-01  2.2823E-01
             1.6312E-01
 GRADIENT:   2.5708E+00  4.3977E-02  1.7109E-02  8.2280E-02 -1.7129E-02  6.9752E-02  3.1530E-02  0.0000E+00  3.7638E-02  9.7738E-03
             2.8119E-03

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1709.29813805243        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1452
 NPARAMETR:  1.0422E+00  1.1136E+00  1.1540E+00  9.8442E-01  1.0955E+00  8.7780E-01  1.0819E+00  1.0000E-02  1.0269E+00  1.1366E+00
             1.0651E+00
 PARAMETER:  1.4064E-01  2.0899E-01  2.4376E-01  8.5297E-02  1.9132E-01 -2.9860E-02  1.8051E-01 -4.6517E+00  1.2765E-01  2.2823E-01
             1.6312E-01
 GRADIENT:  -2.5315E-01  1.4696E-01  2.1483E-02  1.6822E-01  1.0351E-02  2.3212E-02  1.7587E-02  0.0000E+00  2.5411E-02  3.6221E-03
             3.9544E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1452
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.9509E-04 -1.2455E-02 -2.5704E-04  1.8350E-03 -2.8630E-02
 SE:             2.9759E-02  1.8919E-02  1.2080E-04  2.4000E-02  2.3776E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8405E-01  5.1032E-01  3.3349E-02  9.3905E-01  2.2853E-01

 ETASHRINKSD(%)  3.0227E-01  3.6620E+01  9.9595E+01  1.9598E+01  2.0348E+01
 ETASHRINKVR(%)  6.0362E-01  5.9829E+01  9.9998E+01  3.5355E+01  3.6555E+01
 EBVSHRINKSD(%)  6.0802E-01  3.5738E+01  9.9616E+01  2.0352E+01  1.7731E+01
 EBVSHRINKVR(%)  1.2123E+00  5.8704E+01  9.9999E+01  3.6561E+01  3.2318E+01
 RELATIVEINF(%)  9.8007E+01  1.2555E+00  2.3123E-04  2.1827E+00  9.3514E+00
 EPSSHRINKSD(%)  4.1775E+01
 EPSSHRINKVR(%)  6.6099E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1709.2981380524282     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -974.14731148868998     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1709.298       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.12E+00  1.15E+00  9.85E-01  1.10E+00  8.78E-01  1.08E+00  1.00E-02  1.03E+00  1.14E+00  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.489
Stop Time:
Sat Oct  2 05:16:21 CDT 2021
