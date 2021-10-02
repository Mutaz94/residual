Fri Oct  1 03:07:11 CDT 2021
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
$DATA ../../../../data/SD1/SL2/dat48.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      995
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

 TOT. NO. OF OBS RECS:      895
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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1721.30047383415        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4313E+02  7.9882E+01  1.9711E+02  9.8059E+01  9.1661E+01  1.2118E+01 -9.9343E+01 -1.3717E+02 -2.8328E+00 -2.5005E+01
            -3.9615E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2939.03082327205        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0743E+00  1.1079E+00  8.3732E-01  9.7471E-01  9.8584E-01  1.0984E+00  1.1241E+00  9.6555E-01  8.8172E-01  9.8542E-01
             2.0500E+00
 PARAMETER:  1.7167E-01  2.0246E-01 -7.7544E-02  7.4384E-02  8.5735E-02  1.9382E-01  2.1695E-01  6.4947E-02 -2.5875E-02  8.5316E-02
             8.1786E-01
 GRADIENT:   2.9167E+02  6.2331E+01 -1.0061E+01  2.5936E+01 -8.9086E-01  2.0740E+01  1.0026E+00  5.8510E+00 -5.0756E+00 -2.7762E+00
            -1.7755E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2940.68008507837        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      242
 NPARAMETR:  1.0740E+00  1.1599E+00  9.0546E-01  9.5586E-01  1.0908E+00  1.0782E+00  1.1749E+00  7.2000E-01  8.7571E-01  1.0376E+00
             2.0773E+00
 PARAMETER:  1.7136E-01  2.4833E-01  6.8377E-04  5.4852E-02  1.8689E-01  1.7525E-01  2.6117E-01 -2.2850E-01 -3.2716E-02  1.3693E-01
             8.3107E-01
 GRADIENT:   1.0774E+02  6.2633E+00 -5.6093E+00  3.7258E+01  4.5168E+01 -4.8709E+00  9.9863E+00 -1.4382E+00 -7.1153E+00 -4.1510E+00
            -1.7602E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2952.46688007768        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  1.0171E+00  9.9588E-01  7.9162E-01  1.0296E+00  8.9628E-01  1.0773E+00  1.2271E+00  3.0087E-01  8.9794E-01  8.9047E-01
             2.2377E+00
 PARAMETER:  1.1694E-01  9.5867E-02 -1.3368E-01  1.2915E-01 -9.5011E-03  1.7448E-01  3.0468E-01 -1.1011E+00 -7.6491E-03 -1.6008E-02
             9.0545E-01
 GRADIENT:   2.0812E+00  9.5763E+00 -2.3217E+00  2.2666E+00 -9.9586E-01  1.3350E+00 -7.4707E-02  5.8821E-02  1.1335E+00  5.6901E-01
             3.5584E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2953.85897767512        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      596
 NPARAMETR:  1.0163E+00  7.7449E-01  6.5572E-01  1.1188E+00  7.0489E-01  1.0742E+00  1.4735E+00  1.5760E-01  8.8157E-01  6.6741E-01
             2.2231E+00
 PARAMETER:  1.1621E-01 -1.5554E-01 -3.2203E-01  2.1229E-01 -2.4972E-01  1.7157E-01  4.8766E-01 -1.7477E+00 -2.6054E-02 -3.0435E-01
             8.9889E-01
 GRADIENT:   1.5975E+00 -8.3284E-01 -1.7391E+00 -4.4091E+00  3.2159E-02  2.6478E-01 -7.1715E-01  4.9906E-02  7.6364E-01  9.0594E-01
            -1.2368E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2953.87960727343        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      731
 NPARAMETR:  1.0155E+00  7.6918E-01  6.5283E-01  1.1227E+00  7.0057E-01  1.0734E+00  1.4879E+00  1.0898E-01  8.7819E-01  6.5434E-01
             2.2243E+00
 PARAMETER:  1.1534E-01 -1.6244E-01 -3.2644E-01  2.1570E-01 -2.5585E-01  1.7081E-01  4.9736E-01 -2.1166E+00 -2.9889E-02 -3.2413E-01
             8.9944E-01
 GRADIENT:   1.0239E+02  1.8678E+01  8.5407E+00  5.4106E+01  3.3343E+01  1.5581E+01  1.1446E+01  5.7492E-02  1.6197E+00  1.3408E+00
             1.4953E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2953.88094367969        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      907
 NPARAMETR:  1.0153E+00  7.6933E-01  6.5246E-01  1.1228E+00  7.0030E-01  1.0733E+00  1.4852E+00  9.2985E-02  8.7828E-01  6.5783E-01
             2.2255E+00
 PARAMETER:  1.1522E-01 -1.6224E-01 -3.2701E-01  2.1587E-01 -2.5624E-01  1.7073E-01  4.9558E-01 -2.2753E+00 -2.9784E-02 -3.1881E-01
             8.9996E-01
 GRADIENT:  -3.8600E-01 -6.2603E-02 -3.1051E-02 -2.2771E-01 -1.7125E-01 -6.9649E-02 -1.4578E-01  3.1441E-03 -4.0315E-02  1.2948E-03
            -1.3299E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2953.88125328756        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1083
 NPARAMETR:  1.0156E+00  7.6892E-01  6.5199E-01  1.1231E+00  6.9989E-01  1.0735E+00  1.4864E+00  6.0931E-02  8.7834E-01  6.5800E-01
             2.2259E+00
 PARAMETER:  1.1545E-01 -1.6277E-01 -3.2773E-01  2.1612E-01 -2.5684E-01  1.7092E-01  4.9636E-01 -2.6980E+00 -2.9726E-02 -3.1855E-01
             9.0017E-01
 GRADIENT:   3.9008E-02 -1.7665E-02 -4.5083E-02  2.6256E-02 -7.5422E-02  4.8389E-03  2.4708E-03  1.1847E-04  1.8169E-04 -8.2299E-03
            -4.7003E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2953.88135303609        NO. OF FUNC. EVALS.: 147
 CUMULATIVE NO. OF FUNC. EVALS.:     1230
 NPARAMETR:  1.0157E+00  7.6896E-01  6.5203E-01  1.1231E+00  6.9992E-01  1.0736E+00  1.4867E+00  7.4385E-02  8.7835E-01  6.5780E-01
             2.2258E+00
 PARAMETER:  1.1558E-01 -1.6272E-01 -3.2766E-01  2.1611E-01 -2.5678E-01  1.7101E-01  4.9653E-01 -2.4985E+00 -2.9707E-02 -3.1885E-01
             9.0012E-01
 GRADIENT:   2.8097E-01 -2.1843E-03 -1.1887E-01  5.2951E-02 -3.5029E-02  3.6558E-02  2.5597E-02  8.9811E-04 -1.0015E-03  1.5561E-02
             2.8479E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1230
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1893E-03 -7.6595E-04 -1.2173E-03 -2.5578E-03 -3.8152E-03
 SE:             2.9591E-02  2.5128E-02  1.6491E-03  2.6688E-02  1.9454E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6794E-01  9.7568E-01  4.6041E-01  9.2365E-01  8.4452E-01

 ETASHRINKSD(%)  8.6609E-01  1.5817E+01  9.4475E+01  1.0593E+01  3.4825E+01
 ETASHRINKVR(%)  1.7247E+00  2.9132E+01  9.9695E+01  2.0064E+01  5.7523E+01
 EBVSHRINKSD(%)  1.0378E+00  1.5149E+01  9.4569E+01  1.0556E+01  3.6152E+01
 EBVSHRINKVR(%)  2.0648E+00  2.8004E+01  9.9705E+01  1.9997E+01  5.9235E+01
 RELATIVEINF(%)  9.7906E+01  1.6567E+01  5.8394E-02  3.9576E+01  3.8889E+00
 EPSSHRINKSD(%)  1.7210E+01
 EPSSHRINKVR(%)  3.1458E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          895
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1644.8999744363641     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2953.8813530360944     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1308.9813785997303     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.62
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2953.881       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  7.69E-01  6.52E-01  1.12E+00  7.00E-01  1.07E+00  1.49E+00  7.44E-02  8.78E-01  6.58E-01  2.23E+00
 


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
 #CPUT: Total CPU Time in Seconds,       29.694
Stop Time:
Fri Oct  1 03:07:43 CDT 2021