Wed Sep 29 01:07:31 CDT 2021
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
$DATA ../../../../data/int/S1/dat45.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m45.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3360.81736754964        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1303E+02  4.4392E+01  1.1635E+02  8.6553E+01  1.7751E+02 -7.9312E-01 -2.1476E+01 -4.8849E+02 -1.1968E+02  1.9543E+00
            -2.9300E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3588.92920875071        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      149
 NPARAMETR:  1.0268E+00  1.0301E+00  1.1067E+00  8.8160E-01  9.2320E-01  8.2420E-01  9.9218E-01  1.5647E+00  9.1960E-01  9.1696E-01
             1.5684E+00
 PARAMETER:  1.2642E-01  1.2966E-01  2.0140E-01 -2.6022E-02  2.0093E-02 -9.3347E-02  9.2148E-02  5.4767E-01  1.6186E-02  1.3305E-02
             5.5006E-01
 GRADIENT:   1.6400E+02 -6.2641E+01  3.8959E+01 -2.4013E+02 -1.6967E+02 -1.9601E+02  8.3324E+00  3.1903E+01 -4.3887E+01  1.2434E+01
             5.4796E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3593.67665907568        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      333
 NPARAMETR:  1.0151E+00  1.0446E+00  1.2093E+00  8.7537E-01  9.7588E-01  8.3759E-01  1.0246E+00  1.6201E+00  9.2949E-01  9.1584E-01
             1.5778E+00
 PARAMETER:  1.1503E-01  1.4362E-01  2.9006E-01 -3.3105E-02  7.5584E-02 -7.7225E-02  1.2430E-01  5.8252E-01  2.6880E-02  1.2082E-02
             5.5603E-01
 GRADIENT:   1.2303E+02 -8.0181E+01  4.2841E+01 -2.2386E+02 -1.3782E+02 -1.8089E+02  1.0481E+01  2.6058E+01 -3.5594E+01  1.4949E+01
             5.5431E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3595.18155797936        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      522             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0150E+00  1.0456E+00  1.2100E+00  8.7654E-01  9.7781E-01  8.4070E-01  1.0175E+00  1.6207E+00  9.3168E-01  9.1582E-01
             1.5776E+00
 PARAMETER:  1.1491E-01  1.4460E-01  2.9063E-01 -3.1770E-02  7.7559E-02 -7.3526E-02  1.1735E-01  5.8285E-01  2.9238E-02  1.2062E-02
             5.5592E-01
 GRADIENT:   3.4353E+02 -2.6744E+01  4.9370E+01 -1.7967E+02 -1.1399E+02 -1.4648E+02  1.3527E+01  2.8980E+01 -3.1077E+01  1.6383E+01
             5.6115E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3595.68570935283        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      592
 NPARAMETR:  1.0150E+00  1.0456E+00  1.2100E+00  8.7654E-01  9.7781E-01  8.4071E-01  9.1418E-01  1.6205E+00  9.3168E-01  9.1582E-01
             1.5772E+00
 PARAMETER:  1.1492E-01  1.4458E-01  2.9065E-01 -3.1778E-02  7.7560E-02 -7.3509E-02  1.0274E-02  5.8275E-01  2.9238E-02  1.2062E-02
             5.5567E-01
 GRADIENT:   3.4363E+02 -3.9937E+01  4.9764E+01 -1.8626E+02 -1.0739E+02 -1.4625E+02  1.8115E-01  2.8891E+01 -3.5940E+01  1.4008E+01
             5.5922E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3618.04853664815        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:      761             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0152E+00  1.0527E+00  1.2100E+00  8.7639E-01  9.8750E-01  9.8924E-01  9.2419E-01  1.6205E+00  9.4749E-01  9.0347E-01
             1.5786E+00
 PARAMETER:  1.1506E-01  1.5138E-01  2.9059E-01 -3.1945E-02  8.7424E-02  8.9184E-02  2.1161E-02  5.8276E-01  4.6063E-02 -1.5077E-03
             5.5656E-01
 GRADIENT:   3.1145E+02 -3.2509E+01  4.6792E+01 -1.7203E+02 -9.8634E+01 -4.4213E+01  1.7369E+00  2.8557E+01 -2.9838E+01  1.3057E+01
             5.6374E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3624.74966490151        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:      925             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0152E+00  1.0564E+00  1.2100E+00  8.7641E-01  9.9129E-01  1.1226E+00  8.9801E-01  1.6204E+00  9.5347E-01  8.9940E-01
             1.5784E+00
 PARAMETER:  1.1506E-01  1.5487E-01  2.9063E-01 -3.1918E-02  9.1250E-02  2.1562E-01 -7.5725E-03  5.8267E-01  5.2358E-02 -6.0310E-03
             5.5643E-01
 GRADIENT:   2.9219E+02 -3.2198E+01  4.5870E+01 -1.6796E+02 -9.3856E+01  5.3813E+01 -1.2088E+00  2.8329E+01 -2.9044E+01  1.1730E+01
             5.6443E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3626.09515892267        NO. OF FUNC. EVALS.: 149
 CUMULATIVE NO. OF FUNC. EVALS.:     1074
 NPARAMETR:  1.0152E+00  1.0594E+00  1.2100E+00  8.7638E-01  9.9764E-01  1.1179E+00  9.0313E-01  1.6200E+00  9.6356E-01  8.9037E-01
             1.5784E+00
 PARAMETER:  1.1506E-01  1.5766E-01  2.9063E-01 -3.1955E-02  9.7635E-02  2.1147E-01 -1.8934E-03  5.8244E-01  6.2882E-02 -1.6116E-02
             5.5640E-01
 GRADIENT:   7.1220E+01 -8.8652E+01  3.6523E+01 -1.9857E+02 -1.0673E+02 -1.7295E+01 -3.2044E+00  2.5172E+01 -2.8803E+01  9.5532E+00
             5.5762E+02

0ITERATION NO.:   37    OBJECTIVE VALUE:  -3626.11786787025        NO. OF FUNC. EVALS.:  62
 CUMULATIVE NO. OF FUNC. EVALS.:     1136
 NPARAMETR:  1.0152E+00  1.0594E+00  1.2100E+00  8.7638E-01  9.9764E-01  1.1191E+00  9.0403E-01  1.6200E+00  9.6356E-01  8.9037E-01
             1.5784E+00
 PARAMETER:  1.1506E-01  1.5766E-01  2.9063E-01 -3.1955E-02  9.7635E-02  2.1256E-01 -8.9341E-04  5.8244E-01  6.2882E-02 -1.6115E-02
             5.5640E-01
 GRADIENT:   7.0715E+01 -1.0788E+02 -2.7647E+04  8.0312E+04 -1.1347E+02 -1.8959E+04  8.0521E+04 -5.0414E+03  8.0487E+04  7.7737E+00
            -1.3934E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1136
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.4380E-02  9.7426E-03 -5.2150E-02  1.0050E-01  9.6649E-03
 SE:             3.0885E-02  2.1307E-02  1.5842E-02  2.7232E-02  2.1107E-02
 N:                     100         100         100         100         100

 P VAL.:         2.6563E-01  6.4749E-01  9.9484E-04  2.2389E-04  6.4703E-01

 ETASHRINKSD(%)  1.0000E-10  2.8619E+01  4.6929E+01  8.7697E+00  2.9288E+01
 ETASHRINKVR(%)  1.0000E-10  4.9047E+01  7.1835E+01  1.6770E+01  4.9998E+01
 EBVSHRINKSD(%)  5.2325E-01  2.8713E+01  3.8091E+01  1.3212E+01  2.4029E+01
 EBVSHRINKVR(%)  1.0438E+00  4.9182E+01  6.1672E+01  2.4679E+01  4.2285E+01
 RELATIVEINF(%)  9.8950E+01  1.7104E+01  2.4275E+01  3.5508E+01  1.7896E+01
 EPSSHRINKSD(%)  4.2185E+01
 EPSSHRINKVR(%)  6.6574E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3626.1178678702481     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1972.0285081018374     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    33.93
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3626.118       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.06E+00  1.21E+00  8.76E-01  9.98E-01  1.12E+00  9.04E-01  1.62E+00  9.64E-01  8.90E-01  1.58E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.95E+07
 
 TH 2
+        3.90E+03  7.21E+06
 
 TH 3
+       -8.37E+03  3.43E+06  1.63E+06
 
 TH 4
+       -6.64E+00  4.21E+02 -6.31E+01  2.62E+07
 
 TH 5
+        1.44E+03 -1.21E+07 -5.74E+06  2.20E+02  2.02E+07
 
 TH 6
+       -6.00E+01 -1.59E+00 -5.55E+01  2.22E+02 -1.07E+00  3.56E+06
 
 TH 7
+        8.30E-02  7.63E+01  6.34E+06 -6.97E+02 -3.56E+01  2.17E+02  2.46E+07
 
 TH 8
+        1.78E+01  1.73E+06  1.00E+03 -3.30E+06 -2.90E+06 -3.36E+01 -5.25E+01  2.22E+05
 
 TH 9
+       -1.79E+07  4.43E+01 -5.95E+06 -5.59E+03  3.86E+01  2.03E+02 -2.31E+07 -3.01E+06  4.34E+07
 
 TH10
+       -1.94E+07 -5.67E+01 -6.43E+06 -5.56E+02  3.84E+01  2.11E-01 -2.50E+07 -3.25E+06  2.35E+07  5.08E+07
 
 TH11
+       -2.66E+01  5.05E+02  8.74E+05 -3.51E+06  1.92E+02 -2.00E+01  7.98E+01  2.45E+05 -3.19E+06 -3.46E+06  2.62E+05
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       47.765
Stop Time:
Wed Sep 29 01:08:20 CDT 2021
