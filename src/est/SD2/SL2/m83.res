Fri Oct  1 12:33:54 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat83.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m83.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2118.39266334981        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3713E+02  2.9475E+01 -2.0721E+01  9.1284E+01  8.1903E+00  2.9852E+01  1.2192E+01  3.0032E+00  2.6239E+01  2.9632E+01
            -3.6716E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2121.80084186569        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  9.8730E-01  1.0544E+00  1.0997E+00  9.7811E-01  1.0597E+00  1.0664E+00  9.2585E-01  1.0104E+00  8.8769E-01  7.9536E-01
             1.0386E+00
 PARAMETER:  8.7219E-02  1.5294E-01  1.9504E-01  7.7863E-02  1.5798E-01  1.6424E-01  2.2955E-02  1.1030E-01 -1.9132E-02 -1.2896E-01
             1.3790E-01
 GRADIENT:  -3.8933E+01  1.1816E+01  6.8275E+00  9.3020E+00  2.7657E+01  1.0378E+01 -2.8314E+00 -1.1062E+01 -1.4455E+01 -1.2628E+01
            -1.5274E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2122.95170082480        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  9.9029E-01  1.0105E+00  1.2090E+00  1.0071E+00  1.0756E+00  1.0470E+00  8.9134E-01  1.3812E+00  8.9762E-01  7.6942E-01
             1.0407E+00
 PARAMETER:  9.0245E-02  1.1048E-01  2.8982E-01  1.0710E-01  1.7290E-01  1.4589E-01 -1.5031E-02  4.2292E-01 -8.0096E-03 -1.6212E-01
             1.3986E-01
 GRADIENT:  -3.3490E+01  9.0513E-01 -6.1157E+00  5.7963E+00  2.8039E+01  3.7695E+00 -2.5527E+00  1.5609E+00 -9.6888E+00 -1.2995E+01
            -1.1365E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2124.48673645346        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  1.0059E+00  9.0733E-01  1.2524E+00  1.0709E+00  1.0413E+00  1.0343E+00  9.1759E-01  1.2636E+00  9.0476E-01  8.4473E-01
             1.0517E+00
 PARAMETER:  1.0589E-01  2.7509E-03  3.2509E-01  1.6847E-01  1.4049E-01  1.3369E-01  1.3998E-02  3.3396E-01 -8.6702E-05 -6.8738E-02
             1.5045E-01
 GRADIENT:   2.7065E-01  2.6137E+00  9.9290E-01  2.4759E+00 -2.0365E+00 -7.9183E-03  7.3428E-02 -2.1415E-01  3.8188E-01  2.9725E-01
             1.4128E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2124.51205338138        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      724
 NPARAMETR:  1.0049E+00  7.9101E-01  1.3413E+00  1.1480E+00  1.0268E+00  1.0333E+00  9.7458E-01  1.2858E+00  8.6090E-01  8.4539E-01
             1.0527E+00
 PARAMETER:  1.0492E-01 -1.3445E-01  3.9361E-01  2.3798E-01  1.2642E-01  1.3273E-01  7.4250E-02  3.5141E-01 -4.9781E-02 -6.7962E-02
             1.5136E-01
 GRADIENT:   9.1594E-01  3.8053E+00  1.3801E+00  5.2882E+00 -3.8397E+00  3.9411E-02  1.9590E-02 -4.0057E-01  4.2422E-02  4.7451E-01
             4.0004E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2124.51918433698        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      899
 NPARAMETR:  1.0034E+00  7.2424E-01  1.4154E+00  1.1924E+00  1.0277E+00  1.0323E+00  9.9050E-01  1.3310E+00  8.3981E-01  8.4763E-01
             1.0521E+00
 PARAMETER:  1.0343E-01 -2.2263E-01  4.4741E-01  2.7601E-01  1.2733E-01  1.3184E-01  9.0454E-02  3.8589E-01 -7.4577E-02 -6.5312E-02
             1.5082E-01
 GRADIENT:  -5.2210E-01  3.7187E+00  1.2817E+00  5.9904E+00 -2.7096E+00 -6.1685E-02 -1.9409E-01 -2.6256E-01 -4.9292E-01 -1.8333E-01
            -3.7584E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2124.52106779915        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1074
 NPARAMETR:  1.0027E+00  6.7412E-01  1.4649E+00  1.2249E+00  1.0268E+00  1.0318E+00  1.0080E+00  1.3583E+00  8.2495E-01  8.5004E-01
             1.0522E+00
 PARAMETER:  1.0266E-01 -2.9435E-01  4.8180E-01  3.0289E-01  1.2640E-01  1.3132E-01  1.0798E-01  4.0625E-01 -9.2427E-02 -6.2474E-02
             1.5084E-01
 GRADIENT:  -8.3883E-01  3.0448E+00  1.0156E+00  5.1511E+00 -1.8317E+00 -7.8065E-02 -2.4294E-01 -1.8830E-01 -5.8366E-01 -3.5496E-01
            -5.4158E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2124.53507411268        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1256
 NPARAMETR:  1.0033E+00  6.5944E-01  1.4736E+00  1.2306E+00  1.0267E+00  1.0320E+00  1.0266E+00  1.3643E+00  8.2257E-01  8.5302E-01
             1.0525E+00
 PARAMETER:  1.0327E-01 -3.1636E-01  4.8768E-01  3.0750E-01  1.2640E-01  1.3150E-01  1.2623E-01  4.1066E-01 -9.5316E-02 -5.8972E-02
             1.5121E-01
 GRADIENT:   8.9436E-01 -5.3212E-01 -2.2367E-01 -3.0850E+00  7.3739E-01  6.0335E-02  6.2344E-02  2.0759E-01  4.2827E-01 -3.7284E-02
            -4.7501E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2124.53623703946        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1435             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0036E+00  6.5852E-01  1.4733E+00  1.2319E+00  1.0259E+00  1.0323E+00  1.0284E+00  1.3612E+00  8.2096E-01  8.5315E-01
             1.0527E+00
 PARAMETER:  1.0363E-01 -3.1776E-01  4.8753E-01  3.0856E-01  1.2559E-01  1.3174E-01  1.2805E-01  4.0839E-01 -9.7279E-02 -5.8815E-02
             1.5133E-01
 GRADIENT:   4.2532E+02  5.3595E+01  7.0428E+00  3.4732E+02  7.0024E+00  5.1730E+01  1.9143E+00  1.4958E+00  8.1546E+00  5.1727E-01
             1.5136E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2124.53623703946        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1493
 NPARAMETR:  1.0036E+00  6.5852E-01  1.4733E+00  1.2319E+00  1.0259E+00  1.0323E+00  1.0284E+00  1.3612E+00  8.2096E-01  8.5315E-01
             1.0527E+00
 PARAMETER:  1.0363E-01 -3.1776E-01  4.8753E-01  3.0856E-01  1.2559E-01  1.3174E-01  1.2805E-01  4.0839E-01 -9.7279E-02 -5.8815E-02
             1.5133E-01
 GRADIENT:   1.6593E+00  2.0236E-01  1.0732E-01 -1.5138E+00  3.6872E-02  1.6030E-01  3.5284E-04  3.1854E-02  6.7357E-02  3.5325E-02
             2.9520E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1493
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4111E-04 -1.2419E-02 -3.3863E-02  8.4403E-04 -3.7975E-02
 SE:             2.9880E-02  1.2248E-02  1.7902E-02  2.7206E-02  2.0056E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9089E-01  3.1061E-01  5.8550E-02  9.7525E-01  5.8299E-02

 ETASHRINKSD(%)  1.0000E-10  5.8968E+01  4.0026E+01  8.8562E+00  3.2810E+01
 ETASHRINKVR(%)  1.0000E-10  8.3164E+01  6.4031E+01  1.6928E+01  5.4855E+01
 EBVSHRINKSD(%)  3.3450E-01  5.9142E+01  4.2964E+01  9.2394E+00  3.0897E+01
 EBVSHRINKVR(%)  6.6788E-01  8.3307E+01  6.7469E+01  1.7625E+01  5.2248E+01
 RELATIVEINF(%)  9.7372E+01  3.9823E-01  5.8699E+00  2.2618E+00  8.4241E+00
 EPSSHRINKSD(%)  3.3629E+01
 EPSSHRINKVR(%)  5.5948E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2124.5362370394605     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1205.5977038347878     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.22
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2124.536       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.59E-01  1.47E+00  1.23E+00  1.03E+00  1.03E+00  1.03E+00  1.36E+00  8.21E-01  8.53E-01  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.268
Stop Time:
Fri Oct  1 12:34:18 CDT 2021