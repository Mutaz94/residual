Wed Sep 29 15:09:25 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat57.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1763.86552946558        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5832E+02 -6.6328E+01 -5.9214E+01 -7.4286E+00  6.5869E+01  6.6875E+01  1.0816E+01  1.4326E+01  3.2111E+01  2.2387E+01
             5.7449E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1777.96638202592        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0204E+00  1.1164E+00  1.1793E+00  1.0000E+00  1.0522E+00  8.7917E-01  9.2346E-01  9.2187E-01  8.5519E-01  8.8415E-01
             8.0365E-01
 PARAMETER:  1.2020E-01  2.1015E-01  2.6491E-01  1.0003E-01  1.5088E-01 -2.8772E-02  2.0369E-02  1.8651E-02 -5.6427E-02 -2.3126E-02
            -1.1860E-01
 GRADIENT:  -3.3280E+01  1.4479E+01  1.8003E+01 -6.0419E+00 -6.6572E+00 -2.1073E+01 -1.3610E+00 -3.6452E+00 -1.3082E+01 -1.8265E+01
            -4.5901E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1779.70952737565        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0266E+00  1.0380E+00  1.3465E+00  1.0505E+00  1.0713E+00  8.6839E-01  6.3947E-01  8.8596E-01  1.0074E+00  9.8222E-01
             8.2007E-01
 PARAMETER:  1.2627E-01  1.3731E-01  3.9747E-01  1.4929E-01  1.6887E-01 -4.1111E-02 -3.4711E-01 -2.1081E-02  1.0736E-01  8.2060E-02
            -9.8362E-02
 GRADIENT:  -1.3041E+01  1.4513E+01  2.5569E+01  2.0906E+00 -2.6839E+01 -2.5739E+01  2.2501E+00 -9.9987E+00  8.0969E+00 -1.3003E+01
            -3.6567E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1785.08389826911        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0331E+00  1.3122E+00  1.4661E+00  8.6988E-01  1.2458E+00  9.2776E-01  3.4314E-01  1.4473E+00  1.2523E+00  1.1379E+00
             9.0102E-01
 PARAMETER:  1.3259E-01  3.7169E-01  4.8263E-01 -3.9397E-02  3.1975E-01  2.5015E-02 -9.6960E-01  4.6969E-01  3.2499E-01  2.2922E-01
            -4.2294E-03
 GRADIENT:   7.9758E-01 -5.3668E+00 -5.0016E+00  7.8105E+00  6.2054E+00  1.3765E+00  2.1138E+00  1.5641E+00  6.5532E+00  1.2450E+00
             7.3532E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1785.68745383767        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      725             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0356E+00  1.4293E+00  1.4858E+00  7.7568E-01  1.2822E+00  9.2604E-01  1.4856E-01  1.5674E+00  1.4056E+00  1.1625E+00
             8.8803E-01
 PARAMETER:  1.3500E-01  4.5715E-01  4.9598E-01 -1.5401E-01  3.4856E-01  2.3165E-02 -1.8067E+00  5.4940E-01  4.4047E-01  2.5056E-01
            -1.8749E-02
 GRADIENT:   7.6958E+02  4.7462E+02  4.3615E+00  6.6346E+01  1.9344E+01  4.7687E+01  3.8154E+00  1.3504E-01  3.2884E+01  2.3868E+00
             3.9351E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1785.71308004576        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      900
 NPARAMETR:  1.0358E+00  1.4296E+00  1.4853E+00  7.7628E-01  1.2863E+00  9.2673E-01  1.1689E-01  1.5940E+00  1.4265E+00  1.1647E+00
             8.8842E-01
 PARAMETER:  1.3520E-01  4.5740E-01  4.9564E-01 -1.5324E-01  3.5173E-01  2.3912E-02 -2.0465E+00  5.6625E-01  4.5521E-01  2.5245E-01
            -1.8310E-02
 GRADIENT:   6.6167E+00  2.8715E+00 -3.9208E-01  1.2341E+00  3.1027E-01  4.5195E-01  6.9905E-02  4.3387E-03  4.6788E-01 -4.8984E-02
             1.0091E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1785.73741533281        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1083
 NPARAMETR:  1.0321E+00  1.4235E+00  1.4938E+00  7.7769E-01  1.2858E+00  9.2579E-01  6.6096E-02  1.5976E+00  1.4283E+00  1.1655E+00
             8.8821E-01
 PARAMETER:  1.3163E-01  4.5312E-01  5.0135E-01 -1.5143E-01  3.5139E-01  2.2896E-02 -2.6167E+00  5.6852E-01  4.5649E-01  2.5317E-01
            -1.8552E-02
 GRADIENT:  -2.6637E+00  1.0182E+00 -4.3970E-01 -1.0597E+00  5.4189E-01  2.9881E-02  3.0619E-02  4.6136E-02  9.8012E-02 -5.0067E-03
             1.3876E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1785.95556710724        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1261
 NPARAMETR:  1.0330E+00  1.3614E+00  1.5818E+00  8.2490E-01  1.2799E+00  9.2764E-01  1.0000E-02  1.6005E+00  1.3485E+00  1.1647E+00
             8.8723E-01
 PARAMETER:  1.3251E-01  4.0854E-01  5.5855E-01 -9.2489E-02  3.4677E-01  2.4891E-02 -8.6857E+00  5.7031E-01  3.9897E-01  2.5247E-01
            -1.9650E-02
 GRADIENT:   4.8463E-01  5.9750E+00  9.5110E-01  2.5384E+00 -8.8743E-01  1.0041E+00  0.0000E+00 -2.1299E-01 -1.2263E+00  3.4243E-02
            -2.8221E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1786.02106870431        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1423
 NPARAMETR:  1.0338E+00  1.3335E+00  1.5866E+00  8.4203E-01  1.2722E+00  9.2532E-01  1.0000E-02  1.5778E+00  1.3223E+00  1.1607E+00
             8.8695E-01
 PARAMETER:  1.3323E-01  3.8781E-01  5.6161E-01 -7.1938E-02  3.4075E-01  2.2385E-02 -1.1136E+01  5.5601E-01  3.7939E-01  2.4900E-01
            -1.9966E-02
 GRADIENT:   7.5713E+02  3.5044E+02  3.7822E+00  5.0810E+01  2.2308E+01  4.7788E+01  0.0000E+00  1.2202E+00  3.2355E+01  2.6400E+00
             7.9278E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1786.02283006968        NO. OF FUNC. EVALS.: 132
 CUMULATIVE NO. OF FUNC. EVALS.:     1555
 NPARAMETR:  1.0342E+00  1.3332E+00  1.5840E+00  8.4312E-01  1.2718E+00  9.2532E-01  1.0000E-02  1.5761E+00  1.3215E+00  1.1601E+00
             8.8696E-01
 PARAMETER:  1.3368E-01  3.8760E-01  5.5997E-01 -7.0641E-02  3.4042E-01  2.2386E-02 -1.1136E+01  5.5492E-01  3.7878E-01  2.4851E-01
            -1.9950E-02
 GRADIENT:   3.9538E+00 -4.2567E-01  8.7523E-02  1.7828E-01  4.0261E-01  1.1810E-01  0.0000E+00  1.1648E-01  2.2853E-01  5.9414E-02
            -3.0334E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1555
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.6351E-04 -1.2215E-03 -3.0925E-02 -2.4857E-03 -3.3469E-02
 SE:             2.9890E-02  3.3343E-04  1.3058E-02  2.9223E-02  2.3404E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7962E-01  2.4897E-04  1.7872E-02  9.3222E-01  1.5269E-01

 ETASHRINKSD(%)  1.0000E-10  9.8883E+01  5.6254E+01  2.0985E+00  2.1595E+01
 ETASHRINKVR(%)  1.0000E-10  9.9988E+01  8.0863E+01  4.1529E+00  3.8526E+01
 EBVSHRINKSD(%)  3.8436E-01  9.9056E+01  6.0663E+01  2.5051E+00  1.8174E+01
 EBVSHRINKVR(%)  7.6725E-01  9.9991E+01  8.4526E+01  4.9474E+00  3.3046E+01
 RELATIVEINF(%)  9.9132E+01  1.1832E-03  6.6716E+00  1.3908E+01  2.9679E+01
 EPSSHRINKSD(%)  4.4031E+01
 EPSSHRINKVR(%)  6.8675E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1786.0228300696833     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1050.8720035059450     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.85
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.80
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1786.023       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.33E+00  1.58E+00  8.43E-01  1.27E+00  9.25E-01  1.00E-02  1.58E+00  1.32E+00  1.16E+00  8.87E-01
 


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
+        1.20E+03
 
 TH 2
+       -1.74E+01  6.33E+02
 
 TH 3
+        1.25E+00  3.71E+01  3.22E+01
 
 TH 4
+       -1.25E+01  6.01E+02 -5.88E+00  8.51E+02
 
 TH 5
+       -1.11E+00 -1.36E+02 -6.40E+01 -2.76E+01  3.52E+02
 
 TH 6
+        2.93E-01 -3.92E+00  4.30E-01 -2.88E+00 -4.91E-01  2.29E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        4.77E-02 -1.59E+01 -1.26E+01 -7.70E-01 -5.16E-01 -6.56E-03  0.00E+00  1.22E+01
 
 TH 9
+        2.60E+00 -1.10E+02  1.39E+00  6.74E+00  2.19E+00  4.87E-01  0.00E+00 -1.75E-01  1.02E+02
 
 TH10
+        5.32E-01 -4.41E+00 -3.58E+00 -1.74E+00 -4.68E+01  1.46E-01  0.00E+00  4.05E+00  9.15E-01  7.14E+01
 
 TH11
+       -8.28E+00 -3.31E+01 -6.84E+00 -1.56E+01  3.90E+00  1.92E+00  0.00E+00  2.10E+00  9.45E+00  1.85E+01  2.74E+02
 
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
 #CPUT: Total CPU Time in Seconds,       25.696
Stop Time:
Wed Sep 29 15:09:52 CDT 2021
