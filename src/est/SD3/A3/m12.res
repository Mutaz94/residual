Fri Oct  1 18:05:59 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat12.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m12.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -180.543510729941        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3618E+02  6.9917E+01  3.2752E+02 -3.7243E+01  2.7293E+02  7.8787E+01 -1.7363E+02 -3.8169E+02 -1.7579E+02 -1.4752E+02
            -3.6409E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1627.47000928220        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0473E+00  1.0235E+00  8.0588E-01  1.1071E+00  8.6721E-01  6.6750E-01  1.0429E+00  1.1310E+00  1.0520E+00  9.2507E-01
             5.2466E+00
 PARAMETER:  1.4617E-01  1.2319E-01 -1.1582E-01  2.0177E-01 -4.2470E-02 -3.0422E-01  1.4199E-01  2.2306E-01  1.5072E-01  2.2112E-02
             1.7576E+00
 GRADIENT:   8.1206E+01 -4.1635E+01 -2.4607E+01 -2.1462E+01  2.3277E+01 -1.3930E+01  1.3653E+01  1.2781E+01  2.2837E+01  2.5823E+01
             4.2416E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1653.36717534575        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0215E+00  5.4468E-01  2.1775E-01  1.3872E+00  2.9780E-01  7.4223E-01  1.4254E+00  9.4308E-01  1.2901E+00  2.4117E-01
             4.5665E+00
 PARAMETER:  1.2124E-01 -5.0755E-01 -1.4244E+00  4.2732E-01 -1.1113E+00 -1.9810E-01  4.5448E-01  4.1397E-02  3.5474E-01 -1.3223E+00
             1.6187E+00
 GRADIENT:  -1.0103E+01  1.3333E+02 -2.4827E+01  1.7336E+02 -4.8313E+01 -2.1226E+01  7.5412E+00  1.7406E+01 -4.6554E+00  3.0220E+00
             3.6953E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1744.46733055010        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      320
 NPARAMETR:  9.8117E-01  7.0617E-01  4.0578E-01  1.2734E+00  4.9057E-01  7.7775E-01  1.3647E+00  7.0753E-01  9.7976E-01  4.2167E-01
             3.6014E+00
 PARAMETER:  8.0986E-02 -2.4790E-01 -8.0194E-01  3.4165E-01 -6.1219E-01 -1.5135E-01  4.1092E-01 -2.4597E-01  7.9549E-02 -7.6353E-01
             1.3813E+00
 GRADIENT:  -9.3551E+01  4.0023E+01 -3.8705E+01  1.0462E+02  2.7786E+01 -7.6229E+00  7.1006E+00  1.0031E+01 -1.5255E+01  5.4013E+00
             1.6339E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1790.92689508924        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      495
 NPARAMETR:  9.8126E-01  4.4099E-01  2.3747E-01  1.2448E+00  2.9508E-01  8.2036E-01  1.6193E+00  2.8755E-01  1.5522E+00  2.1481E-01
             2.7954E+00
 PARAMETER:  8.1083E-02 -7.1874E-01 -1.3377E+00  3.1897E-01 -1.1205E+00 -9.8012E-02  5.8197E-01 -1.1464E+00  5.3967E-01 -1.4380E+00
             1.1280E+00
 GRADIENT:  -2.3345E+01  5.8456E+01  1.9864E+01  5.1279E+01 -3.9060E+01 -5.2407E+00  5.7351E-01 -5.1837E+00  3.4501E+01 -5.8856E+00
            -3.4153E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1823.29152100963        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      671
 NPARAMETR:  9.8564E-01  2.6507E-01  1.4931E-01  1.0883E+00  2.0273E-01  8.3017E-01  1.6421E+00  1.0155E+00  1.5803E+00  4.4739E-01
             2.5112E+00
 PARAMETER:  8.5535E-02 -1.2278E+00 -1.8018E+00  1.8459E-01 -1.4959E+00 -8.6126E-02  5.9598E-01  1.1539E-01  5.5763E-01 -7.0433E-01
             1.0207E+00
 GRADIENT:  -2.6294E-01 -1.0566E+01  1.3333E+00 -1.3109E+00 -1.1290E+01  2.2613E+00  1.1123E+01 -3.1013E+00 -1.4062E+01  9.2720E-01
             3.0904E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1825.45223361215        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      846
 NPARAMETR:  9.8263E-01  2.8892E-01  1.5789E-01  1.1111E+00  2.1361E-01  8.2419E-01  1.5412E+00  1.0752E+00  1.6617E+00  4.0235E-01
             2.4211E+00
 PARAMETER:  8.2477E-02 -1.1416E+00 -1.7459E+00  2.0539E-01 -1.4436E+00 -9.3353E-02  5.3255E-01  1.7246E-01  6.0783E-01 -8.1045E-01
             9.8423E-01
 GRADIENT:  -3.5922E-01  4.3184E-01 -4.4194E-01 -8.3979E-01  7.1081E-01 -7.0797E-02  1.8795E-01  1.0773E-01  7.1707E-01  4.4529E-01
             1.0802E+00

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1825.45614284974        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:      976
 NPARAMETR:  9.8281E-01  2.8917E-01  1.5830E-01  1.1128E+00  2.1379E-01  8.2441E-01  1.5426E+00  1.0762E+00  1.6575E+00  3.9399E-01
             2.4191E+00
 PARAMETER:  8.2662E-02 -1.1408E+00 -1.7433E+00  2.0689E-01 -1.4428E+00 -9.3091E-02  5.3347E-01  1.7347E-01  6.0528E-01 -8.3143E-01
             9.8338E-01
 GRADIENT:   1.5269E-01  7.8414E-01  7.7241E-01  4.3399E-03 -3.0294E+00  3.0247E-03 -1.5140E-01 -1.7445E-01  8.8823E-02 -1.0682E-01
            -3.7024E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      976
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.2417E-04  1.6840E-02 -3.0944E-03 -6.4635E-03  1.9823E-02
 SE:             2.8984E-02  2.3532E-02  2.0665E-02  2.8039E-02  1.4221E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8282E-01  4.7422E-01  8.8097E-01  8.1769E-01  1.6333E-01

 ETASHRINKSD(%)  2.8988E+00  2.1166E+01  3.0771E+01  6.0642E+00  5.2359E+01
 ETASHRINKVR(%)  5.7135E+00  3.7852E+01  5.2073E+01  1.1761E+01  7.7303E+01
 EBVSHRINKSD(%)  2.9934E+00  2.0016E+01  2.9935E+01  5.7448E+00  5.4094E+01
 EBVSHRINKVR(%)  5.8973E+00  3.6026E+01  5.0910E+01  1.1160E+01  7.8926E+01
 RELATIVEINF(%)  9.3875E+01  2.0967E+01  8.8111E+00  6.9896E+01  2.3868E+00
 EPSSHRINKSD(%)  2.9745E+01
 EPSSHRINKVR(%)  5.0642E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1825.4561428497409     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -722.72990300413380     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1825.456       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.83E-01  2.89E-01  1.58E-01  1.11E+00  2.14E-01  8.24E-01  1.54E+00  1.08E+00  1.66E+00  3.94E-01  2.42E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.706
Stop Time:
Fri Oct  1 18:06:19 CDT 2021
