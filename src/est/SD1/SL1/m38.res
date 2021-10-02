Fri Oct  1 02:23:57 CDT 2021
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
$DATA ../../../../data/SD1/SL1/dat38.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
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

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m38.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2199.95633351555        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7560E+02  1.8248E+01  3.7598E+02  1.3028E+02  1.1426E+02  2.2308E+01 -7.1613E+01 -6.1896E+02 -1.7185E+02  2.0551E+01
            -2.4323E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3151.93435599152        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8225E-01  1.0417E+00  7.3711E-01  9.2856E-01  9.2521E-01  9.9100E-01  1.2421E+00  1.0476E+00  1.2020E+00  7.7957E-01
             1.7807E+00
 PARAMETER:  8.2088E-02  1.4090E-01 -2.0502E-01  2.5885E-02  2.2262E-02  9.0957E-02  3.1681E-01  1.4651E-01  2.8398E-01 -1.4902E-01
             6.7703E-01
 GRADIENT:   1.1051E+02  1.3694E+01 -1.2440E+01  2.3306E+01  2.1563E+01 -1.3680E+01  5.8277E+00  6.9603E+00  2.2077E+01  1.0982E+01
            -2.2372E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3154.74953564237        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      221
 NPARAMETR:  9.7486E-01  1.0101E+00  7.6017E-01  9.4659E-01  9.1339E-01  1.0308E+00  1.4304E+00  8.8225E-01  1.1261E+00  6.0395E-01
             1.8032E+00
 PARAMETER:  7.4535E-02  1.1004E-01 -1.7422E-01  4.5112E-02  9.4068E-03  1.3034E-01  4.5797E-01 -2.5275E-02  2.1874E-01 -4.0426E-01
             6.8957E-01
 GRADIENT:  -5.0242E+01 -2.0809E+01  1.7666E+00  5.1110E+00  2.6161E+01 -1.7363E+01  8.8004E+00  1.2433E+00 -3.7804E+00 -5.8303E-01
            -1.9189E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3156.71138455802        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      398
 NPARAMETR:  1.0004E+00  1.0673E+00  7.5937E-01  9.2632E-01  9.3664E-01  1.0768E+00  1.3257E+00  8.1626E-01  1.1529E+00  6.5903E-01
             1.8253E+00
 PARAMETER:  1.0036E-01  1.6517E-01 -1.7526E-01  2.3461E-02  3.4542E-02  1.7402E-01  3.8193E-01 -1.0302E-01  2.4231E-01 -3.1699E-01
             7.0177E-01
 GRADIENT:   2.6464E+00 -4.4913E+00 -2.7485E-01  2.5961E+00  3.3691E+00  1.6302E+00  9.5484E-02  5.3988E-01  1.0569E+00 -8.0370E-01
            -1.2037E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3157.36642264746        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      574
 NPARAMETR:  9.9541E-01  1.3459E+00  8.2938E-01  7.8288E-01  1.1689E+00  1.0692E+00  1.0826E+00  8.8835E-01  1.2368E+00  9.1863E-01
             1.8435E+00
 PARAMETER:  9.5401E-02  3.9705E-01 -8.7081E-02 -1.4477E-01  2.5602E-01  1.6690E-01  1.7937E-01 -1.8390E-02  3.1254E-01  1.5124E-02
             7.1167E-01
 GRADIENT:  -7.7045E+00 -1.4254E+00  4.7994E+00  6.4976E+00  5.1424E+00 -8.1180E-01 -1.0024E+00  3.6405E-01 -1.8990E-01 -2.1134E+00
             1.0478E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3158.53485409267        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      751
 NPARAMETR:  1.0012E+00  1.6881E+00  7.2598E-01  5.8309E-01  1.4125E+00  1.0719E+00  9.1934E-01  7.5544E-01  1.4649E+00  1.1283E+00
             1.8539E+00
 PARAMETER:  1.0121E-01  6.2363E-01 -2.2023E-01 -4.3942E-01  4.4535E-01  1.6939E-01  1.5902E-02 -1.8045E-01  4.8176E-01  2.2071E-01
             7.1730E-01
 GRADIENT:   2.9302E+00  1.7644E+01  2.1655E+00  1.0174E+01 -9.0772E-01  2.9373E-01 -7.1538E-01  3.2184E-01 -1.9440E+00  5.2260E-01
             2.5545E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3159.17905836821        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      927
 NPARAMETR:  9.9790E-01  1.9237E+00  5.6948E-01  4.2764E-01  1.5909E+00  1.0681E+00  8.4529E-01  3.7467E-01  1.8028E+00  1.2222E+00
             1.8532E+00
 PARAMETER:  9.7902E-02  7.5425E-01 -4.6303E-01 -7.4948E-01  5.6433E-01  1.6589E-01 -6.8081E-02 -8.8170E-01  6.8936E-01  3.0062E-01
             7.1691E-01
 GRADIENT:  -3.4963E+00  1.4947E+01 -1.9279E+00  8.7546E+00  6.4506E+00 -1.1485E+00  2.4539E-02  1.9829E-01 -1.7003E+00 -5.5708E-01
             3.0910E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3159.40053959974        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1107
 NPARAMETR:  9.9956E-01  1.9871E+00  5.2288E-01  3.7384E-01  1.6408E+00  1.0710E+00  8.2406E-01  1.2916E-01  1.9810E+00  1.2493E+00
             1.8516E+00
 PARAMETER:  9.9565E-02  7.8666E-01 -5.4840E-01 -8.8392E-01  5.9519E-01  1.6855E-01 -9.3507E-02 -1.9467E+00  7.8361E-01  3.2258E-01
             7.1608E-01
 GRADIENT:  -3.3526E-01 -2.7608E-01 -6.0932E-01  1.3204E+00  1.6580E+00 -9.5138E-02 -8.2302E-03  3.7222E-02  2.9923E-02 -2.1096E-01
            -3.1646E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3159.41964217369        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1287
 NPARAMETR:  9.9990E-01  1.9860E+00  5.2331E-01  3.7149E-01  1.6405E+00  1.0716E+00  8.2329E-01  2.2937E-02  1.9911E+00  1.2507E+00
             1.8519E+00
 PARAMETER:  9.9897E-02  7.8610E-01 -5.4758E-01 -8.9024E-01  5.9497E-01  1.6911E-01 -9.4450E-02 -3.6750E+00  7.8868E-01  3.2368E-01
             7.1623E-01
 GRADIENT:   6.2833E-01 -4.4349E+00 -2.0328E-01 -3.6794E-01  2.4662E-01  2.0463E-01  3.7190E-02  9.6790E-04  2.6551E-01  8.0115E-02
             1.2315E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -3159.42245787827        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1384
 NPARAMETR:  9.9984E-01  1.9854E+00  5.2535E-01  3.7267E-01  1.6384E+00  1.0715E+00  8.2306E-01  1.0000E-02  1.9870E+00  1.2500E+00
             1.8517E+00
 PARAMETER:  9.9839E-02  7.8580E-01 -5.4368E-01 -8.8706E-01  5.9374E-01  1.6908E-01 -9.4731E-02 -5.2485E+00  7.8665E-01  3.2317E-01
             7.1610E-01
 GRADIENT:   5.1158E-01 -2.6074E+00  7.0979E-02 -2.8650E-01 -5.7237E-01  1.9326E-01 -1.3055E-01  0.0000E+00  1.5142E-01  8.4303E-02
            -3.2176E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1384
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.7177E-04 -2.8398E-02 -6.7790E-05  3.2136E-02 -2.3530E-02
 SE:             2.9724E-02  2.5378E-02  7.1255E-05  2.1202E-02  2.5512E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7660E-01  2.6315E-01  3.4141E-01  1.2960E-01  3.5636E-01

 ETASHRINKSD(%)  4.2032E-01  1.4979E+01  9.9761E+01  2.8970E+01  1.4532E+01
 ETASHRINKVR(%)  8.3887E-01  2.7715E+01  9.9999E+01  4.9547E+01  2.6952E+01
 EBVSHRINKSD(%)  7.3989E-01  1.5454E+01  9.9773E+01  3.1471E+01  1.2521E+01
 EBVSHRINKVR(%)  1.4743E+00  2.8519E+01  9.9999E+01  5.3038E+01  2.3474E+01
 RELATIVEINF(%)  9.8513E+01  1.3163E+01  2.3564E-04  7.8357E+00  2.6844E+01
 EPSSHRINKSD(%)  1.7612E+01
 EPSSHRINKVR(%)  3.2122E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3159.4224578782682     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1505.3330981098575     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    35.76
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3159.422       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.99E+00  5.25E-01  3.73E-01  1.64E+00  1.07E+00  8.23E-01  1.00E-02  1.99E+00  1.25E+00  1.85E+00
 


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
 #CPUT: Total CPU Time in Seconds,       35.827
Stop Time:
Fri Oct  1 02:24:34 CDT 2021