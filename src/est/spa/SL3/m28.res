Wed Sep 29 16:29:22 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat28.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1597.51230122901        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1043E+02 -9.2375E+01 -5.3073E+01 -6.4007E+01  1.2864E+02  3.7374E+01 -4.4217E-01 -1.7626E+00 -1.4192E+01  8.1981E+00
            -6.8379E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1610.13282736570        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      111
 NPARAMETR:  9.7581E-01  9.8132E-01  1.0142E+00  1.0371E+00  9.0326E-01  8.8645E-01  9.4814E-01  1.0163E+00  1.0486E+00  8.7207E-01
             1.2656E+00
 PARAMETER:  7.5514E-02  8.1145E-02  1.1407E-01  1.3647E-01 -1.7485E-03 -2.0527E-02  4.6744E-02  1.1617E-01  1.4748E-01 -3.6880E-02
             3.3556E-01
 GRADIENT:  -2.2175E+01 -5.5417E+01 -4.8485E+00 -9.0886E+01  1.0055E+01 -4.0659E+01  4.4102E+00 -8.8596E-02 -8.0531E-01  1.0418E+01
             3.7241E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1613.91127047899        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      287
 NPARAMETR:  9.7199E-01  8.1229E-01  1.0684E+00  1.1890E+00  8.0687E-01  9.2348E-01  8.1551E-01  1.1325E+00  9.4487E-01  7.3262E-01
             1.2210E+00
 PARAMETER:  7.1585E-02 -1.0790E-01  1.6617E-01  2.7308E-01 -1.1460E-01  2.0391E-02 -1.0394E-01  2.2442E-01  4.3294E-02 -2.1113E-01
             2.9966E-01
 GRADIENT:  -2.8349E+01  1.6599E+01  3.6342E+01 -3.4681E+01 -8.0650E+01 -2.2343E+01 -2.3114E+00  1.9316E+00 -1.1268E+01 -2.4330E+00
             1.9114E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1618.31979385550        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      465
 NPARAMETR:  9.8054E-01  8.1570E-01  1.2997E+00  1.2233E+00  9.2788E-01  9.7354E-01  6.3803E-01  1.3208E+00  1.0186E+00  8.8246E-01
             1.1634E+00
 PARAMETER:  8.0344E-02 -1.0371E-01  3.6214E-01  3.0153E-01  2.5148E-02  7.3182E-02 -3.4938E-01  3.7824E-01  1.1841E-01 -2.5039E-02
             2.5133E-01
 GRADIENT:  -1.7844E+00  1.1139E+01  3.9024E+00  1.3632E+01 -1.6091E+01 -6.0601E-01  8.5282E-01  1.3270E+00  2.2104E+00  2.7550E+00
             3.1703E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1619.17449137476        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      640
 NPARAMETR:  9.7573E-01  5.8284E-01  1.4060E+00  1.3691E+00  8.9731E-01  9.6896E-01  2.1411E-01  1.3118E+00  9.3236E-01  8.6762E-01
             1.1608E+00
 PARAMETER:  7.5430E-02 -4.3984E-01  4.4074E-01  4.1412E-01 -8.3563E-03  6.8468E-02 -1.4412E+00  3.7140E-01  2.9960E-02 -4.2001E-02
             2.4914E-01
 GRADIENT:  -7.7594E+00  5.4673E+00  3.2420E+00  1.1582E+01 -6.2906E+00 -1.8398E+00  5.4142E-02 -6.7856E-01  7.0307E-01  5.7498E-01
             1.8219E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1619.37764974452        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      815
 NPARAMETR:  9.7813E-01  4.3057E-01  1.3404E+00  1.4597E+00  8.3606E-01  9.7409E-01  6.0052E-02  1.2295E+00  8.6275E-01  8.2543E-01
             1.1546E+00
 PARAMETER:  7.7892E-02 -7.4264E-01  3.9300E-01  4.7822E-01 -7.9050E-02  7.3751E-02 -2.7125E+00  3.0657E-01 -4.7635E-02 -9.1846E-02
             2.4378E-01
 GRADIENT:   1.8334E+00  3.4320E+00  1.1043E+00  9.2700E+00 -2.1695E+00  5.0623E-01  1.9870E-03 -6.3553E-01 -1.7177E+00 -6.1697E-02
            -7.9305E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1619.45882624443        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      990
 NPARAMETR:  9.7641E-01  3.0629E-01  1.2913E+00  1.5318E+00  7.8654E-01  9.7326E-01  1.0000E-02  1.1914E+00  8.1661E-01  7.9092E-01
             1.1551E+00
 PARAMETER:  7.6132E-02 -1.0832E+00  3.5566E-01  5.2645E-01 -1.4012E-01  7.2898E-02 -4.5557E+00  2.7515E-01 -1.0259E-01 -1.3455E-01
             2.4422E-01
 GRADIENT:   1.6069E+00  2.4235E+00  1.4009E+00  7.6200E+00 -3.3086E+00  4.2995E-01  0.0000E+00 -2.4679E-01 -1.2850E+00  1.1467E-02
            -6.4856E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1619.55889181805        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1172
 NPARAMETR:  9.7483E-01  2.0918E-01  1.2515E+00  1.5780E+00  7.5243E-01  9.7201E-01  1.0000E-02  1.1703E+00  7.8833E-01  7.6512E-01
             1.1562E+00
 PARAMETER:  7.4507E-02 -1.4645E+00  3.2435E-01  5.5617E-01 -1.8444E-01  7.1607E-02 -6.7699E+00  2.5725E-01 -1.3784E-01 -1.6772E-01
             2.4516E-01
 GRADIENT:   1.6685E+00 -4.8471E-01 -2.3212E+00 -1.2905E+01  5.1103E+00  1.7926E-01  0.0000E+00  9.4994E-02  1.0363E+00 -3.2061E-01
            -9.9032E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1619.56896905744        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:     1311
 NPARAMETR:  9.7451E-01  2.0912E-01  1.2544E+00  1.5811E+00  7.5036E-01  9.7165E-01  1.0000E-02  1.1701E+00  7.8527E-01  7.6639E-01
             1.1565E+00
 PARAMETER:  7.4263E-02 -1.4729E+00  3.2572E-01  5.5722E-01 -1.8576E-01  7.1300E-02 -6.7699E+00  2.5718E-01 -1.4032E-01 -1.6638E-01
             2.4547E-01
 GRADIENT:   2.2829E-01 -1.5976E-01 -7.5600E-01 -3.6944E+00  1.5045E+00  2.8189E-02  0.0000E+00  1.3891E-02  3.0705E-01 -4.1617E-02
             3.4823E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1311
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5311E-04 -6.3796E-05 -2.4038E-02 -3.2997E-03 -3.0421E-02
 SE:             2.9801E-02  3.7958E-05  1.8865E-02  2.9050E-02  1.9481E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9322E-01  9.2821E-02  2.0259E-01  9.0957E-01  1.1838E-01

 ETASHRINKSD(%)  1.6421E-01  9.9873E+01  3.6800E+01  2.6783E+00  3.4737E+01
 ETASHRINKVR(%)  3.2815E-01  1.0000E+02  6.0057E+01  5.2849E+00  5.7407E+01
 EBVSHRINKSD(%)  5.5659E-01  9.9882E+01  3.8344E+01  3.0367E+00  3.3606E+01
 EBVSHRINKVR(%)  1.1101E+00  1.0000E+02  6.1986E+01  5.9813E+00  5.5919E+01
 RELATIVEINF(%)  9.7029E+01  8.3376E-06  5.8748E+00  7.9595E+00  4.0127E+00
 EPSSHRINKSD(%)  4.3873E+01
 EPSSHRINKVR(%)  6.8498E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1619.5689690574438     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -884.41814249370566     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.79
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1619.569       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  2.07E-01  1.25E+00  1.58E+00  7.51E-01  9.72E-01  1.00E-02  1.17E+00  7.86E-01  7.66E-01  1.16E+00
 


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
+        1.23E+03
 
 TH 2
+       -3.08E+01  3.72E+02
 
 TH 3
+        1.68E+00  9.26E+01  2.03E+02
 
 TH 4
+       -1.27E+01  4.23E+02 -1.97E+01  6.77E+02
 
 TH 5
+        4.27E+00 -3.98E+02 -4.77E+02 -9.83E+01  1.50E+03
 
 TH 6
+       -5.28E-02 -2.25E+00  7.58E-01 -2.78E+00 -1.10E+00  2.07E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        5.04E-01  3.45E+00 -3.38E+01 -2.85E+00 -1.43E+01  2.52E-01  0.00E+00  3.88E+01
 
 TH 9
+        2.66E+00 -9.64E+01  5.54E+00  1.60E+00  2.62E+00 -1.39E+00  0.00E+00 -3.14E-01  2.85E+02
 
 TH10
+        1.98E-02  1.03E+01  1.22E+00 -3.41E-01 -1.06E+02 -1.01E-01  0.00E+00  1.99E+01  2.40E+00  9.04E+01
 
 TH11
+       -8.44E+00 -6.74E+00 -3.88E+00 -7.16E+00 -1.25E+01  2.82E+00  0.00E+00  7.10E+00  1.19E+01  1.57E+01  1.60E+02
 
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
 #CPUT: Total CPU Time in Seconds,       21.215
Stop Time:
Wed Sep 29 16:29:44 CDT 2021
