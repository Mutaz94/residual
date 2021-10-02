Sat Oct  2 03:34:44 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat91.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m91.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1569.05296802795        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1589E+02 -7.1529E+01 -6.9826E+01 -2.1279E+00  1.1444E+02  1.2127E+01 -7.3366E+00  1.2716E+01 -5.3675E+00 -1.4454E+01
            -6.7596E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1584.54097297202        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.9355E-01  1.0818E+00  1.1178E+00  1.0284E+00  9.7940E-01  1.0785E+00  1.0176E+00  9.4819E-01  1.0402E+00  1.0234E+00
             1.1966E+00
 PARAMETER:  9.3532E-02  1.7859E-01  2.1133E-01  1.2797E-01  7.9181E-02  1.7560E-01  1.1746E-01  4.6797E-02  1.3943E-01  1.2309E-01
             2.7949E-01
 GRADIENT:   1.0333E+02  1.4692E+01 -6.3858E+00  1.9805E+01 -1.9496E+01  1.0506E+01  1.8587E+00  7.4973E+00 -9.2251E-01 -3.2877E+00
             1.6226E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1586.29472693814        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.8029E-01  1.1090E+00  1.5113E+00  1.0484E+00  1.1395E+00  1.0216E+00  8.0242E-01  7.1177E-01  1.0986E+00  1.1752E+00
             1.1871E+00
 PARAMETER:  8.0093E-02  2.0344E-01  5.1299E-01  1.4723E-01  2.3059E-01  1.2133E-01 -1.2013E-01 -2.4000E-01  1.9403E-01  2.6143E-01
             2.7150E-01
 GRADIENT:   8.8698E+01  4.8589E+01  1.3172E+01  5.8885E+01 -8.1740E-02 -7.5702E+00 -2.1946E+00 -3.3833E+00 -7.2495E+00 -1.2089E+01
             1.1538E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1591.07500816002        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.3833E-01  1.1711E+00  1.3246E+00  9.5749E-01  1.1194E+00  1.0348E+00  8.1124E-01  8.3855E-01  1.1722E+00  1.2010E+00
             1.1527E+00
 PARAMETER:  3.6347E-02  2.5792E-01  3.8109E-01  5.6559E-02  2.1280E-01  1.3418E-01 -1.0919E-01 -7.6077E-02  2.5890E-01  2.8316E-01
             2.4207E-01
 GRADIENT:  -2.9944E+00 -1.8989E+00 -9.8293E-02 -5.8700E-02  2.8302E+00  6.0456E-01  8.0879E-01 -3.9307E-01  6.4649E-01 -5.5301E-01
             1.4125E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1591.15578104722        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  9.4100E-01  1.2814E+00  1.2884E+00  8.8555E-01  1.1468E+00  1.0331E+00  7.4455E-01  9.1550E-01  1.2503E+00  1.2194E+00
             1.1483E+00
 PARAMETER:  3.9184E-02  3.4793E-01  3.5341E-01 -2.1550E-02  2.3698E-01  1.3253E-01 -1.9498E-01  1.1718E-02  3.2340E-01  2.9839E-01
             2.3832E-01
 GRADIENT:   1.8980E+00  2.6485E+00  1.1358E+00  1.5404E+00 -3.1034E+00 -2.5216E-01 -4.8882E-01  1.2949E-02 -7.4481E-01  2.3585E-01
             1.1232E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1591.17721535173        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.4128E-01  1.3983E+00  1.1746E+00  8.0790E-01  1.1627E+00  1.0340E+00  7.5493E-01  8.2812E-01  1.3208E+00  1.2155E+00
             1.1508E+00
 PARAMETER:  3.9484E-02  4.3527E-01  2.6089E-01 -1.1331E-01  2.5078E-01  1.3340E-01 -1.8114E-01 -8.8600E-02  3.7825E-01  2.9518E-01
             2.4049E-01
 GRADIENT:   1.2705E+00  3.5580E+00  1.9261E+00  1.4021E+00 -3.3990E+00 -1.3083E-01  4.8473E-02 -1.4055E-01 -3.0392E-01 -1.2123E-01
             4.8209E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1591.19166707677        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  9.4085E-01  1.4300E+00  1.1264E+00  7.8462E-01  1.1665E+00  1.0346E+00  7.5601E-01  7.8556E-01  1.3431E+00  1.2138E+00
             1.1486E+00
 PARAMETER:  3.9031E-02  4.5765E-01  2.1906E-01 -1.4256E-01  2.5398E-01  1.3398E-01 -1.7970E-01 -1.4135E-01  3.9499E-01  2.9372E-01
             2.3850E-01
 GRADIENT:   9.1051E-03 -6.9711E-01  1.8043E-01  5.3465E-02  6.1877E-02 -6.7458E-03  1.6274E-02 -5.0681E-04 -6.4555E-02  8.1942E-03
            -1.5747E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1591.19166707677        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1082
 NPARAMETR:  9.4085E-01  1.4300E+00  1.1264E+00  7.8462E-01  1.1665E+00  1.0346E+00  7.5601E-01  7.8556E-01  1.3431E+00  1.2138E+00
             1.1486E+00
 PARAMETER:  3.9031E-02  4.5765E-01  2.1906E-01 -1.4256E-01  2.5398E-01  1.3398E-01 -1.7970E-01 -1.4135E-01  3.9499E-01  2.9372E-01
             2.3850E-01
 GRADIENT:  -5.7825E-01  5.2316E-01  1.8226E-01  9.7676E-02  1.0161E-01 -1.8601E-01  4.3621E-03 -6.2240E-04 -1.3977E-01 -3.6802E-03
            -1.5514E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1082
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.2399E-04 -3.2976E-02 -1.5728E-02  1.3397E-02 -3.6722E-02
 SE:             2.9768E-02  1.7093E-02  7.3960E-03  2.4737E-02  2.3563E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8596E-01  5.3706E-02  3.3460E-02  5.8812E-01  1.1913E-01

 ETASHRINKSD(%)  2.7213E-01  4.2735E+01  7.5222E+01  1.7127E+01  2.1061E+01
 ETASHRINKVR(%)  5.4351E-01  6.7208E+01  9.3861E+01  3.1321E+01  3.7686E+01
 EBVSHRINKSD(%)  5.5708E-01  4.1576E+01  7.7947E+01  1.8283E+01  1.8359E+01
 EBVSHRINKVR(%)  1.1111E+00  6.5867E+01  9.5137E+01  3.3223E+01  3.3348E+01
 RELATIVEINF(%)  9.8694E+01  1.6190E+00  1.0482E+00  3.6752E+00  1.7540E+01
 EPSSHRINKSD(%)  4.2441E+01
 EPSSHRINKVR(%)  6.6870E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1591.1916670767739     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -856.04084051303573     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.52
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1591.192       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.41E-01  1.43E+00  1.13E+00  7.85E-01  1.17E+00  1.03E+00  7.56E-01  7.86E-01  1.34E+00  1.21E+00  1.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.561
Stop Time:
Sat Oct  2 03:34:59 CDT 2021