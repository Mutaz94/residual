Sat Oct  2 04:31:21 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat53.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1675.00468057314        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5366E+02 -4.6708E+01 -2.3557E+01 -1.4056E+01  2.8787E+01  3.3686E+01  1.3982E+01  9.2351E+00  4.2906E+01  1.9280E+01
            -5.0763E-01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1683.84958791941        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.7519E-01  1.0947E+00  1.0757E+00  1.0155E+00  1.0487E+00  1.1524E+00  9.0020E-01  9.4781E-01  7.5592E-01  8.7838E-01
             1.0323E+00
 PARAMETER:  7.4882E-02  1.9049E-01  1.7299E-01  1.1536E-01  1.4755E-01  2.4182E-01 -5.1407E-03  4.6403E-02 -1.7981E-01 -2.9681E-02
             1.3182E-01
 GRADIENT:  -7.7421E+00  1.2259E+01  6.7776E+00  8.8617E+00  1.8994E+01  2.7734E+01 -4.8969E+00 -3.7686E+00 -1.6321E+01 -1.0500E+01
            -2.0773E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1684.68816401412        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.8471E-01  9.9238E-01  9.2499E-01  1.0673E+00  9.1603E-01  1.1281E+00  9.6333E-01  8.3329E-01  7.2256E-01  7.2121E-01
             1.0273E+00
 PARAMETER:  8.4589E-02  9.2352E-02  2.2033E-02  1.6514E-01  1.2291E-02  2.2054E-01  6.2643E-02 -8.2375E-02 -2.2495E-01 -2.2683E-01
             1.2696E-01
 GRADIENT:   7.2715E+00  6.3110E+00  5.6864E+00  7.6189E+00  1.4620E+01  1.9618E+01 -6.9113E+00 -2.4530E+00 -1.6135E+01 -1.5182E+01
            -2.7416E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1687.20408900598        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.7929E-01  1.1497E+00  6.6603E-01  9.4955E-01  8.4627E-01  1.0680E+00  8.8620E-01  4.5184E-01  8.2217E-01  7.6358E-01
             1.0208E+00
 PARAMETER:  7.9075E-02  2.3950E-01 -3.0642E-01  4.8232E-02 -6.6919E-02  1.6583E-01 -2.0811E-02 -6.9443E-01 -9.5802E-02 -1.6973E-01
             1.2063E-01
 GRADIENT:  -7.5782E+00  8.8024E-01 -4.5855E+00  6.7217E+00  7.7075E-01 -2.7456E+00 -1.1941E+00  8.4977E-01  5.0451E-01  2.3836E+00
             2.6018E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1687.37967435828        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.8250E-01  1.0998E+00  6.8510E-01  9.8017E-01  8.3446E-01  1.0741E+00  9.3186E-01  3.3004E-01  8.0422E-01  7.7102E-01
             1.0182E+00
 PARAMETER:  8.2348E-02  1.9516E-01 -2.7819E-01  7.9971E-02 -8.0976E-02  1.7146E-01  2.9427E-02 -1.0085E+00 -1.1788E-01 -1.6004E-01
             1.1800E-01
 GRADIENT:  -7.4334E-01  2.0908E+00 -1.2137E+00  3.8905E+00 -7.0329E-01 -3.1752E-01  3.5129E-01  1.8567E-01  3.1458E-01  1.0707E+00
             8.3711E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1687.43377598058        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.8329E-01  1.1872E+00  6.3089E-01  9.2151E-01  8.4477E-01  1.0756E+00  8.8320E-01  1.4997E-01  8.3216E-01  7.6316E-01
             1.0173E+00
 PARAMETER:  8.3152E-02  2.7162E-01 -3.6062E-01  1.8258E-02 -6.8695E-02  1.7284E-01 -2.4205E-02 -1.7973E+00 -8.3727E-02 -1.7029E-01
             1.1716E-01
 GRADIENT:   3.0485E-02  2.1483E+00  4.6210E-01  1.5704E+00 -1.2727E+00  8.0003E-03 -3.4606E-03  2.0229E-02 -5.5115E-02  1.7466E-03
            -6.7233E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1687.43744104218        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1056
 NPARAMETR:  9.8331E-01  1.2078E+00  6.1988E-01  9.0687E-01  8.4961E-01  1.0756E+00  8.7235E-01  9.9001E-02  8.4027E-01  7.6363E-01
             1.0176E+00
 PARAMETER:  8.3165E-02  2.8880E-01 -3.7823E-01  2.2429E-03 -6.2983E-02  1.7289E-01 -3.6562E-02 -2.2126E+00 -7.4030E-02 -1.6967E-01
             1.1742E-01
 GRADIENT:  -3.9471E-02 -4.7986E-01 -3.3410E-01 -2.2115E-01  4.6143E-01 -7.5923E-03  3.0111E-02  1.1046E-02  3.0717E-02  9.1046E-02
             7.9886E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1687.44377022745        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1236
 NPARAMETR:  9.8331E-01  1.1952E+00  6.2238E-01  9.1473E-01  8.4445E-01  1.0756E+00  8.7940E-01  1.4447E-02  8.3543E-01  7.6298E-01
             1.0174E+00
 PARAMETER:  8.3164E-02  2.7829E-01 -3.7421E-01  1.0877E-02 -6.9066E-02  1.7284E-01 -2.8518E-02 -4.1373E+00 -7.9808E-02 -1.7052E-01
             1.1728E-01
 GRADIENT:  -1.9205E-02 -6.8573E-02 -7.0206E-02 -2.5464E-02 -1.5899E-02 -1.9803E-02  6.2360E-02  2.4282E-04  6.4567E-02  6.9137E-02
             2.5050E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1687.44518607075        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     1369
 NPARAMETR:  9.8405E-01  1.1949E+00  6.2218E-01  9.1492E-01  8.4447E-01  1.0780E+00  8.7990E-01  1.0000E-02  8.3575E-01  7.6327E-01
             1.0178E+00
 PARAMETER:  8.3946E-02  2.7823E-01 -3.7412E-01  1.0860E-02 -6.9063E-02  1.7475E-01 -2.8942E-02 -4.5551E+00 -8.0110E-02 -1.7099E-01
             1.1723E-01
 GRADIENT:   1.1054E-02  6.8646E-02  5.6282E-02 -9.2789E-02 -9.4362E-03 -2.6192E-02 -2.6870E-02  0.0000E+00 -2.5696E-02 -2.3960E-02
            -3.6039E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1369
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.0463E-05 -1.0046E-02 -3.7712E-04  3.8823E-03 -1.7046E-02
 SE:             2.9868E-02  2.2119E-02  1.7813E-04  2.4102E-02  2.2283E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9919E-01  6.4972E-01  3.4249E-02  8.7203E-01  4.4429E-01

 ETASHRINKSD(%)  1.0000E-10  2.5898E+01  9.9403E+01  1.9257E+01  2.5349E+01
 ETASHRINKVR(%)  1.0000E-10  4.5089E+01  9.9996E+01  3.4805E+01  4.4272E+01
 EBVSHRINKSD(%)  3.6566E-01  2.5673E+01  9.9455E+01  1.9887E+01  2.4895E+01
 EBVSHRINKVR(%)  7.2998E-01  4.4754E+01  9.9997E+01  3.5820E+01  4.3592E+01
 RELATIVEINF(%)  9.9166E+01  2.1259E+00  2.0109E-04  2.8557E+00  3.8791E+00
 EPSSHRINKSD(%)  4.3415E+01
 EPSSHRINKVR(%)  6.7981E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1687.4451860707536     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -952.29435950701543     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.56
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1687.445       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.20E+00  6.22E-01  9.15E-01  8.44E-01  1.08E+00  8.79E-01  1.00E-02  8.35E-01  7.63E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.603
Stop Time:
Sat Oct  2 04:31:39 CDT 2021