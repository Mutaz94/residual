Fri Oct  1 04:17:29 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat99.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      983
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

 TOT. NO. OF OBS RECS:      883
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
 RAW OUTPUT FILE (FILE): m99.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -34.7213541798119        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3643E+02 -4.1528E+01  1.3733E+02  2.3299E+02  2.2767E+02  7.5908E+01 -1.3521E+02 -2.3147E+02 -1.2601E+02 -4.4037E+01
            -7.0496E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2637.51281949498        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0172E+00  1.3434E+00  8.0767E-01  8.4696E-01  1.0120E+00  7.7493E-01  1.2441E+00  1.0340E+00  9.5780E-01  1.1775E+00
             3.0360E+00
 PARAMETER:  1.1709E-01  3.9519E-01 -1.1360E-01 -6.6099E-02  1.1196E-01 -1.5499E-01  3.1839E-01  1.3342E-01  5.6882E-02  2.6339E-01
             1.2105E+00
 GRADIENT:   3.4035E+01  6.3325E+01 -3.7603E+00  1.1985E+01 -2.3065E+01 -4.8814E+01  3.4272E+01  5.5211E+00 -2.8413E+00 -3.1232E+00
             1.6760E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2647.79434703304        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0218E+00  1.5950E+00  6.2323E-01  7.2436E-01  1.0924E+00  9.0772E-01  9.6741E-01  8.3452E-01  1.0509E+00  1.3265E+00
             2.9915E+00
 PARAMETER:  1.2160E-01  5.6686E-01 -3.7285E-01 -2.2247E-01  1.8836E-01  3.1786E-03  6.6863E-02 -8.0903E-02  1.4963E-01  3.8257E-01
             1.1958E+00
 GRADIENT:   5.6622E+01  1.4768E+02 -1.8056E+01  5.4163E+01 -3.3626E+01  1.0647E+01  1.0573E+01  2.9464E+00 -1.6172E+00 -6.9707E+00
             1.4347E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2662.33296251391        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      315
 NPARAMETR:  1.0215E+00  1.8324E+00  8.0641E-01  5.7229E-01  1.3920E+00  9.0566E-01  7.8324E-01  1.5313E+00  1.3491E+00  1.5677E+00
             2.7706E+00
 PARAMETER:  1.2123E-01  7.0562E-01 -1.1516E-01 -4.5811E-01  4.3076E-01  9.0607E-04 -1.4432E-01  5.2614E-01  3.9947E-01  5.4962E-01
             1.1190E+00
 GRADIENT:   3.3863E+00  4.7705E+01  1.6639E+00  3.9942E+01 -3.9995E+00  4.2584E+00 -5.2316E+00 -1.1005E+00  4.3696E-01  4.9218E+00
            -2.0263E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2666.99739041049        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      490
 NPARAMETR:  1.0172E+00  2.1113E+00  7.4000E-01  3.5890E-01  1.6078E+00  8.9243E-01  7.3441E-01  2.3380E+00  1.6098E+00  1.6786E+00
             2.7933E+00
 PARAMETER:  1.1704E-01  8.4731E-01 -2.0110E-01 -9.2470E-01  5.7488E-01 -1.3803E-02 -2.0869E-01  9.4929E-01  5.7613E-01  6.1799E-01
             1.1272E+00
 GRADIENT:  -7.0372E+00  1.2883E+01  4.7358E+00 -1.8012E-01 -5.3603E+00 -2.0198E-01 -3.6399E+00 -1.7400E+00 -5.1960E+00 -2.4294E-01
             8.3160E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2669.29007172044        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      666
 NPARAMETR:  1.0243E+00  2.3892E+00  3.1116E-01  1.8369E-01  1.7119E+00  8.9720E-01  7.2280E-01  1.3096E+00  2.9088E+00  1.7578E+00
             2.7667E+00
 PARAMETER:  1.2403E-01  9.7094E-01 -1.0674E+00 -1.5945E+00  6.3758E-01 -8.4762E-03 -2.2463E-01  3.6970E-01  1.1677E+00  6.6406E-01
             1.1177E+00
 GRADIENT:   1.2119E+01  4.4931E+01  2.8750E+00  5.5154E+00 -9.5299E+00  9.1727E-01  4.6431E+00  1.3411E+00  6.4875E+00  2.0063E+00
            -1.7040E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2669.74071225851        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      829
 NPARAMETR:  1.0177E+00  2.3771E+00  3.0804E-01  1.8195E-01  1.7346E+00  8.9426E-01  7.0578E-01  1.3037E+00  2.8912E+00  1.7488E+00
             2.7676E+00
 PARAMETER:  1.1753E-01  9.6588E-01 -1.0775E+00 -1.6040E+00  6.5079E-01 -1.1757E-02 -2.4845E-01  3.6517E-01  1.1617E+00  6.5893E-01
             1.1180E+00
 GRADIENT:  -5.1783E+00  2.5049E+01  2.6260E+00  3.9304E+00 -4.6562E-01 -2.5845E-01 -7.0081E-01  1.2909E+00  5.5925E+00 -4.4191E-02
            -2.9391E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2669.80453521976        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  1.0195E+00  2.3754E+00  3.0684E-01  1.8156E-01  1.7344E+00  8.9435E-01  7.0832E-01  1.2845E+00  2.8905E+00  1.7453E+00
             2.7675E+00
 PARAMETER:  1.1930E-01  9.6516E-01 -1.0814E+00 -1.6062E+00  6.5065E-01 -1.1657E-02 -2.4486E-01  3.5039E-01  1.1614E+00  6.5691E-01
             1.1179E+00
 GRADIENT:  -2.9525E+04  1.8430E+03  1.6357E+03  1.0977E+03 -1.5065E-01 -1.7612E+04  1.8822E-01 -1.0063E+04  1.5163E+03 -5.9573E-01
            -3.1996E+03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      986
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1047E-03 -4.0027E-02 -4.1334E-03  3.4806E-02 -2.4093E-02
 SE:             2.9289E-02  2.5023E-02  3.1874E-03  1.7348E-02  2.6191E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4271E-01  1.0969E-01  1.9470E-01  4.4825E-02  3.5762E-01

 ETASHRINKSD(%)  1.8788E+00  1.6168E+01  8.9322E+01  4.1881E+01  1.2257E+01
 ETASHRINKVR(%)  3.7224E+00  2.9722E+01  9.8860E+01  6.6222E+01  2.3012E+01
 EBVSHRINKSD(%)  2.1403E+00  1.4245E+01  8.7458E+01  4.8124E+01  9.5243E+00
 EBVSHRINKVR(%)  4.2349E+00  2.6460E+01  9.8427E+01  7.3089E+01  1.8141E+01
 RELATIVEINF(%)  9.5680E+01  1.9609E+01  9.4940E-01  6.6418E+00  5.3126E+01
 EPSSHRINKSD(%)  1.6732E+01
 EPSSHRINKVR(%)  3.0665E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          883
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1622.8454496394520     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2669.8045352197646     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1046.9590855803126     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2669.805       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.38E+00  3.07E-01  1.82E-01  1.73E+00  8.94E-01  7.08E-01  1.28E+00  2.89E+00  1.75E+00  2.77E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.547
Stop Time:
Fri Oct  1 04:17:57 CDT 2021