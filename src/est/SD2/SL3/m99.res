Fri Oct  1 13:19:25 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat99.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2056.84316705599        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3106E+02 -5.5688E+01 -5.5101E+01  6.8057E+01  1.3009E+02  7.5785E+01 -1.8412E+01 -1.8285E+01  2.1913E+01  1.5708E+00
            -1.1385E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2067.33211206711        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0557E+00  1.1563E+00  1.0460E+00  9.8049E-01  9.2838E-01  9.1408E-01  1.0830E+00  1.0931E+00  9.4762E-01  9.6130E-01
             1.2453E+00
 PARAMETER:  1.5418E-01  2.4521E-01  1.4496E-01  8.0301E-02  2.5690E-02  1.0158E-02  1.7973E-01  1.8905E-01  4.6195E-02  6.0527E-02
             3.1934E-01
 GRADIENT:   1.3186E+02  5.6321E+01  2.9487E+01  4.8842E+01 -7.3096E+01 -8.6931E+00 -7.3671E+00 -1.7007E+01  4.1101E+00  1.5747E+01
             6.9012E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2076.50516180968        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  1.0543E+00  1.2671E+00  1.2382E+00  9.0379E-01  1.0075E+00  9.2768E-01  1.2855E+00  1.8916E+00  8.1009E-01  7.5785E-01
             1.1811E+00
 PARAMETER:  1.5286E-01  3.3671E-01  3.1363E-01 -1.1611E-03  1.0746E-01  2.4936E-02  3.5116E-01  7.3740E-01 -1.1061E-01 -1.7726E-01
             2.6649E-01
 GRADIENT:   1.2547E+02  5.3504E+01  2.2604E+01  1.2872E+00 -6.7440E+01 -2.9565E+00  1.7472E+01 -7.8553E+00 -6.5656E+00 -3.4355E+00
             3.2058E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2080.32785176269        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:      539             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0293E+00  1.2770E+00  1.2800E+00  8.9757E-01  1.0244E+00  9.3175E-01  1.2103E+00  1.9803E+00  8.4049E-01  7.9001E-01
             1.1770E+00
 PARAMETER:  1.2888E-01  3.4450E-01  3.4684E-01 -8.0621E-03  1.2409E-01  2.9310E-02  2.9085E-01  7.8323E-01 -7.3774E-02 -1.3571E-01
             2.6298E-01
 GRADIENT:   4.7074E+02  1.8613E+02  2.2732E+01  5.6673E+01 -5.6369E+01  3.4794E+01  2.4278E+01 -4.1105E+00 -2.1604E+00 -8.9550E-01
             3.5263E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2081.55716278031        NO. OF FUNC. EVALS.: 144
 CUMULATIVE NO. OF FUNC. EVALS.:      683             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0181E+00  1.1608E+00  1.2823E+00  8.9799E-01  1.0238E+00  9.2015E-01  1.0705E+00  1.9958E+00  9.4426E-01  8.0965E-01
             1.1787E+00
 PARAMETER:  1.1790E-01  2.4907E-01  3.4868E-01 -7.5954E-03  1.2351E-01  1.6787E-02  1.6812E-01  7.9106E-01  4.2650E-02 -1.1116E-01
             2.6438E-01
 GRADIENT:   4.1079E+02  4.3703E+01  6.7939E+00 -2.2486E+01 -3.3421E+01  3.2119E+01  2.0218E+00  8.2459E+00  3.8022E+00  2.1494E+00
             3.5063E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2082.86555187968        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      859
 NPARAMETR:  1.0180E+00  1.2223E+00  1.2823E+00  8.9798E-01  1.0238E+00  9.2114E-01  1.0779E+00  1.9614E+00  9.5043E-01  8.0716E-01
             1.1786E+00
 PARAMETER:  1.1788E-01  3.0070E-01  3.4865E-01 -7.6039E-03  1.2352E-01  1.7854E-02  1.7498E-01  7.7368E-01  4.9157E-02 -1.1423E-01
             2.6435E-01
 GRADIENT:   3.6271E+01  2.6993E+00  1.1025E+01 -2.3479E+01 -5.8679E+01 -2.0239E-01  3.3453E-01  8.5875E-01  1.4604E+00  6.9953E-01
             3.0905E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2084.20486072044        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1017
 NPARAMETR:  9.9890E-01  1.2073E+00  1.2595E+00  9.0496E-01  1.0390E+00  9.1547E-01  1.0802E+00  1.9528E+00  9.3456E-01  8.0185E-01
             1.1645E+00
 PARAMETER:  9.8896E-02  2.8840E-01  3.3074E-01  1.3256E-04  1.3826E-01  1.1680E-02  1.7713E-01  7.6925E-01  3.2323E-02 -1.2084E-01
             2.5231E-01
 GRADIENT:   3.1047E+02  1.0620E+02  2.8093E+00  3.0679E+01 -1.4425E+01  3.2763E+01  5.4921E+00  4.8990E+00  4.0400E+00 -1.4963E+00
             2.4589E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2084.64575805332        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1199
 NPARAMETR:  9.9988E-01  1.2071E+00  1.2714E+00  9.1020E-01  1.0465E+00  9.1711E-01  1.0831E+00  1.9530E+00  9.3438E-01  8.1312E-01
             1.1539E+00
 PARAMETER:  9.9877E-02  2.8821E-01  3.4010E-01  5.9075E-03  1.4544E-01  1.3477E-02  1.7980E-01  7.6938E-01  3.2132E-02 -1.0688E-01
             2.4314E-01
 GRADIENT:  -1.0269E+01 -5.5720E+00 -1.4856E+00 -1.0851E+01 -1.3316E+01 -1.6684E+00 -1.2653E+00  3.2795E-01  4.9886E-01 -2.0965E+00
             1.6375E+01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2084.64575805332        NO. OF FUNC. EVALS.:  29
 CUMULATIVE NO. OF FUNC. EVALS.:     1228
 NPARAMETR:  9.9982E-01  1.2069E+00  1.2716E+00  9.1015E-01  1.0466E+00  9.1803E-01  1.0830E+00  1.9522E+00  9.3444E-01  8.1317E-01
             1.1541E+00
 PARAMETER:  9.9877E-02  2.8821E-01  3.4010E-01  5.9075E-03  1.4544E-01  1.3477E-02  1.7980E-01  7.6938E-01  3.2132E-02 -1.0688E-01
             2.4314E-01
 GRADIENT:   4.6116E+04  1.5993E+04 -6.7747E+03  4.6108E+04 -1.5869E+04 -1.7166E+00  2.5650E+04  5.9167E+03 -4.6131E+04 -2.1581E+04
            -1.8956E+04
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.1         2.3         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1228
 NO. OF SIG. DIGITS IN FINAL EST.:  1.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.4335E-03 -7.3729E-03 -4.3724E-02  9.1357E-03 -3.8867E-02
 SE:             2.9970E-02  2.1864E-02  1.7824E-02  2.1918E-02  1.9228E-02
 N:                     100         100         100         100         100

 P VAL.:         8.5613E-01  7.3595E-01  1.4165E-02  6.7682E-01  4.3236E-02

 ETASHRINKSD(%)  1.0000E-10  2.6754E+01  4.0287E+01  2.6571E+01  3.5584E+01
 ETASHRINKVR(%)  1.0000E-10  4.6351E+01  6.4343E+01  4.6082E+01  5.8506E+01
 EBVSHRINKSD(%)  5.1705E-01  2.7871E+01  4.3977E+01  2.7339E+01  3.4335E+01
 EBVSHRINKVR(%)  1.0314E+00  4.7974E+01  6.8615E+01  4.7204E+01  5.6882E+01
 RELATIVEINF(%)  9.8439E+01  2.1092E+00  4.0469E+00  2.1305E+00  1.2079E+01
 EPSSHRINKSD(%)  3.5278E+01
 EPSSHRINKVR(%)  5.8110E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2084.6457580533233     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1165.7072248486506     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.32
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2084.646       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.21E+00  1.27E+00  9.10E-01  1.05E+00  9.17E-01  1.08E+00  1.95E+00  9.34E-01  8.13E-01  1.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.369
Stop Time:
Fri Oct  1 13:19:47 CDT 2021
