Sat Oct  2 05:22:38 CDT 2021
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
$DATA ../../../../data/SD4/D/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1635.74999835577        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0141E+02 -3.3645E+01 -1.6196E+01 -1.6201E+01 -4.1252E+00  6.9421E+00 -2.8958E+01  5.5178E+00 -2.4687E+01  2.3316E+01
             1.0379E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1655.48118165651        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0135E+00  1.1409E+00  1.1348E+00  9.6773E-01  1.1345E+00  1.2940E+00  1.3573E+00  9.8344E-01  1.1616E+00  8.4124E-01
             9.7372E-01
 PARAMETER:  1.1340E-01  2.3182E-01  2.2646E-01  6.7200E-02  2.2615E-01  3.5771E-01  4.0546E-01  8.3304E-02  2.4976E-01 -7.2878E-02
             7.3370E-02
 GRADIENT:  -8.6901E+00 -1.1346E+01  8.5093E+00 -6.2112E+00  2.2262E+01  3.4395E+01  5.3729E-01 -5.8688E+00  1.3799E+01 -6.2112E+00
            -6.6762E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1656.51139496563        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0160E+00  1.1210E+00  9.9068E-01  9.7043E-01  1.0339E+00  1.2933E+00  1.4276E+00  1.0664E+00  1.1181E+00  6.5483E-01
             9.7522E-01
 PARAMETER:  1.1592E-01  2.1420E-01  9.0638E-02  6.9980E-02  1.3330E-01  3.5717E-01  4.5601E-01  1.6432E-01  2.1164E-01 -3.2338E-01
             7.4912E-02
 GRADIENT:  -6.5207E+00 -7.4236E+00  4.1328E+00 -8.0813E+00  9.1111E+00  3.3674E+01  4.8293E+00 -6.2271E-01  1.3334E+01 -8.4339E+00
            -2.2010E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1659.12132689822        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0227E+00  1.1428E+00  9.0622E-01  9.6685E-01  1.0053E+00  1.1870E+00  1.3937E+00  8.8599E-01  1.0201E+00  7.3178E-01
             9.7663E-01
 PARAMETER:  1.2246E-01  2.3351E-01  1.5216E-03  6.6292E-02  1.0532E-01  2.7141E-01  4.3200E-01 -2.1052E-02  1.1989E-01 -2.1228E-01
             7.6354E-02
 GRADIENT:   1.2597E+00  2.9673E+00  1.3181E+00  2.4947E+00 -2.3463E+00 -2.6367E-01  1.9873E-01 -1.0688E-01  2.1467E-02  1.5484E-01
             6.4045E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1659.14859490932        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  1.0245E+00  1.2045E+00  8.3989E-01  9.1977E-01  1.0059E+00  1.2007E+00  1.3379E+00  8.2454E-01  1.0467E+00  7.2291E-01
             9.7683E-01
 PARAMETER:  1.2419E-01  2.8603E-01 -7.4482E-02  1.6373E-02  1.0587E-01  2.8293E-01  3.9113E-01 -9.2924E-02  1.4563E-01 -2.2447E-01
             7.6554E-02
 GRADIENT:   5.8414E+02  1.5296E+02  8.6559E-01  7.0389E+01  9.1197E+00  2.6332E+02  4.0049E+01  3.5830E-01  9.7683E+00  1.1014E+00
             1.0983E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1659.15432279172        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      892             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0244E+00  1.2063E+00  8.4077E-01  9.2043E-01  1.0058E+00  1.1969E+00  1.3383E+00  8.1916E-01  1.0460E+00  7.2241E-01
             9.7664E-01
 PARAMETER:  1.2408E-01  2.8755E-01 -7.3441E-02  1.7083E-02  1.0581E-01  2.7974E-01  3.9139E-01 -9.9482E-02  1.4501E-01 -2.2516E-01
             7.6358E-02
 GRADIENT:   5.8367E+02  1.5596E+02  1.9055E+00  7.1539E+01  7.8632E+00  2.5925E+02  4.0095E+01  1.4602E-01  9.5197E+00  8.6861E-01
             8.1970E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1659.15433171864        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1079
 NPARAMETR:  1.0244E+00  1.2062E+00  8.4086E-01  9.2047E-01  1.0059E+00  1.1969E+00  1.3384E+00  8.1916E-01  1.0460E+00  7.2251E-01
             9.7664E-01
 PARAMETER:  1.2408E-01  2.8746E-01 -7.3327E-02  1.7133E-02  1.0586E-01  2.7974E-01  3.9144E-01 -9.9477E-02  1.4498E-01 -2.2503E-01
             7.6359E-02
 GRADIENT:   2.8912E+00 -4.2996E-01 -1.5453E-01 -1.2322E-01  9.3625E-02  3.0325E+00  1.2557E-01  1.6100E-02  4.4347E-02  1.1739E-02
             2.0480E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1659.15434777453        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1249
 NPARAMETR:  1.0244E+00  1.2061E+00  8.4098E-01  9.2052E-01  1.0059E+00  1.1969E+00  1.3384E+00  8.1916E-01  1.0460E+00  7.2255E-01
             9.7663E-01
 PARAMETER:  1.2408E-01  2.8741E-01 -7.3186E-02  1.7179E-02  1.0588E-01  2.7974E-01  3.9147E-01 -9.9472E-02  1.4495E-01 -2.2497E-01
             7.6354E-02
 GRADIENT:  -1.0530E-03 -2.1557E-02 -1.3009E-01  9.0996E-03  8.0177E-02 -1.1544E-04  4.2058E-03  7.7075E-03  1.8301E-02  7.5184E-03
             1.5851E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1249
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6505E-04 -2.6451E-03 -2.9542E-02  3.2470E-04 -2.7023E-02
 SE:             2.9908E-02  2.4054E-02  1.2083E-02  2.2994E-02  1.8654E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9293E-01  9.1244E-01  1.4488E-02  9.8873E-01  1.4744E-01

 ETASHRINKSD(%)  1.0000E-10  1.9415E+01  5.9520E+01  2.2967E+01  3.7507E+01
 ETASHRINKVR(%)  1.0000E-10  3.5060E+01  8.3614E+01  4.0660E+01  6.0946E+01
 EBVSHRINKSD(%)  2.8701E-01  1.9140E+01  6.2655E+01  2.3394E+01  3.6533E+01
 EBVSHRINKVR(%)  5.7320E-01  3.4617E+01  8.6054E+01  4.1316E+01  5.9720E+01
 RELATIVEINF(%)  9.9213E+01  5.6203E+00  1.5394E+00  4.9989E+00  6.2041E+00
 EPSSHRINKSD(%)  4.4684E+01
 EPSSHRINKVR(%)  6.9401E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1659.1543477745302     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -924.00352121079197     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1659.154       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.21E+00  8.41E-01  9.21E-01  1.01E+00  1.20E+00  1.34E+00  8.19E-01  1.05E+00  7.23E-01  9.77E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.579
Stop Time:
Sat Oct  2 05:22:57 CDT 2021