Sat Oct  2 00:54:55 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat13.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m13.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -361.439425435193        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7710E+02  7.7108E+01  3.7904E+01  4.4015E+01  2.1290E+02  3.2924E+01 -6.8638E+01 -2.1719E+01 -1.6999E+02 -1.0941E+02
            -2.1678E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1263.72876840967        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.6293E-01  9.1689E-01  1.0572E+00  1.0678E+00  9.2134E-01  8.5044E-01  9.3552E-01  9.1825E-01  1.2375E+00  7.2651E-01
             3.0235E+00
 PARAMETER:  6.2220E-02  1.3236E-02  1.5564E-01  1.6557E-01  1.8073E-02 -6.2007E-02  3.3350E-02  1.4717E-02  3.1306E-01 -2.1951E-01
             1.2064E+00
 GRADIENT:  -4.8332E+01 -8.4971E+00  2.0730E+00 -1.4717E+01  2.0247E+01 -4.2686E+01  6.9616E+00  3.3192E+00  3.6033E+00  8.9216E+00
            -1.0427E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1284.35951411178        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.8070E-01  9.4092E-01  7.7469E-01  1.0256E+00  7.7694E-01  9.1112E-01  2.8209E-01  3.4427E-01  1.3944E+00  3.1212E-01
             3.3106E+00
 PARAMETER:  8.0516E-02  3.9107E-02 -1.5529E-01  1.2525E-01 -1.5239E-01  6.9211E-03 -1.1655E+00 -9.6633E-01  4.3246E-01 -1.0644E+00
             1.2971E+00
 GRADIENT:  -9.3573E+00  3.5873E+00  1.2237E+01 -1.4611E+01 -1.9391E+01 -1.4395E+01  2.9041E-01  8.6100E-01  1.0892E+01  1.1213E+00
            -4.5123E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1289.58428746679        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.9189E-01  8.0686E-01  7.4866E-01  1.1419E+00  7.2394E-01  9.5333E-01  2.7551E-01  1.2958E-01  1.1911E+00  1.8154E-01
             3.5473E+00
 PARAMETER:  9.1854E-02 -1.1460E-01 -1.8947E-01  2.3269E-01 -2.2304E-01  5.2206E-02 -1.1891E+00 -1.9435E+00  2.7486E-01 -1.6063E+00
             1.3662E+00
 GRADIENT:   1.9495E+00  1.0332E+01  2.2051E+00  1.2649E+01 -7.9256E+00  1.9973E+00 -4.0682E-03  1.9952E-01 -1.2931E+00  4.6158E-01
             3.3812E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1289.81158165949        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  9.8563E-01  5.9566E-01  7.0113E-01  1.2429E+00  6.2314E-01  9.4242E-01  1.8752E-01  5.5298E-02  1.1104E+00  1.0587E-01
             3.4988E+00
 PARAMETER:  8.5530E-02 -4.1808E-01 -2.5506E-01  3.1741E-01 -3.7298E-01  4.0694E-02 -1.5739E+00 -2.7950E+00  2.0476E-01 -2.1456E+00
             1.3524E+00
 GRADIENT:  -5.9154E+00  1.0614E+01  8.0060E+00  1.3875E+01 -1.2017E+01 -1.9091E+00 -2.7754E-02  3.6722E-02 -1.1909E+00  7.9764E-03
            -4.4410E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1290.85569983014        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      459
 NPARAMETR:  1.0065E+00  5.3399E-01  7.7379E-01  1.3081E+00  6.5226E-01  9.5699E-01  1.1908E-01  2.8425E-02  1.0678E+00  8.5210E-02
             3.5946E+00
 PARAMETER:  1.0644E-01 -5.2737E-01 -1.5645E-01  3.6855E-01 -3.2731E-01  5.6040E-02 -2.0280E+00 -3.4605E+00  1.6564E-01 -2.3626E+00
             1.3794E+00
 GRADIENT:   8.0771E+00  7.3290E-01  2.2230E-01  2.0349E-01 -3.6870E-01  1.7378E+00 -1.1001E-03  1.0834E-02  8.4183E-01  6.5594E-02
             3.7272E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1291.03761518889        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      636
 NPARAMETR:  1.0013E+00  4.2503E-01  7.3320E-01  1.3679E+00  6.0108E-01  9.5188E-01  6.9282E-02  1.0000E-02  1.0214E+00  4.5750E-02
             3.5680E+00
 PARAMETER:  1.0129E-01 -7.5559E-01 -2.1033E-01  4.1329E-01 -4.0903E-01  5.0685E-02 -2.5696E+00 -4.6990E+00  1.2122E-01 -2.9846E+00
             1.3720E+00
 GRADIENT:  -5.2755E-01  2.5309E+00 -1.0278E+00  9.5099E+00 -1.4705E-01 -3.2989E-01 -1.8649E-03  0.0000E+00 -1.1080E+00  6.9415E-03
            -9.7586E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1292.11090389240        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      814
 NPARAMETR:  9.9678E-01  1.3793E-01  4.2507E-01  1.3970E+00  3.5762E-01  9.6407E-01  1.0000E-02  1.0000E-02  1.0339E+00  1.0000E-02
             3.4870E+00
 PARAMETER:  9.6777E-02 -1.8810E+00 -7.5551E-01  4.3432E-01 -9.2827E-01  6.3412E-02 -6.8260E+00 -1.2738E+01  1.3335E-01 -8.3090E+00
             1.3490E+00
 GRADIENT:  -9.1263E-01  4.6289E+00  2.2632E+01  2.5872E+01 -3.9743E+01  1.5854E+00  0.0000E+00  0.0000E+00 -8.7314E+00  0.0000E+00
             3.8729E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1293.39523859217        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      990
 NPARAMETR:  9.9125E-01  6.5428E-02  3.9212E-01  1.3769E+00  3.3300E-01  9.6192E-01  1.0000E-02  1.0000E-02  1.0738E+00  1.0000E-02
             3.4415E+00
 PARAMETER:  9.1212E-02 -2.6268E+00 -8.3619E-01  4.1980E-01 -9.9960E-01  6.1174E-02 -1.0774E+01 -1.9789E+01  1.7124E-01 -1.2253E+01
             1.3359E+00
 GRADIENT:   1.7740E+00  4.3125E-01  4.6072E+00 -5.7909E+00 -6.9430E+00  1.6230E+00  0.0000E+00  0.0000E+00  6.8726E-01  0.0000E+00
             3.2312E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1293.67655156775        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1165
 NPARAMETR:  9.8704E-01  1.0986E-02  3.9969E-01  1.4096E+00  3.3208E-01  9.5597E-01  1.0000E-02  1.0000E-02  1.0465E+00  1.0000E-02
             3.4317E+00
 PARAMETER:  8.6955E-02 -4.4112E+00 -8.1706E-01  4.4332E-01 -1.0024E+00  5.4967E-02 -2.0185E+01 -3.7117E+01  1.4547E-01 -2.1347E+01
             1.3331E+00
 GRADIENT:  -4.0320E-01  6.1675E-02  3.4700E+00  1.5089E+00 -5.8513E+00  2.7493E-01  0.0000E+00  0.0000E+00 -4.4388E-01  0.0000E+00
             7.2297E-01

0ITERATION NO.:   48    OBJECTIVE VALUE:  -1293.68622207099        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1257
 NPARAMETR:  9.8699E-01  1.0000E-02  3.9962E-01  1.4089E+00  3.3247E-01  9.5556E-01  1.0000E-02  1.0000E-02  1.0476E+00  1.0000E-02
             3.4299E+00
 PARAMETER:  8.6910E-02 -4.7325E+00 -8.1725E-01  4.4280E-01 -1.0012E+00  5.4545E-02 -2.1935E+01 -4.0320E+01  1.4648E-01 -2.3043E+01
             1.3325E+00
 GRADIENT:   1.1465E-01  0.0000E+00  4.1997E-01 -2.6028E-01 -6.2689E-01  1.5066E-01  0.0000E+00  0.0000E+00 -1.9214E-02  0.0000E+00
             5.5163E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1257
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.2533E-04 -3.3446E-06  1.2657E-04 -1.2927E-02  6.5716E-05
 SE:             2.8525E-02  1.7345E-06  2.6702E-04  2.6672E-02  4.0948E-04
 N:                     100         100         100         100         100

 P VAL.:         9.7971E-01  5.3817E-02  6.3549E-01  6.2791E-01  8.7250E-01

 ETASHRINKSD(%)  4.4361E+00  9.9994E+01  9.9105E+01  1.0647E+01  9.8628E+01
 ETASHRINKVR(%)  8.6754E+00  1.0000E+02  9.9992E+01  2.0160E+01  9.9981E+01
 EBVSHRINKSD(%)  4.1598E+00  9.9995E+01  9.9150E+01  9.9068E+00  9.8815E+01
 EBVSHRINKVR(%)  8.1465E+00  1.0000E+02  9.9993E+01  1.8832E+01  9.9986E+01
 RELATIVEINF(%)  7.7156E+01  1.8844E-08  2.2326E-04  2.3955E+01  2.6151E-04
 EPSSHRINKSD(%)  2.2652E+01
 EPSSHRINKVR(%)  4.0173E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1293.6862220709918     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -558.53539550725361     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1293.686       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.87E-01  1.00E-02  4.00E-01  1.41E+00  3.32E-01  9.56E-01  1.00E-02  1.00E-02  1.05E+00  1.00E-02  3.43E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.935
Stop Time:
Sat Oct  2 00:55:12 CDT 2021
