Fri Oct  1 03:38:52 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat19.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      979
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

 TOT. NO. OF OBS RECS:      879
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
 RAW OUTPUT FILE (FILE): m19.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -244.571512321992        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1564E+02  1.0610E+02  7.4255E+01  1.3104E+02  1.0514E+02  6.2405E+01 -1.0522E+02 -1.2725E+02 -1.5734E+01 -5.2823E+01
            -6.8242E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2694.36663661990        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0862E+00  1.1433E+00  1.0201E+00  9.2691E-01  1.0764E+00  8.7910E-01  1.1400E+00  9.5742E-01  6.3704E-01  1.2415E+00
             2.9218E+00
 PARAMETER:  1.8268E-01  2.3390E-01  1.1994E-01  2.4097E-02  1.7358E-01 -2.8860E-02  2.3101E-01  5.6485E-02 -3.5092E-01  3.1632E-01
             1.1722E+00
 GRADIENT:   2.0156E+02 -1.6508E+01 -2.0765E+00 -7.0891E+01 -2.4252E+01 -2.3650E+01  1.7937E+01  3.5828E+00  2.5211E+00  5.1018E-01
             1.2865E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2697.30410015595        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0772E+00  1.0971E+00  1.3065E+00  9.6966E-01  1.1785E+00  9.1439E-01  1.1220E+00  8.0064E-01  6.1403E-01  1.4321E+00
             2.9159E+00
 PARAMETER:  1.7436E-01  1.9267E-01  3.6738E-01  6.9195E-02  2.6424E-01  1.0500E-02  2.1512E-01 -1.2234E-01 -3.8770E-01  4.5913E-01
             1.1702E+00
 GRADIENT:   1.7035E+02 -3.8705E+01  5.2498E+00 -3.4710E+01  9.2799E+00 -6.4022E+00  1.0797E+01  1.8585E-01  5.0179E+00  2.1913E+01
             1.2189E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2707.34367177553        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      313
 NPARAMETR:  1.0529E+00  1.4383E+00  1.4189E+00  8.1285E-01  1.4420E+00  9.4742E-01  8.7431E-01  1.5510E+00  6.5565E-01  1.4853E+00
             2.7834E+00
 PARAMETER:  1.5151E-01  4.6349E-01  4.4987E-01 -1.0721E-01  4.6602E-01  4.5987E-02 -3.4322E-02  5.3892E-01 -3.2212E-01  4.9563E-01
             1.1237E+00
 GRADIENT:   8.8110E+00  2.5541E+01 -2.4196E+00  4.0522E+01  5.6591E+00  2.8507E-01 -2.2856E+00 -6.4117E-01  1.7871E-01  1.3860E+00
             1.0192E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2710.28576109201        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      488
 NPARAMETR:  1.0481E+00  1.7157E+00  2.0247E+00  6.1886E-01  1.8078E+00  9.4524E-01  8.0333E-01  3.6673E+00  5.6332E-01  1.6627E+00
             2.7446E+00
 PARAMETER:  1.4694E-01  6.3980E-01  8.0543E-01 -3.7988E-01  6.9209E-01  4.3687E-02 -1.1898E-01  1.3995E+00 -4.7391E-01  6.0844E-01
             1.1096E+00
 GRADIENT:   1.8656E-02 -1.0723E+01 -5.8990E+00  2.9567E+00  1.3963E+01 -1.2001E+00  1.3776E+00  3.7243E+00  9.3338E-01  2.7019E+00
             2.4876E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2710.83349882418        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      665
 NPARAMETR:  1.0498E+00  1.6724E+00  2.3264E+00  6.5147E-01  1.7790E+00  9.4672E-01  8.2734E-01  3.3062E+00  5.0927E-01  1.6464E+00
             2.7458E+00
 PARAMETER:  1.4863E-01  6.1425E-01  9.4432E-01 -3.2853E-01  6.7608E-01  4.5247E-02 -8.9534E-02  1.2958E+00 -5.7477E-01  5.9858E-01
             1.1101E+00
 GRADIENT:   4.6726E+00  2.6708E+00 -1.2553E-02  2.0119E-01  2.7863E+00 -3.1988E-01  4.8449E-01 -1.3146E+00  1.8176E-01  1.7887E-01
            -7.7123E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2711.07253574178        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      840
 NPARAMETR:  1.0475E+00  1.4981E+00  2.6838E+00  7.6573E-01  1.6908E+00  9.4775E-01  9.1184E-01  3.3772E+00  4.6089E-01  1.5413E+00
             2.7407E+00
 PARAMETER:  1.4645E-01  5.0420E-01  1.0872E+00 -1.6692E-01  6.2518E-01  4.6335E-02  7.7139E-03  1.3171E+00 -6.7460E-01  5.3263E-01
             1.1082E+00
 GRADIENT:  -2.7119E-01 -4.9639E-01 -3.2826E-01 -3.1809E-01  9.0175E-01 -1.1586E-01  2.1298E-01  7.0427E-02 -3.6284E-01 -1.5927E-01
            -2.5202E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2711.09018292310        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1015
 NPARAMETR:  1.0476E+00  1.4761E+00  2.7375E+00  7.8117E-01  1.6784E+00  9.4807E-01  9.1543E-01  3.3626E+00  4.8410E-01  1.5297E+00
             2.7403E+00
 PARAMETER:  1.4650E-01  4.8942E-01  1.1071E+00 -1.4696E-01  6.1783E-01  4.6673E-02  1.1644E-02  1.3127E+00 -6.2546E-01  5.2508E-01
             1.1081E+00
 GRADIENT:  -1.2595E-01 -1.0396E-01 -1.3597E-02 -6.9123E-02  3.4252E-02  1.7209E-02 -1.4243E-03  1.3729E-03 -1.3326E-02 -2.7435E-02
             4.6449E-02

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2711.09018292310        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1037
 NPARAMETR:  1.0476E+00  1.4761E+00  2.7375E+00  7.8117E-01  1.6784E+00  9.4807E-01  9.1543E-01  3.3626E+00  4.8410E-01  1.5297E+00
             2.7403E+00
 PARAMETER:  1.4650E-01  4.8942E-01  1.1071E+00 -1.4696E-01  6.1783E-01  4.6673E-02  1.1644E-02  1.3127E+00 -6.2546E-01  5.2508E-01
             1.1081E+00
 GRADIENT:  -1.2595E-01 -1.0396E-01 -1.3597E-02 -6.9123E-02  3.4252E-02  1.7209E-02 -1.4243E-03  1.3729E-03 -1.3326E-02 -2.7435E-02
             4.6449E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1037
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1170E-03 -6.0526E-03 -3.4561E-02 -4.0091E-03 -2.6822E-02
 SE:             2.9351E-02  2.5477E-02  1.6477E-02  1.1934E-02  2.4009E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4250E-01  8.1222E-01  3.5948E-02  7.3691E-01  2.6393E-01

 ETASHRINKSD(%)  1.6708E+00  1.4648E+01  4.4800E+01  6.0021E+01  1.9566E+01
 ETASHRINKVR(%)  3.3137E+00  2.7150E+01  6.9530E+01  8.4016E+01  3.5303E+01
 EBVSHRINKSD(%)  1.8020E+00  1.4825E+01  5.0693E+01  6.1915E+01  1.6463E+01
 EBVSHRINKVR(%)  3.5715E+00  2.7451E+01  7.5688E+01  8.5496E+01  3.0215E+01
 RELATIVEINF(%)  9.6316E+01  5.6135E+00  9.4092E+00  1.0422E+00  3.5465E+01
 EPSSHRINKSD(%)  1.6691E+01
 EPSSHRINKVR(%)  3.0595E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          879
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1615.4939413738146     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2711.0901829230975     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1095.5962415492829     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.52
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2711.090       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.48E+00  2.74E+00  7.81E-01  1.68E+00  9.48E-01  9.15E-01  3.36E+00  4.84E-01  1.53E+00  2.74E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.587
Stop Time:
Fri Oct  1 03:39:19 CDT 2021