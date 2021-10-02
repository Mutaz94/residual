Sat Oct  2 00:14:26 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat81.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -992.258199802873        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9274E+02  4.3204E+00 -2.3119E-01  4.9383E+01  1.2406E+02  2.1447E+01 -2.3320E+01 -2.6044E+01 -3.0483E+01 -3.8349E+01
            -1.2074E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1408.73529793244        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0723E+00  1.0689E+00  1.0017E+00  1.0231E+00  9.7009E-01  1.1723E+00  9.4899E-01  1.0471E+00  9.0633E-01  8.6097E-01
             2.4024E+00
 PARAMETER:  1.6979E-01  1.6659E-01  1.0166E-01  1.2287E-01  6.9632E-02  2.5899E-01  4.7640E-02  1.4604E-01  1.6452E-03 -4.9698E-02
             9.7645E-01
 GRADIENT:   1.7577E+02  1.2834E+01  3.5134E+00  1.5522E+01  5.1692E+00  5.3249E+01  2.2645E+00 -6.4747E+00 -9.3506E-01  1.0247E+01
            -6.7399E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1415.22908671233        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0575E+00  1.0220E+00  8.2354E-01  1.0327E+00  8.3646E-01  1.0859E+00  1.1435E+00  1.2690E+00  8.8439E-01  4.5911E-01
             2.4484E+00
 PARAMETER:  1.5590E-01  1.2173E-01 -9.4149E-02  1.3221E-01 -7.8572E-02  1.8239E-01  2.3412E-01  3.3820E-01 -2.2858E-02 -6.7846E-01
             9.9545E-01
 GRADIENT:   1.3974E+02  1.4538E+01  3.7093E+00  1.8238E+01 -9.0914E+00  1.9619E+01  1.2366E+01  2.7676E+00  9.4519E+00  3.5125E+00
            -5.1843E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1420.74727229922        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.0387E+00  9.8730E-01  9.7526E-01  1.0553E+00  9.0047E-01  1.0583E+00  9.8499E-01  1.3835E+00  8.1820E-01  3.1887E-01
             2.7641E+00
 PARAMETER:  1.3793E-01  8.7223E-02  7.4951E-02  1.5381E-01 -4.8358E-03  1.5665E-01  8.4881E-02  4.2463E-01 -1.0065E-01 -1.0430E+00
             1.1167E+00
 GRADIENT:  -8.7404E+00 -5.8160E+00  1.4302E+00 -1.2444E+01 -7.7590E+00 -1.8632E+00  5.6310E-01  1.1517E+00 -3.6617E-01  1.6159E+00
             5.1546E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1423.26171532442        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      483
 NPARAMETR:  1.0399E+00  7.5397E-01  3.3063E+00  1.2832E+00  1.3036E+00  1.0548E+00  8.5016E-01  3.3081E+00  7.0348E-01  1.7902E-01
             2.8430E+00
 PARAMETER:  1.3913E-01 -1.8241E-01  1.2958E+00  3.4938E-01  3.6513E-01  1.5334E-01 -6.2335E-02  1.2964E+00 -2.5172E-01 -1.6203E+00
             1.1449E+00
 GRADIENT:  -5.8758E+00  1.0838E+01 -4.1806E+00  2.4676E+01  1.2537E+01 -1.5257E+00 -2.0311E+00 -8.3672E-01 -6.6454E+00  1.2401E-01
            -5.7904E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1425.25200697350        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      659
 NPARAMETR:  1.0420E+00  5.4272E-01  6.8847E+00  1.4253E+00  1.3505E+00  1.0567E+00  8.9117E-01  4.7541E+00  6.6431E-01  7.3708E-02
             2.8492E+00
 PARAMETER:  1.4110E-01 -5.1116E-01  2.0293E+00  4.5436E-01  4.0049E-01  1.5518E-01 -1.5225E-02  1.6590E+00 -3.0900E-01 -2.5076E+00
             1.1470E+00
 GRADIENT:  -7.6242E-01  5.5084E+00 -2.2449E+00  7.8530E+00 -4.8399E+00  4.8023E-01 -9.0644E-01  5.2872E+00 -1.2436E+00  1.5164E-02
            -8.2026E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1426.71051945260        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      834
 NPARAMETR:  1.0381E+00  2.9145E-01  2.2207E+01  1.6079E+00  1.3966E+00  1.0410E+00  1.2362E+00  7.1758E+00  5.9569E-01  1.5468E-02
             2.8577E+00
 PARAMETER:  1.3744E-01 -1.1329E+00  3.2004E+00  5.7495E-01  4.3403E-01  1.4022E-01  3.1205E-01  2.0707E+00 -4.1804E-01 -4.0690E+00
             1.1500E+00
 GRADIENT:  -9.9276E+00  6.3020E+00  6.2010E+00  6.4049E+00  6.0366E+00 -3.0922E+00 -8.3410E-01 -1.1967E+01 -1.9560E+00  2.1018E-03
             1.2302E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1426.88286098873        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1024
 NPARAMETR:  1.0410E+00  2.8156E-01  2.3510E+01  1.6146E+00  1.3999E+00  1.0473E+00  1.2690E+00  7.3399E+00  5.9910E-01  1.0000E-02
             2.8546E+00
 PARAMETER:  1.4021E-01 -1.1674E+00  3.2574E+00  5.7909E-01  4.3643E-01  1.4622E-01  3.3825E-01  2.0933E+00 -4.1233E-01 -4.6544E+00
             1.1489E+00
 GRADIENT:  -4.3050E+00  5.7496E+00  6.2026E+00  3.8145E+00  7.4673E+00 -8.1141E-01 -6.9631E-01 -1.2255E+01 -3.3352E-01  0.0000E+00
             1.2968E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1427.40535948834        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1207
 NPARAMETR:  1.0495E+00  2.5548E-01  2.3201E+01  1.6197E+00  1.4002E+00  1.0512E+00  1.2912E+00  7.3727E+00  5.9386E-01  1.0000E-02
             2.8464E+00
 PARAMETER:  1.4835E-01 -1.2646E+00  3.2442E+00  5.8227E-01  4.3659E-01  1.4994E-01  3.5558E-01  2.0978E+00 -4.2112E-01 -4.6544E+00
             1.1460E+00
 GRADIENT:   1.3914E+01  1.7814E+00  4.5623E+00 -2.6437E+01  1.0248E+01  9.8039E-01 -6.1832E-01 -9.0464E+00  1.6033E-01  0.0000E+00
             7.9713E+00

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1427.40535948834        NO. OF FUNC. EVALS.:  30
 CUMULATIVE NO. OF FUNC. EVALS.:     1237
 NPARAMETR:  1.0480E+00  2.5529E-01  2.3235E+01  1.6193E+00  1.4005E+00  1.0507E+00  1.2922E+00  7.3661E+00  5.9381E-01  1.0000E-02
             2.8479E+00
 PARAMETER:  1.4835E-01 -1.2646E+00  3.2442E+00  5.8227E-01  4.3659E-01  1.4994E-01  3.5558E-01  2.0978E+00 -4.2112E-01 -4.6544E+00
             1.1460E+00
 GRADIENT:   1.2717E+01  1.9014E+01 -2.5529E+01  1.4936E+02 -2.2366E+02  7.9795E-01 -6.1972E-01  4.1105E+01  1.7046E-01  0.0000E+00
            -8.3097E+01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1237
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.6305E-03 -5.8367E-03 -3.3407E-02  6.3316E-04 -1.6214E-04
 SE:             2.9176E-02  5.9057E-03  1.2606E-02  2.4302E-02  1.4441E-04
 N:                     100         100         100         100         100

 P VAL.:         8.4697E-01  3.2300E-01  8.0469E-03  9.7921E-01  2.6152E-01

 ETASHRINKSD(%)  2.2554E+00  8.0215E+01  5.7769E+01  1.8586E+01  9.9516E+01
 ETASHRINKVR(%)  4.4599E+00  9.6086E+01  8.2165E+01  3.3718E+01  9.9998E+01
 EBVSHRINKSD(%)  2.2565E+00  8.0794E+01  7.1549E+01  1.8797E+01  9.9468E+01
 EBVSHRINKVR(%)  4.4621E+00  9.6311E+01  9.1905E+01  3.4060E+01  9.9997E+01
 RELATIVEINF(%)  9.3803E+01  2.8278E-01  6.6865E+00  5.3650E+00  1.9097E-03
 EPSSHRINKSD(%)  2.4939E+01
 EPSSHRINKVR(%)  4.3659E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1427.4053594883428     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -692.25453292460463     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.36
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1427.405       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  2.55E-01  2.32E+01  1.62E+00  1.40E+00  1.05E+00  1.29E+00  7.37E+00  5.94E-01  1.00E-02  2.85E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.402
Stop Time:
Sat Oct  2 00:14:44 CDT 2021
