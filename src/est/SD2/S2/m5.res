Fri Oct  1 13:21:55 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat5.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2098.33015365871        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1111E+02  4.5543E+00  1.5219E+01  1.6869E+01 -2.8708E+01  4.1264E+01 -4.1475E+00  8.5412E+00  1.7711E+01  1.6808E+00
             3.3826E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2103.60839461187        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      113
 NPARAMETR:  9.4097E-01  1.0099E+00  9.9428E-01  9.8832E-01  1.0106E+00  9.2264E-01  1.0096E+00  9.8556E-01  9.7830E-01  1.0008E+00
             9.7271E-01
 PARAMETER:  3.9152E-02  1.0988E-01  9.4261E-02  8.8254E-02  1.1055E-01  1.9488E-02  1.0951E-01  8.5450E-02  7.8058E-02  1.0076E-01
             7.2327E-02
 GRADIENT:  -8.9226E+00 -3.6761E+01  1.1398E+01 -6.0064E+01 -2.7465E+01 -7.8743E+00 -8.6777E+00  7.8509E+00  6.8009E+00 -4.1676E-01
             1.2162E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2108.16302905653        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      289
 NPARAMETR:  9.4273E-01  1.0728E+00  9.4081E-01  9.8466E-01  1.0546E+00  9.5545E-01  1.1660E+00  6.5595E-01  8.9579E-01  1.0871E+00
             9.6589E-01
 PARAMETER:  4.1029E-02  1.7025E-01  3.8981E-02  8.4545E-02  1.5316E-01  5.4426E-02  2.5354E-01 -3.2167E-01 -1.0048E-02  1.8353E-01
             6.5300E-02
 GRADIENT:  -4.1216E+00 -1.0023E+00 -2.0488E+00  4.8807E+00  9.8738E+00  5.5229E+00  3.3150E-01  1.8921E+00 -1.3831E+00  3.6346E+00
             6.4702E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2113.02729458839        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      469
 NPARAMETR:  9.5186E-01  1.1787E+00  4.8574E-01  8.8454E-01  7.8711E-01  9.6468E-01  1.1334E+00  2.1723E-01  9.3659E-01  7.4020E-01
             9.4166E-01
 PARAMETER:  5.0667E-02  2.6441E-01 -6.2209E-01 -2.2684E-02 -1.3938E-01  6.4037E-02  2.2522E-01 -1.4268E+00  3.4490E-02 -2.0084E-01
             3.9892E-02
 GRADIENT:   8.2716E+00 -1.8286E+00 -2.0546E+01  1.6848E+01  1.0634E+01  7.2393E+00  1.4743E+01  1.2997E+00 -2.8478E-01  1.0812E+01
             8.8553E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2114.99415991373        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      644
 NPARAMETR:  9.4842E-01  1.2779E+00  4.8087E-01  8.2182E-01  8.3951E-01  9.4474E-01  9.8819E-01  8.1926E-02  1.0117E+00  7.2695E-01
             9.3146E-01
 PARAMETER:  4.7041E-02  3.4520E-01 -6.3215E-01 -9.6236E-02 -7.4942E-02  4.3153E-02  8.8119E-02 -2.4019E+00  1.1164E-01 -2.1890E-01
             2.8998E-02
 GRADIENT:  -6.8574E-01 -4.2829E+00 -3.2352E+00  3.7589E+00  7.4078E+00 -9.6520E-01 -8.0049E-01  1.4615E-01  7.4260E-01 -4.4774E-01
            -3.6877E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2115.02340244915        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  9.4871E-01  1.3038E+00  4.7447E-01  8.0617E-01  8.4710E-01  9.4599E-01  9.7502E-01  6.6072E-02  1.0191E+00  7.3476E-01
             9.3090E-01
 PARAMETER:  4.7349E-02  3.6527E-01 -6.4555E-01 -1.1546E-01 -6.5932E-02  4.4478E-02  7.4703E-02 -2.6170E+00  1.1893E-01 -2.0821E-01
             2.8392E-02
 GRADIENT:  -1.0208E-01  1.5764E-01 -1.8621E-01 -4.3764E-01  1.2265E-01 -4.7592E-01 -5.8616E-01  9.2507E-02 -2.5448E-01 -2.7290E-01
            -5.6047E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2115.08451490794        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      996
 NPARAMETR:  9.4864E-01  1.2778E+00  4.8039E-01  8.2156E-01  8.3601E-01  9.4695E-01  9.9366E-01  1.4324E-02  1.0070E+00  7.2702E-01
             9.3178E-01
 PARAMETER:  4.7278E-02  3.4510E-01 -6.3315E-01 -9.6547E-02 -7.9109E-02  4.5495E-02  9.3638E-02 -4.1458E+00  1.0699E-01 -2.1880E-01
             2.9339E-02
 GRADIENT:  -1.0430E-01 -1.5873E-01  4.3680E-02 -1.5431E-01 -6.6819E-02 -3.3315E-02  1.1138E-02  4.5202E-03 -1.3616E-02  3.9879E-02
            -3.1152E-02

0ITERATION NO.:   34    OBJECTIVE VALUE:  -2115.08521954847        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:     1124
 NPARAMETR:  9.4867E-01  1.2801E+00  4.7981E-01  8.2032E-01  8.3690E-01  9.4694E-01  9.9215E-01  1.0000E-02  1.0079E+00  7.2755E-01
             9.3174E-01
 PARAMETER:  4.7311E-02  3.4691E-01 -6.3437E-01 -9.8064E-02 -7.8056E-02  4.5484E-02  9.2115E-02 -4.7000E+00  1.0790E-01 -2.1808E-01
             2.9293E-02
 GRADIENT:  -4.2403E-02  4.5474E-02 -6.8754E-03  7.4493E-03 -2.2871E-02 -4.2258E-02 -2.0869E-02  0.0000E+00 -5.0621E-02  7.2719E-04
            -4.5122E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1124
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5921E-04 -1.0592E-02 -3.2214E-04  8.0501E-03 -1.5915E-02
 SE:             2.9883E-02  2.4704E-02  1.4185E-04  2.5271E-02  2.0687E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7439E-01  6.6811E-01  2.3147E-02  7.5006E-01  4.4172E-01

 ETASHRINKSD(%)  1.0000E-10  1.7237E+01  9.9525E+01  1.5340E+01  3.0695E+01
 ETASHRINKVR(%)  1.0000E-10  3.1503E+01  9.9998E+01  2.8326E+01  5.1968E+01
 EBVSHRINKSD(%)  3.2811E-01  1.7469E+01  9.9468E+01  1.5470E+01  3.1111E+01
 EBVSHRINKVR(%)  6.5515E-01  3.1887E+01  9.9997E+01  2.8547E+01  5.2543E+01
 RELATIVEINF(%)  9.9306E+01  6.1971E+00  6.7877E-04  7.3825E+00  5.7952E+00
 EPSSHRINKSD(%)  3.4350E+01
 EPSSHRINKVR(%)  5.6901E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2115.0852195484713     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1196.1466863437986     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.06
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2115.085       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.49E-01  1.28E+00  4.80E-01  8.20E-01  8.37E-01  9.47E-01  9.92E-01  1.00E-02  1.01E+00  7.28E-01  9.32E-01
 


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
 #CPUT: Total CPU Time in Seconds,       16.109
Stop Time:
Fri Oct  1 13:22:26 CDT 2021