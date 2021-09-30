Wed Sep 29 23:12:55 CDT 2021
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
$DATA ../../../../data/spa1/A2/dat28.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m28.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1077.27240022719        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3653E+02 -3.4814E+01  9.6032E+00 -6.1309E+01  1.6829E+02  3.7047E+01 -3.1676E+01  1.8828E+00 -5.3590E+01 -5.7649E+01
            -1.8707E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1685.65254858902        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  9.7583E-01  1.0246E+00  1.1369E+00  1.0985E+00  9.7302E-01  9.3423E-01  8.6587E-01  8.6553E-01  1.0641E+00  6.7481E-01
             1.9599E+00
 PARAMETER:  7.5532E-02  1.2434E-01  2.2833E-01  1.9395E-01  7.2645E-02  3.1962E-02 -4.4020E-02 -4.4412E-02  1.6212E-01 -2.9332E-01
             7.7288E-01
 GRADIENT:   8.7480E+01  2.3589E+01  2.1249E+01  2.5548E+01  1.8406E+01 -5.4343E+00  2.2091E+00 -1.3317E+00 -4.5839E+00 -8.7948E+00
            -2.5307E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1696.01531341552        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.7374E-01  1.1604E+00  5.3175E-01  9.6372E-01  6.9952E-01  9.9071E-01  9.3388E-01  5.9722E-01  1.1398E+00  3.2903E-01
             1.9978E+00
 PARAMETER:  7.3393E-02  2.4876E-01 -5.3159E-01  6.3048E-02 -2.5737E-01  9.0664E-02  3.1597E-02 -4.1546E-01  2.3086E-01 -1.0116E+00
             7.9204E-01
 GRADIENT:   6.7682E+01  6.2867E+01  2.0312E+01 -4.7047E+00 -2.3622E+01  1.5650E+01  6.2894E+00  3.3484E+00  4.1886E+00 -1.1112E+00
            -2.0741E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1719.65074573158        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      255
 NPARAMETR:  9.5374E-01  8.7719E-01  4.9682E-01  1.1036E+00  5.6870E-01  9.7631E-01  9.2891E-01  1.4095E-01  1.0408E+00  3.9225E-01
             2.3863E+00
 PARAMETER:  5.2636E-02 -3.1034E-02 -5.9953E-01  1.9855E-01 -4.6440E-01  7.6023E-02  2.6254E-02 -1.8593E+00  1.4000E-01 -8.3587E-01
             9.6973E-01
 GRADIENT:  -7.5758E+01  1.0202E+01  3.1669E+00 -2.8729E+01 -1.6704E+01  2.7261E+00 -9.0175E-01  2.8015E-01  3.1175E+00  2.0996E+00
             3.3569E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1726.60697612325        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      432
 NPARAMETR:  9.8239E-01  5.0834E-01  6.1001E-01  1.3763E+00  5.2279E-01  9.5042E-01  1.1892E+00  5.3456E-02  9.0332E-01  4.4019E-01
             2.4177E+00
 PARAMETER:  8.2234E-02 -5.7661E-01 -3.9428E-01  4.1937E-01 -5.4857E-01  4.9149E-02  2.7329E-01 -2.8289E+00 -1.6815E-03 -7.2055E-01
             9.8284E-01
 GRADIENT:  -6.4891E-01  2.3184E+01  5.0536E+00  6.0089E+01 -1.6293E+01 -3.4166E+00 -1.5832E+00  2.3289E-02 -5.8234E+00 -1.5632E+00
            -2.1764E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1732.16742576262        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      607
 NPARAMETR:  9.7959E-01  2.3893E-01  5.5197E-01  1.4570E+00  4.3200E-01  9.7010E-01  2.0135E+00  1.0000E-02  8.6724E-01  5.0653E-01
             2.3872E+00
 PARAMETER:  7.9374E-02 -1.3316E+00 -4.9426E-01  4.7640E-01 -7.3933E-01  6.9644E-02  7.9987E-01 -5.4995E+00 -4.2440E-02 -5.8018E-01
             9.7011E-01
 GRADIENT:   9.4577E+00  1.0551E+01  2.5845E+01  1.7047E+01 -3.9451E+01  5.3291E+00  2.2187E+00  0.0000E+00 -1.9956E+00  1.6759E+00
             6.7638E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1734.99251656885        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      782
 NPARAMETR:  9.6866E-01  8.3146E-02  4.5213E-01  1.4511E+00  3.5612E-01  9.4157E-01  3.2180E+00  1.0000E-02  8.8257E-01  4.7266E-01
             2.3665E+00
 PARAMETER:  6.8153E-02 -2.3872E+00 -6.9378E-01  4.7233E-01 -9.3249E-01  3.9791E-02  1.2688E+00 -9.2990E+00 -2.4918E-02 -6.4938E-01
             9.6141E-01
 GRADIENT:  -6.7043E-01  2.0161E+00  2.7435E+01 -1.3488E+01 -4.0402E+01 -4.4370E+00 -2.5649E-01  0.0000E+00 -6.3419E-01 -9.5820E-01
             6.0882E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1736.36216320215        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      957
 NPARAMETR:  9.6444E-01  1.7716E-02  5.0149E-01  1.5224E+00  3.8034E-01  9.4953E-01  6.9763E+00  1.0000E-02  8.4851E-01  4.8625E-01
             2.3583E+00
 PARAMETER:  6.3794E-02 -3.9333E+00 -5.9017E-01  5.2026E-01 -8.6668E-01  4.8215E-02  2.0425E+00 -1.4614E+01 -6.4273E-02 -6.2103E-01
             9.5795E-01
 GRADIENT:  -2.6343E+00  3.3921E-01  6.1745E+00  8.7976E+00 -9.5696E+00 -7.8321E-01 -2.2716E-02  0.0000E+00 -1.2962E+00 -1.3143E-01
            -5.3437E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1736.53204798999        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1135
 NPARAMETR:  9.6495E-01  1.0000E-02  4.8736E-01  1.5118E+00  3.7255E-01  9.5137E-01  1.0090E+01  1.0000E-02  8.5636E-01  4.8553E-01
             2.3552E+00
 PARAMETER:  6.4316E-02 -4.6526E+00 -6.1876E-01  5.1333E-01 -8.8738E-01  5.0147E-02  2.4115E+00 -1.7205E+01 -5.5067E-02 -6.2252E-01
             9.5661E-01
 GRADIENT:   2.0318E-01  0.0000E+00  3.5759E-01 -1.6747E+00 -1.0089E-02  1.9904E-02  5.6915E-03  0.0000E+00  3.7408E-02 -3.3034E-04
             3.6536E-02

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1736.53219947885        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:     1235
 NPARAMETR:  9.6492E-01  1.0000E-02  4.8721E-01  1.5118E+00  3.7250E-01  9.5132E-01  9.8495E+00  1.0000E-02  8.5622E-01  4.8557E-01
             2.3549E+00
 PARAMETER:  6.4292E-02 -4.6526E+00 -6.1905E-01  5.1332E-01 -8.8751E-01  5.0098E-02  2.3874E+00 -1.7205E+01 -5.5224E-02 -6.2243E-01
             9.5649E-01
 GRADIENT:   1.5661E-01  0.0000E+00  1.1920E-01 -1.5586E+00  2.4658E-01 -1.7943E-03 -3.4930E-04  0.0000E+00 -4.3453E-02 -2.7566E-03
            -7.8790E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1235
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.9392E-04 -3.3243E-04  1.2126E-04 -7.6832E-03 -5.4011E-03
 SE:             2.9329E-02  1.5763E-03  2.6258E-04  2.8049E-02  1.8260E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8112E-01  8.3297E-01  6.4422E-01  7.8415E-01  7.6740E-01

 ETASHRINKSD(%)  1.7430E+00  9.4719E+01  9.9120E+01  6.0318E+00  3.8826E+01
 ETASHRINKVR(%)  3.4557E+00  9.9721E+01  9.9992E+01  1.1700E+01  6.2578E+01
 EBVSHRINKSD(%)  1.8158E+00  9.4863E+01  9.9067E+01  5.8803E+00  3.8980E+01
 EBVSHRINKVR(%)  3.5987E+00  9.9736E+01  9.9991E+01  1.1415E+01  6.2765E+01
 RELATIVEINF(%)  8.2470E+01  1.6464E-02  4.1253E-04  1.1796E+01  1.3214E+00
 EPSSHRINKSD(%)  2.4437E+01
 EPSSHRINKVR(%)  4.2903E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1736.5321994788455     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -817.59366627417285     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.88
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     8.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1736.532       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.65E-01  1.00E-02  4.87E-01  1.51E+00  3.73E-01  9.51E-01  9.85E+00  1.00E-02  8.56E-01  4.86E-01  2.35E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        8.66E+02
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -2.54E+02  0.00E+00  3.72E+03
 
 TH 4
+       -1.39E+02  0.00E+00  1.45E+02  2.53E+01
 
 TH 5
+        6.09E+02  0.00E+00 -6.80E+03 -2.87E+02  1.25E+04
 
 TH 6
+       -3.26E+00  0.00E+00  2.79E+00  5.76E-01 -5.62E+00  1.32E-02
 
 TH 7
+        9.50E-03  0.00E+00 -3.25E-02 -2.37E-03  6.06E-02 -5.07E-05  3.46E-07
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.46E+01  0.00E+00 -2.75E+01 -6.06E+00  5.59E+01 -1.39E-01  5.21E-04  0.00E+00  1.47E+00
 
 TH10
+        1.59E+01  0.00E+00 -6.19E+01 -4.19E+00  1.15E+02 -8.87E-02  6.41E-04  0.00E+00  9.10E-01  1.19E+00
 
 TH11
+        2.16E+01  0.00E+00  5.09E+00 -3.15E+00 -5.59E+00 -7.56E-02  1.44E-04  0.00E+00  8.10E-01  2.18E-01  5.76E-01
 
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
+        1.27E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -5.03E+01  0.00E+00  3.92E+03
 
 TH 4
+       -2.00E+01  0.00E+00 -1.69E+02  5.85E+02
 
 TH 5
+        1.11E+02  0.00E+00 -6.63E+03 -3.34E+02  1.23E+04
 
 TH 6
+        2.44E+00  0.00E+00  5.13E+00 -6.64E+00  2.37E+00  2.04E+02
 
 TH 7
+        2.29E-04  0.00E+00 -1.33E-02 -8.43E-03  6.44E-02  5.87E-04  1.11E-03
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        8.04E+00  0.00E+00  4.71E+01 -3.83E+00  7.18E+01  1.12E+00  2.67E-02  0.00E+00  2.00E+02
 
 TH10
+       -6.82E+00  0.00E+00 -7.83E+01  4.59E+00  9.55E+01 -2.18E+00  1.49E-02  0.00E+00 -3.76E+00  1.16E+02
 
 TH11
+       -1.50E+01  0.00E+00 -1.05E-01 -1.05E+01 -2.43E+01  2.92E+00  5.97E-03  0.00E+00  1.14E+01  4.06E+01  8.81E+01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.27E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+        1.77E+02  0.00E+00  3.61E+03
 
 TH 4
+       -1.16E+02  0.00E+00 -2.40E+01  5.88E+02
 
 TH 5
+       -5.56E+02  0.00E+00 -6.48E+03 -4.30E+02  1.27E+04
 
 TH 6
+       -7.92E+01  0.00E+00  1.25E+02 -4.35E+01 -2.75E+02  1.63E+02
 
 TH 7
+        2.04E-02  0.00E+00 -2.16E-02 -2.13E-02  7.21E-02 -1.05E-02  1.38E-05
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.12E+02  0.00E+00  9.16E+01 -9.56E+01 -1.14E+02 -1.42E+01  3.63E-02  0.00E+00  2.54E+02
 
 TH10
+        5.07E+01  0.00E+00 -1.26E+02 -2.48E+01  1.85E+02  5.81E+00  2.19E-02  0.00E+00 -5.54E+00  1.29E+02
 
 TH11
+        2.21E+02  0.00E+00  1.85E+02 -2.16E+02 -2.77E+02  3.64E+01  1.69E-02  0.00E+00  1.59E+02  3.85E+01  7.53E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       26.965
Stop Time:
Wed Sep 29 23:13:24 CDT 2021
