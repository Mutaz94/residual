Fri Oct  1 09:47:27 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat11.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m11.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1373.04898071073        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2663E+02 -1.0896E+01 -1.2251E+01  2.8449E+01  9.2477E+01  5.4167E+01 -2.7902E+01  2.5701E+00 -3.1829E+00  8.3930E+00
            -1.3380E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1765.98073616130        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.7004E-01  1.0605E+00  1.2051E+00  9.9900E-01  1.0565E+00  9.7302E-01  1.1363E+00  8.8714E-01  9.9873E-01  5.7558E-01
             2.1076E+00
 PARAMETER:  6.9580E-02  1.5870E-01  2.8660E-01  9.9001E-02  1.5501E-01  7.2644E-02  2.2779E-01 -1.9758E-02  9.8731E-02 -4.5237E-01
             8.4554E-01
 GRADIENT:   1.5935E+02 -5.1070E+00  9.6373E+00 -1.5180E+01  1.0313E+01  3.7193E+01  7.5748E-01 -2.8436E+00  6.3731E+00  3.9766E+00
             1.0426E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1771.18703974219        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.5213E-01  9.4269E-01  5.5979E-01  1.0484E+00  6.7804E-01  1.0154E+00  1.3200E+00  7.0258E-01  8.6130E-01  2.5196E-01
             2.0566E+00
 PARAMETER:  5.0944E-02  4.0983E-02 -4.8020E-01  1.4725E-01 -2.8855E-01  1.1525E-01  3.7763E-01 -2.5299E-01 -4.9308E-02 -1.2785E+00
             8.2105E-01
 GRADIENT:   1.0572E+02  5.9463E+00 -2.6509E+01  6.3802E+01  5.0592E+01  5.1180E+01  8.5658E+00  7.1561E+00  2.1906E+00  2.9958E+00
             2.4823E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1776.97793885741        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      335
 NPARAMETR:  9.3602E-01  7.9939E-01  6.1657E-01  1.1223E+00  6.5260E-01  8.7839E-01  1.5214E+00  4.2878E-01  8.1983E-01  2.7028E-01
             2.0318E+00
 PARAMETER:  3.3876E-02 -1.2391E-01 -3.8358E-01  2.1540E-01 -3.2678E-01 -2.9661E-02  5.1963E-01 -7.4682E-01 -9.8653E-02 -1.2083E+00
             8.0893E-01
 GRADIENT:  -1.0696E+01  6.1966E+00 -8.7063E+00  1.6213E+01  1.3658E+01 -4.5744E+00  3.5648E+00  1.6053E-01 -4.2266E-01  1.2437E+00
            -2.2169E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1777.64463198442        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      511
 NPARAMETR:  9.3926E-01  7.3177E-01  5.7960E-01  1.1397E+00  6.0265E-01  8.9160E-01  1.5740E+00  4.4671E-01  8.1172E-01  1.7608E-01
             2.0237E+00
 PARAMETER:  3.7342E-02 -2.1229E-01 -4.4542E-01  2.3074E-01 -4.0642E-01 -1.4735E-02  5.5362E-01 -7.0585E-01 -1.0859E-01 -1.6368E+00
             8.0490E-01
 GRADIENT:  -4.7772E-02  2.3517E+00  6.1254E+00 -4.9802E+00 -8.1490E+00  1.0717E+00  1.0021E-01 -5.1059E-01  6.5957E-02  1.8980E-01
            -3.3125E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1777.72666315468        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      687
 NPARAMETR:  9.3914E-01  7.0914E-01  5.7391E-01  1.1515E+00  5.9243E-01  8.8846E-01  1.6069E+00  4.9112E-01  8.0398E-01  1.3869E-01
             2.0308E+00
 PARAMETER:  3.7212E-02 -2.4371E-01 -4.5528E-01  2.4108E-01 -4.2352E-01 -1.8263E-02  5.7433E-01 -6.1106E-01 -1.1818E-01 -1.8755E+00
             8.0841E-01
 GRADIENT:  -3.8411E-01  4.5098E-01  1.5453E-01 -2.2995E-01 -1.4738E+00 -2.2625E-01  1.4487E-01  2.0451E-01 -2.5070E-01  1.7431E-01
             1.4606E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1777.75778947542        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      862
 NPARAMETR:  9.3855E-01  6.8080E-01  6.1097E-01  1.1729E+00  6.0637E-01  8.8832E-01  1.6721E+00  5.3244E-01  7.9701E-01  8.8320E-02
             2.0358E+00
 PARAMETER:  3.6579E-02 -2.8449E-01 -3.9270E-01  2.5946E-01 -4.0026E-01 -1.8425E-02  6.1407E-01 -5.3028E-01 -1.2688E-01 -2.3268E+00
             8.1087E-01
 GRADIENT:   8.6368E-03 -8.3805E-01 -5.1709E-01 -2.5707E-01  8.8193E-01  1.3349E-01  5.1375E-02  3.1777E-02  1.2973E-01  4.1638E-02
            -2.7549E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1777.80840875063        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1041
 NPARAMETR:  9.3959E-01  7.4184E-01  5.7138E-01  1.1339E+00  6.0247E-01  8.8930E-01  1.5582E+00  5.0271E-01  8.1115E-01  1.8033E-02
             2.0323E+00
 PARAMETER:  3.7690E-02 -1.9863E-01 -4.5969E-01  2.2569E-01 -4.0672E-01 -1.7321E-02  5.4356E-01 -5.8775E-01 -1.0930E-01 -3.9156E+00
             8.0915E-01
 GRADIENT:  -2.2636E-02  4.1058E-01  2.7196E-01  8.7209E-02 -5.9350E-01 -8.2131E-03  5.7586E-02  3.1673E-02 -6.7649E-02  2.8748E-03
             1.1475E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1777.80921937818        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1204
 NPARAMETR:  9.3951E-01  7.3674E-01  5.7493E-01  1.1369E+00  6.0323E-01  8.8917E-01  1.5667E+00  5.0487E-01  8.1025E-01  1.0000E-02
             2.0327E+00
 PARAMETER:  3.7605E-02 -2.0551E-01 -4.5350E-01  2.2834E-01 -4.0546E-01 -1.7465E-02  5.4897E-01 -5.8345E-01 -1.1041E-01 -4.6216E+00
             8.0935E-01
 GRADIENT:   1.9183E-02 -2.5350E-01 -2.7068E-01 -1.0181E-01  4.8980E-01 -1.0384E-02 -1.2724E-02  2.2221E-03  3.1740E-02  0.0000E+00
            -1.9053E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1204
 NO. OF SIG. DIGITS IN FINAL EST.:  2.9
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7689E-03  1.8341E-02 -1.7974E-02 -1.7751E-02  1.3911E-04
 SE:             2.9466E-02  2.3308E-02  1.0383E-02  2.4422E-02  3.2360E-04
 N:                     100         100         100         100         100

 P VAL.:         9.5213E-01  4.3135E-01  8.3441E-02  4.6734E-01  6.6727E-01

 ETASHRINKSD(%)  1.2858E+00  2.1916E+01  6.5216E+01  1.8182E+01  9.8916E+01
 ETASHRINKVR(%)  2.5550E+00  3.9029E+01  8.7901E+01  3.3058E+01  9.9988E+01
 EBVSHRINKSD(%)  1.6185E+00  2.1786E+01  6.5426E+01  1.8093E+01  9.8908E+01
 EBVSHRINKVR(%)  3.2109E+00  3.8825E+01  8.8046E+01  3.2913E+01  9.9988E+01
 RELATIVEINF(%)  9.6426E+01  8.0216E+00  6.5637E-01  1.4295E+01  5.3474E-04
 EPSSHRINKSD(%)  2.6572E+01
 EPSSHRINKVR(%)  4.6083E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1777.8092193781754     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -858.87068617350269     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.81
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1777.809       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.40E-01  7.37E-01  5.75E-01  1.14E+00  6.03E-01  8.89E-01  1.57E+00  5.05E-01  8.10E-01  1.00E-02  2.03E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.848
Stop Time:
Fri Oct  1 09:47:45 CDT 2021
