Fri Oct  1 11:23:34 CDT 2021
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
$DATA ../../../../data/SD2/S1/dat88.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2116.39730464928        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1548E+02 -3.8560E+01 -4.9421E+01  2.6956E+01  9.9874E+01  4.9276E+01 -1.8020E+00 -7.3032E-01  8.2865E+00  1.0027E+01
            -1.0657E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2122.59631437289        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  1.0118E+00  1.0398E+00  1.0745E+00  1.0322E+00  9.7169E-01  9.6697E-01  1.0140E+00  1.0253E+00  9.8205E-01  8.7709E-01
             1.0461E+00
 PARAMETER:  1.1172E-01  1.3903E-01  1.7190E-01  1.3170E-01  7.1287E-02  6.6413E-02  1.1391E-01  1.2498E-01  8.1886E-02 -3.1146E-02
             1.4510E-01
 GRADIENT:   1.3352E+01  6.7018E+00 -1.5169E+00  1.2299E+01  1.3766E+01 -6.9216E+00 -4.1413E+00 -7.2435E+00 -1.6565E-01  4.2574E-02
             1.7411E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2123.87006676471        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  1.0072E+00  9.3796E-01  1.1496E+00  1.1052E+00  9.4877E-01  9.8363E-01  1.2311E+00  1.2194E+00  8.8388E-01  7.9490E-01
             1.0238E+00
 PARAMETER:  1.0717E-01  3.5956E-02  2.3938E-01  2.0006E-01  4.7412E-02  8.3492E-02  3.0792E-01  2.9838E-01 -2.3429E-02 -1.2954E-01
             1.2348E-01
 GRADIENT:   4.9355E+00  1.5201E+01 -4.0773E+00  2.1312E+01  8.6211E+00  2.2664E-01  6.5808E-02  6.2104E-01 -5.0706E+00 -3.6079E+00
            -1.2302E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2124.93074321872        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  1.0020E+00  7.3375E-01  1.3162E+00  1.2277E+00  9.2656E-01  9.7989E-01  1.3263E+00  1.2473E+00  8.6015E-01  8.5401E-01
             1.0206E+00
 PARAMETER:  1.0197E-01 -2.0958E-01  3.7478E-01  3.0513E-01  2.3728E-02  7.9682E-02  3.8243E-01  3.2096E-01 -5.0653E-02 -5.7814E-02
             1.2035E-01
 GRADIENT:  -1.5980E+00  7.2732E+00  6.7902E+00  1.5624E+00 -1.3929E+01 -2.6693E-01 -1.7873E-01 -1.5024E+00 -7.9219E-01  1.5471E+00
             7.7731E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2125.55994570331        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  9.9927E-01  4.5369E-01  1.6038E+00  1.4172E+00  9.3647E-01  9.7752E-01  1.5286E+00  1.4682E+00  8.1111E-01  8.7546E-01
             1.0181E+00
 PARAMETER:  9.9266E-02 -6.9034E-01  5.7235E-01  4.4869E-01  3.4361E-02  7.7267E-02  5.2436E-01  4.8407E-01 -1.0935E-01 -3.3004E-02
             1.1793E-01
 GRADIENT:   4.8533E-01  3.8102E+00 -1.2135E+00  1.0426E+01  9.3469E-01  1.4470E-01  3.5486E-01  5.3288E-01  8.7918E-01  2.4318E-01
            -6.5173E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2125.58222439911        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  9.9803E-01  3.6872E-01  1.6895E+00  1.4729E+00  9.3462E-01  9.7638E-01  1.5878E+00  1.5288E+00  7.9375E-01  8.7734E-01
             1.0184E+00
 PARAMETER:  9.8024E-02 -8.9772E-01  6.2446E-01  4.8720E-01  3.2381E-02  7.6095E-02  5.6238E-01  5.2446E-01 -1.3099E-01 -3.0863E-02
             1.1819E-01
 GRADIENT:   1.8698E-01  3.1052E+00 -1.7166E-01  9.9310E+00 -5.2326E-01  5.2662E-02  1.8019E-01  1.5400E-01  2.5748E-01  3.0506E-02
            -4.9485E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2125.64133503861        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1059
 NPARAMETR:  9.9796E-01  3.5787E-01  1.6912E+00  1.4712E+00  9.3385E-01  9.7626E-01  1.5032E+00  1.5278E+00  7.9444E-01  8.7882E-01
             1.0187E+00
 PARAMETER:  9.7963E-02 -9.2760E-01  6.2544E-01  4.8605E-01  3.1565E-02  7.5973E-02  5.0761E-01  5.2382E-01 -1.3012E-01 -2.9173E-02
             1.1855E-01
 GRADIENT:   4.6328E-01  1.2951E-01 -5.2362E-01 -7.3549E+00  2.0459E+00  7.5408E-02  6.5905E-02 -1.1093E-03 -1.6259E-01 -2.4706E-01
             3.0722E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2125.64469607996        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1247
 NPARAMETR:  9.9833E-01  3.5758E-01  1.6904E+00  1.4710E+00  9.3288E-01  9.7626E-01  1.4536E+00  1.5275E+00  7.9631E-01  8.8024E-01
             1.0186E+00
 PARAMETER:  9.8330E-02 -9.2839E-01  6.2496E-01  4.8596E-01  3.0523E-02  7.5974E-02  4.7406E-01  5.2365E-01 -1.2777E-01 -2.7559E-02
             1.1843E-01
 GRADIENT:   1.3187E+00  1.8212E-01 -1.5021E-01 -7.5413E+00  6.9746E-01  7.6040E-02  3.3066E-02  6.9297E-02 -1.4467E-01 -1.0411E-01
            -1.2134E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2125.64589494254        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1437             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9842E-01  3.5834E-01  1.6896E+00  1.4703E+00  9.3229E-01  9.7630E-01  1.4174E+00  1.5259E+00  7.9767E-01  8.8169E-01
             1.0186E+00
 PARAMETER:  9.8419E-02 -9.2626E-01  6.2449E-01  4.8546E-01  2.9890E-02  7.6010E-02  4.4881E-01  5.2259E-01 -1.2606E-01 -2.5915E-02
             1.1840E-01
 GRADIENT:   4.1207E+02  4.8287E+01  1.0920E+01  7.4675E+02  6.1795E+00  3.9889E+01  3.1977E+00  3.0927E+00  1.1482E+01  5.3931E-01
             1.1911E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2125.64589494254        NO. OF FUNC. EVALS.:  62
 CUMULATIVE NO. OF FUNC. EVALS.:     1499
 NPARAMETR:  9.9842E-01  3.5834E-01  1.6896E+00  1.4703E+00  9.3229E-01  9.7630E-01  1.4174E+00  1.5259E+00  7.9767E-01  8.8169E-01
             1.0186E+00
 PARAMETER:  9.8419E-02 -9.2626E-01  6.2449E-01  4.8546E-01  2.9890E-02  7.6010E-02  4.4881E-01  5.2259E-01 -1.2606E-01 -2.5915E-02
             1.1840E-01
 GRADIENT:  -2.5103E-02  3.8379E-02  3.2938E-01  7.6425E-01 -4.2609E-01 -2.9072E-03 -1.8188E-03  8.1920E-03 -1.1160E-01  2.4111E-02
             7.7323E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1499
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.8470E-04 -8.0017E-03 -3.6169E-02 -3.3797E-03 -3.9168E-02
 SE:             2.9873E-02  8.3564E-03  1.9087E-02  2.8485E-02  2.0169E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9507E-01  3.3829E-01  5.8100E-02  9.0555E-01  5.2134E-02

 ETASHRINKSD(%)  1.0000E-10  7.2005E+01  3.6055E+01  4.5733E+00  3.2432E+01
 ETASHRINKVR(%)  1.0000E-10  9.2163E+01  5.9111E+01  8.9375E+00  5.4345E+01
 EBVSHRINKSD(%)  3.5509E-01  7.2402E+01  3.8657E+01  5.0511E+00  3.0347E+01
 EBVSHRINKVR(%)  7.0891E-01  9.2384E+01  6.2370E+01  9.8471E+00  5.1485E+01
 RELATIVEINF(%)  9.6626E+01  2.5623E-01  9.3520E+00  3.5459E+00  8.5088E+00
 EPSSHRINKSD(%)  3.4308E+01
 EPSSHRINKVR(%)  5.6846E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2125.6458949425355     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1206.7073617378628     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2125.646       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.98E-01  3.58E-01  1.69E+00  1.47E+00  9.32E-01  9.76E-01  1.42E+00  1.53E+00  7.98E-01  8.82E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       23.457
Stop Time:
Fri Oct  1 11:23:59 CDT 2021