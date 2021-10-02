Fri Oct  1 23:10:21 CDT 2021
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
$DATA ../../../../data/SD4/B/dat5.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m5.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1667.40189400366        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0663E+02 -1.5089E+01 -3.2079E+00 -6.0410E+00 -1.3152E+01  3.7806E+01 -3.9829E+00  1.0947E+01  1.4129E+01  7.6124E+00
             5.6058E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1675.44603697361        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  9.3724E-01  1.0316E+00  1.0136E+00  1.0089E+00  1.0130E+00  8.4280E-01  1.0350E+00  9.5345E-01  9.5986E-01  9.9099E-01
             8.7469E-01
 PARAMETER:  3.5181E-02  1.3112E-01  1.1356E-01  1.0885E-01  1.1288E-01 -7.1024E-02  1.3442E-01  5.2327E-02  5.9035E-02  9.0947E-02
            -3.3883E-02
 GRADIENT:  -1.7392E+01 -9.6831E+00  7.3731E+00 -2.4660E+01 -2.6115E+01 -5.2049E+01 -8.0758E+00  6.7172E+00  2.7746E+00  8.5799E-02
             5.0026E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1679.66882235802        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      287
 NPARAMETR:  9.4264E-01  9.9439E-01  1.0055E+00  1.0553E+00  1.0565E+00  9.2387E-01  1.1976E+00  6.3258E-01  8.3053E-01  1.0755E+00
             8.3126E-01
 PARAMETER:  4.0933E-02  9.4375E-02  1.0553E-01  1.5385E-01  1.5498E-01  2.0813E-02  2.8029E-01 -3.5794E-01 -8.5697E-02  1.7278E-01
            -8.4810E-02
 GRADIENT:   1.8687E+00  3.6488E-01 -1.6032E+01  2.7774E+01  4.0638E+01 -1.1086E+01 -9.0987E+00  6.7500E-01 -1.1229E+01 -2.1295E+00
            -1.6769E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1682.87916046988        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      463
 NPARAMETR:  9.4415E-01  8.8473E-01  8.1461E-01  1.1009E+00  8.5437E-01  9.4532E-01  1.4172E+00  3.1892E-01  8.1970E-01  8.6772E-01
             8.5163E-01
 PARAMETER:  4.2528E-02 -2.2472E-02 -1.0504E-01  1.9610E-01 -5.7391E-02  4.3772E-02  4.4870E-01 -1.0428E+00 -9.8822E-02 -4.1882E-02
            -6.0605E-02
 GRADIENT:   2.7759E+00  7.5738E+00 -9.8831E-01  1.0234E+01 -2.8492E-01 -2.1060E+00  7.5454E-01  7.5410E-01  4.2683E-01 -1.4378E+00
            -2.4804E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1683.24070675805        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      638
 NPARAMETR:  9.4242E-01  7.5715E-01  7.9971E-01  1.1652E+00  7.9572E-01  9.5050E-01  1.5911E+00  1.6295E-01  7.8020E-01  8.5303E-01
             8.5453E-01
 PARAMETER:  4.0692E-02 -1.7819E-01 -1.2350E-01  2.5286E-01 -1.2851E-01  4.9232E-02  5.6444E-01 -1.7143E+00 -1.4820E-01 -5.8966E-02
            -5.7205E-02
 GRADIENT:  -2.5856E-01 -7.8635E-01 -9.2922E-01 -2.3728E-01  1.0288E+00  1.6858E-01  7.1955E-02  1.1867E-01  1.2773E-01  1.6491E-02
            -7.6302E-04

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1683.28443750589        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      819
 NPARAMETR:  9.4289E-01  7.5846E-01  7.8503E-01  1.1622E+00  7.8648E-01  9.4956E-01  1.5897E+00  6.7534E-02  7.7927E-01  8.4795E-01
             8.5472E-01
 PARAMETER:  4.1190E-02 -1.7647E-01 -1.4204E-01  2.5033E-01 -1.4018E-01  4.8241E-02  5.6354E-01 -2.5951E+00 -1.4940E-01 -6.4933E-02
            -5.6986E-02
 GRADIENT:   5.1008E-01 -6.3926E-01  1.3005E-01 -1.6111E+00 -1.2603E+00 -2.7987E-01  5.1570E-02  2.0085E-02  1.2613E-01  6.6116E-01
             2.3261E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1683.31478204503        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      995
 NPARAMETR:  9.4348E-01  7.8567E-01  7.8064E-01  1.1470E+00  7.9511E-01  9.5063E-01  1.5507E+00  1.3896E-02  7.8579E-01  8.4587E-01
             8.5484E-01
 PARAMETER:  4.1822E-02 -1.4122E-01 -1.4763E-01  2.3718E-01 -1.2928E-01  4.9369E-02  5.3871E-01 -4.1762E+00 -1.4106E-01 -6.7389E-02
            -5.6846E-02
 GRADIENT:   1.4879E+00  5.2814E-02 -4.9626E-01  3.7074E-01  5.5295E-01  9.7521E-02  1.3706E-01  8.9560E-04  6.2777E-02  2.8067E-02
             2.6186E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1683.31517516013        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1092
 NPARAMETR:  9.4357E-01  7.8560E-01  7.8099E-01  1.1463E+00  7.9487E-01  9.5057E-01  1.5510E+00  1.0000E-02  7.8561E-01  8.4573E-01
             8.5478E-01
 PARAMETER:  4.1920E-02 -1.4131E-01 -1.4719E-01  2.3652E-01 -1.2958E-01  4.9308E-02  5.3892E-01 -5.1041E+00 -1.4129E-01 -6.7555E-02
            -5.6908E-02
 GRADIENT:   1.7547E+00 -8.7839E-02  8.3218E-01 -1.7865E+00 -1.0443E+00  8.1164E-02  1.6170E-01  0.0000E+00 -2.2011E-02 -1.4424E-03
            -4.6806E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1092
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1273E-04  1.0072E-02 -5.6758E-04 -1.1657E-02 -3.8003E-03
 SE:             2.9850E-02  2.1862E-02  2.2249E-04  2.4278E-02  2.3298E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9699E-01  6.4500E-01  1.0739E-02  6.3112E-01  8.7042E-01

 ETASHRINKSD(%)  1.0000E-10  2.6761E+01  9.9255E+01  1.8665E+01  2.1950E+01
 ETASHRINKVR(%)  1.0000E-10  4.6360E+01  9.9994E+01  3.3846E+01  3.9083E+01
 EBVSHRINKSD(%)  3.6060E-01  2.6840E+01  9.9326E+01  1.8594E+01  2.0469E+01
 EBVSHRINKVR(%)  7.1991E-01  4.6477E+01  9.9995E+01  3.3731E+01  3.6748E+01
 RELATIVEINF(%)  9.8885E+01  5.1879E+00  5.5601E-04  7.4372E+00  5.6692E+00
 EPSSHRINKSD(%)  4.4521E+01
 EPSSHRINKVR(%)  6.9221E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1683.3151751601283     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -948.16434859639014     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.56
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1683.315       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.44E-01  7.86E-01  7.81E-01  1.15E+00  7.95E-01  9.51E-01  1.55E+00  1.00E-02  7.86E-01  8.46E-01  8.55E-01
 


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
 #CPUT: Total CPU Time in Seconds,       13.602
Stop Time:
Fri Oct  1 23:10:36 CDT 2021