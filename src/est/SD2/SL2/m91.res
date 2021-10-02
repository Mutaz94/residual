Fri Oct  1 12:37:09 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat91.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m91.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2069.19740950338        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3573E+02 -4.5638E+01 -7.5261E+01  2.0393E+01  1.1331E+02  1.2904E+01  1.4078E+00  1.9744E+01 -1.0592E+01  1.0592E+01
             1.3293E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2076.99502811453        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      170
 NPARAMETR:  9.9220E-01  1.0057E+00  1.2557E+00  1.0713E+00  1.0019E+00  1.1805E+00  9.7471E-01  8.2781E-01  1.1789E+00  8.6066E-01
             9.6037E-01
 PARAMETER:  9.2170E-02  1.0571E-01  3.2770E-01  1.6888E-01  1.0188E-01  2.6590E-01  7.4386E-02 -8.8973E-02  2.6455E-01 -5.0060E-02
             5.9565E-02
 GRADIENT:   9.8177E+01  3.0057E+01  2.5773E+01  2.5723E+01 -3.3010E+00  4.2587E+01  8.2851E+00  4.7660E+00  1.7558E+01 -2.7127E+01
            -2.8255E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2083.92217909479        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.9004E-01  9.5925E-01  1.2273E+00  1.1072E+00  1.0043E+00  1.1353E+00  6.9482E-01  2.9748E-01  1.0611E+00  1.0039E+00
             9.5802E-01
 PARAMETER:  8.9986E-02  5.8398E-02  3.0484E-01  2.0185E-01  1.0428E-01  2.2693E-01 -2.6411E-01 -1.1124E+00  1.5928E-01  1.0394E-01
             5.7110E-02
 GRADIENT:   1.0258E+02  4.3113E+01  1.3571E+01  5.2620E+01  1.2803E+01  3.0695E+01 -3.4278E+00 -3.3626E-01 -2.0671E+01 -1.3722E+01
            -3.0468E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2092.25531680256        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      524
 NPARAMETR:  9.3899E-01  8.7652E-01  1.0694E+00  1.1240E+00  9.0009E-01  1.0195E+00  9.7381E-01  2.4140E-01  1.0338E+00  9.4312E-01
             9.8004E-01
 PARAMETER:  3.7044E-02 -3.1791E-02  1.6708E-01  2.1688E-01 -5.2622E-03  1.1929E-01  7.3457E-02 -1.3213E+00  1.3328E-01  4.1441E-02
             7.9833E-02
 GRADIENT:   1.3935E+01  7.2780E+00 -2.3715E+00  7.8732E+00  2.6677E+00 -2.1741E+00  4.3040E-01  6.0271E-01 -3.2867E+00  2.2790E+00
            -2.5966E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2092.61879526753        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      699
 NPARAMETR:  9.3244E-01  7.8874E-01  1.0831E+00  1.1726E+00  8.7426E-01  1.0231E+00  1.0108E+00  1.9666E-01  1.0080E+00  9.3181E-01
             9.8376E-01
 PARAMETER:  3.0050E-02 -1.3732E-01  1.7982E-01  2.5924E-01 -3.4382E-02  1.2285E-01  1.1074E-01 -1.5263E+00  1.0800E-01  2.9369E-02
             8.3628E-02
 GRADIENT:   7.8703E-01 -1.5700E-01 -2.4833E+00  1.1231E+00  3.5332E+00 -2.5631E-01 -4.7338E-01  3.2910E-01 -1.0974E+00  7.6351E-01
            -3.1489E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2092.62988177753        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:      889            RESET HESSIAN, TYPE II
 NPARAMETR:  9.3222E-01  7.8828E-01  1.0827E+00  1.1737E+00  8.7371E-01  1.0239E+00  1.0389E+00  1.9374E-01  1.0074E+00  9.3113E-01
             9.8399E-01
 PARAMETER:  2.9812E-02 -1.3790E-01  1.7944E-01  2.6018E-01 -3.5012E-02  1.2357E-01  1.3820E-01 -1.5412E+00  1.0739E-01  2.8641E-02
             8.3864E-02
 GRADIENT:   3.9567E+02  3.3403E+01  2.1818E+00  2.4460E+02  1.1478E+01  4.9918E+01  2.9810E+00  4.4473E-01  1.0176E+01  2.0981E+00
             1.3882E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2092.63369441960        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1051
 NPARAMETR:  9.3105E-01  7.8827E-01  1.0822E+00  1.1723E+00  8.7346E-01  1.0237E+00  1.0542E+00  1.9396E-01  1.0070E+00  9.2423E-01
             9.8374E-01
 PARAMETER:  2.8562E-02 -1.3792E-01  1.7898E-01  2.5897E-01 -3.5295E-02  1.2344E-01  1.5276E-01 -1.5401E+00  1.0693E-01  2.1209E-02
             8.3609E-02
 GRADIENT:  -2.2839E+00  2.1286E-02 -6.0009E-01 -1.4219E-01  2.8377E+00 -5.4893E-02  1.2399E-01  3.1645E-01  1.8356E-01  1.4702E-01
             7.4910E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2092.65162550548        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1234             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3247E-01  7.8854E-01  1.0824E+00  1.1720E+00  8.7307E-01  1.0241E+00  1.0487E+00  1.8547E-01  1.0071E+00  9.2451E-01
             9.8377E-01
 PARAMETER:  3.0082E-02 -1.3757E-01  1.7917E-01  2.5873E-01 -3.5742E-02  1.2383E-01  1.4755E-01 -1.5849E+00  1.0706E-01  2.1505E-02
             8.3638E-02
 GRADIENT:   3.9644E+02  3.3019E+01  4.3256E+00  2.4097E+02  1.0290E+01  5.0098E+01  3.2838E+00  3.8863E-01  1.0253E+01  8.1983E-01
             9.5557E-01

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2092.65162550548        NO. OF FUNC. EVALS.:  60
 CUMULATIVE NO. OF FUNC. EVALS.:     1294
 NPARAMETR:  9.3247E-01  7.8854E-01  1.0824E+00  1.1720E+00  8.7307E-01  1.0241E+00  1.0487E+00  1.8547E-01  1.0071E+00  9.2451E-01
             9.8377E-01
 PARAMETER:  3.0082E-02 -1.3757E-01  1.7917E-01  2.5873E-01 -3.5742E-02  1.2383E-01  1.4755E-01 -1.5849E+00  1.0706E-01  2.1505E-02
             8.3638E-02
 GRADIENT:  -5.3038E-01 -2.1109E+04  3.3041E-01  5.4822E-01  1.4518E+04 -5.7941E-02  9.5378E-03 -1.8341E+03  2.7134E+04  1.0285E-03
            -4.4162E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1294
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.4263E-04 -1.2109E-02 -5.9064E-03  2.1813E-03 -1.9000E-02
 SE:             2.9844E-02  1.4401E-02  3.3145E-03  2.7312E-02  2.5010E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8282E-01  4.0045E-01  7.4750E-02  9.3634E-01  4.4744E-01

 ETASHRINKSD(%)  1.8697E-02  5.1753E+01  8.8896E+01  8.5011E+00  1.6212E+01
 ETASHRINKVR(%)  3.7390E-02  7.6723E+01  9.8767E+01  1.6280E+01  2.9796E+01
 EBVSHRINKSD(%)  3.4936E-01  5.1965E+01  8.9060E+01  8.5075E+00  1.4716E+01
 EBVSHRINKVR(%)  6.9750E-01  7.6926E+01  9.8803E+01  1.6291E+01  2.7267E+01
 RELATIVEINF(%)  9.8679E+01  1.3356E+00  1.8025E-01  6.7681E+00  1.0428E+01
 EPSSHRINKSD(%)  3.2883E+01
 EPSSHRINKVR(%)  5.4953E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2092.6516255054826     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1173.7130923008099     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.12
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2092.652       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.32E-01  7.89E-01  1.08E+00  1.17E+00  8.73E-01  1.02E+00  1.05E+00  1.85E-01  1.01E+00  9.25E-01  9.84E-01
 


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
 #CPUT: Total CPU Time in Seconds,       20.166
Stop Time:
Fri Oct  1 12:37:30 CDT 2021