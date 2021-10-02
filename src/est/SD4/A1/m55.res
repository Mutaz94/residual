Sat Oct  2 00:06:01 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat55.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m55.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1042.55833576141        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9965E+02 -4.1915E+01 -3.0793E+01 -4.7418E-02  1.4400E+02  7.9332E+01 -2.8294E+01 -1.9083E+00 -3.7920E+01 -4.9434E+01
            -1.1473E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1415.57451954127        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1184E+00  1.0445E+00  1.0607E+00  1.0480E+00  9.3796E-01  1.0190E+00  1.1136E+00  9.4629E-01  1.0887E+00  1.0310E+00
             2.3693E+00
 PARAMETER:  2.1192E-01  1.4350E-01  1.5896E-01  1.4688E-01  3.5948E-02  1.1883E-01  2.0763E-01  4.4790E-02  1.8498E-01  1.3051E-01
             9.6258E-01
 GRADIENT:   3.6073E+02  7.5032E+00  3.0473E+00  1.0881E+01 -8.4721E+00  4.7688E+01  1.1591E+00  3.8311E+00  9.8686E+00  1.1156E-01
            -4.4685E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1429.83387143427        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0494E+00  8.9572E-01  1.2055E+00  1.1482E+00  9.6941E-01  8.5126E-01  9.8279E-01  1.6031E-01  9.6789E-01  1.2685E+00
             2.3147E+00
 PARAMETER:  1.4819E-01 -1.0123E-02  2.8691E-01  2.3822E-01  6.8935E-02 -6.1041E-02  8.2642E-02 -1.7307E+00  6.7361E-02  3.3782E-01
             9.3930E-01
 GRADIENT:   2.2235E+02  6.1704E+00 -2.5786E+00  3.5281E+01  3.9644E+00  1.0782E+01 -8.9382E+00  5.0987E-02 -1.0895E+01  1.5582E+01
            -2.2413E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1434.10622521322        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.9689E-01  9.1834E-01  9.0534E-01  1.0991E+00  8.2624E-01  8.1027E-01  1.2022E+00  1.8132E-01  9.8998E-01  9.8438E-01
             2.3049E+00
 PARAMETER:  9.6885E-02  1.4818E-02  5.5931E-04  1.9449E-01 -9.0873E-02 -1.1039E-01  2.8414E-01 -1.6075E+00  8.9933E-02  8.4261E-02
             9.3502E-01
 GRADIENT:   3.0164E+01  3.8978E+00  8.4631E-01  1.6077E+01 -3.4377E+00 -2.0849E+00 -2.3690E+00  1.7708E-01 -1.0906E+00  2.8803E+00
            -1.6433E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1434.98740587531        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  1.0022E+00  9.1606E-01  9.2965E-01  1.1050E+00  8.3957E-01  8.2587E-01  1.2746E+00  2.0289E-01  9.9096E-01  9.5923E-01
             2.3548E+00
 PARAMETER:  1.0223E-01  1.2325E-02  2.7051E-02  1.9987E-01 -7.4860E-02 -9.1323E-02  3.4266E-01 -1.4951E+00  9.0922E-02  5.8375E-02
             9.5646E-01
 GRADIENT:  -2.6786E+01 -7.8209E-02  2.4892E-01 -8.3186E+00 -1.3279E+00  5.0472E-01 -3.5026E-01  1.7431E-01  3.9102E-01 -6.3837E-01
            -1.2284E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1436.43757164670        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      519
 NPARAMETR:  1.0051E+00  5.9180E-01  9.1933E-01  1.3058E+00  7.1949E-01  8.2503E-01  1.7486E+00  1.0118E-01  8.8893E-01  8.6690E-01
             2.4282E+00
 PARAMETER:  1.0509E-01 -4.2459E-01  1.5892E-02  3.6685E-01 -2.2921E-01 -9.2333E-02  6.5883E-01 -2.1908E+00 -1.7741E-02 -4.2837E-02
             9.8716E-01
 GRADIENT:  -1.4830E+01  4.1675E+00  2.4198E+00  6.4917E+00 -4.2845E+00  1.2730E+00 -1.7852E-01  5.6094E-02  1.2753E+00 -8.8593E-01
             2.0586E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1436.74088130247        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      694
 NPARAMETR:  1.0089E+00  4.5596E-01  8.7456E-01  1.3709E+00  6.6274E-01  8.2037E-01  2.1186E+00  4.7637E-02  8.5034E-01  8.3062E-01
             2.4215E+00
 PARAMETER:  1.0883E-01 -6.8535E-01 -3.4038E-02  4.1546E-01 -3.1137E-01 -9.8002E-02  8.5078E-01 -2.9441E+00 -6.2116E-02 -8.5584E-02
             9.8439E-01
 GRADIENT:   1.3220E+00  4.4060E-01  4.7213E-01  4.9388E-01 -9.1907E-01 -2.4983E-01 -1.3555E-01  1.4341E-02 -3.0584E-01 -2.1904E-01
            -5.2868E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1436.74919285740        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      873
 NPARAMETR:  1.0082E+00  4.4102E-01  8.7586E-01  1.3786E+00  6.6014E-01  8.2072E-01  2.1698E+00  1.4473E-02  8.4835E-01  8.3220E-01
             2.4233E+00
 PARAMETER:  1.0820E-01 -7.1867E-01 -3.2552E-02  4.2107E-01 -3.1530E-01 -9.7577E-02  8.7463E-01 -4.1354E+00 -6.4461E-02 -8.3681E-02
             9.8514E-01
 GRADIENT:   1.3706E-01  1.1537E-02 -7.8886E-02 -3.9822E-01 -4.8881E-02 -4.3980E-03  2.2740E-02  1.3331E-03 -1.5438E-03  5.3061E-03
             2.5193E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1436.74929566478        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1039
 NPARAMETR:  1.0082E+00  4.4061E-01  8.7628E-01  1.3791E+00  6.6026E-01  8.2073E-01  2.1696E+00  1.0000E-02  8.4836E-01  8.3273E-01
             2.4235E+00
 PARAMETER:  1.0814E-01 -7.1959E-01 -3.2068E-02  4.2145E-01 -3.1512E-01 -9.7556E-02  8.7454E-01 -4.5117E+00 -6.4447E-02 -8.3048E-02
             9.8520E-01
 GRADIENT:  -3.1408E-01  9.1430E-03 -1.4159E-01  8.7129E-01 -2.8559E-03 -4.5085E-03 -5.8765E-02  1.3801E-04  1.1221E-03  1.8407E-02
             7.0027E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1039
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5415E-04  2.0880E-02 -8.7335E-05 -2.4926E-02 -1.2210E-02
 SE:             2.8901E-02  1.6654E-02  1.3868E-04  2.3660E-02  1.8804E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9574E-01  2.0992E-01  5.2884E-01  2.9210E-01  5.1613E-01

 ETASHRINKSD(%)  3.1776E+00  4.4208E+01  9.9535E+01  2.0736E+01  3.7004E+01
 ETASHRINKVR(%)  6.2543E+00  6.8872E+01  9.9998E+01  3.7173E+01  6.0315E+01
 EBVSHRINKSD(%)  3.1378E+00  4.9132E+01  9.9478E+01  1.8939E+01  3.4640E+01
 EBVSHRINKVR(%)  6.1772E+00  7.4124E+01  9.9997E+01  3.4291E+01  5.7281E+01
 RELATIVEINF(%)  9.1635E+01  2.8246E+00  1.6407E-04  9.9490E+00  2.3035E+00
 EPSSHRINKSD(%)  3.2741E+01
 EPSSHRINKVR(%)  5.4762E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1436.7492956647770     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -701.59846910103886     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.78
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1436.749       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  4.41E-01  8.76E-01  1.38E+00  6.60E-01  8.21E-01  2.17E+00  1.00E-02  8.48E-01  8.33E-01  2.42E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.825
Stop Time:
Sat Oct  2 00:06:15 CDT 2021
