Sat Oct  2 00:39:46 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat65.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m65.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -456.109358659955        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0440E+02  6.8144E+01  6.1570E+01  4.2432E+01  1.7964E+02  7.1622E+01 -3.7442E+01 -3.9486E+01 -8.4954E+01 -1.2690E+02
            -2.1555E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1308.25669011113        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0539E+00  1.0791E+00  1.1485E+00  9.1227E-01  1.0943E+00  6.9390E-01  7.4418E-01  9.1566E-01  6.7849E-01  6.1597E-01
             3.1056E+00
 PARAMETER:  1.5253E-01  1.7612E-01  2.3846E-01  8.1798E-03  1.9015E-01 -2.6543E-01 -1.9547E-01  1.1894E-02 -2.8788E-01 -3.8456E-01
             1.2332E+00
 GRADIENT:   1.8038E+02 -1.2027E+02 -1.5041E+01 -1.3855E+02  6.3397E+01 -7.0378E+01 -1.9420E+01  2.1312E-01 -3.6940E+01  1.9186E+00
            -1.6289E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1338.34683683456        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0519E+00  1.4081E+00  8.4382E-01  7.4086E-01  9.7296E-01  7.3607E-01  6.9711E-01  5.2146E-01  1.1143E+00  2.1178E-01
             3.5492E+00
 PARAMETER:  1.5060E-01  4.4223E-01 -6.9822E-02 -1.9995E-01  7.2588E-02 -2.0643E-01 -2.6081E-01 -5.5113E-01  2.0819E-01 -1.4522E+00
             1.3667E+00
 GRADIENT:   1.0170E+02  4.6830E+01  2.8675E+01 -2.7438E+01 -6.8898E+01 -3.7818E+01  3.9922E+00  1.0671E-01 -5.3692E+00  1.6983E-01
            -2.5609E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1347.77433720587        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0179E+00  9.0130E-01  7.0875E-01  1.0991E+00  7.4107E-01  8.6799E-01  6.4028E-01  9.4796E-02  1.0025E+00  2.6636E-01
             3.5150E+00
 PARAMETER:  1.1774E-01 -3.9198E-03 -2.4425E-01  1.9446E-01 -1.9967E-01 -4.1579E-02 -3.4585E-01 -2.2560E+00  1.0252E-01 -1.2229E+00
             1.3570E+00
 GRADIENT:  -3.5139E+01  2.9228E+01  7.5898E+00  3.9267E+01 -1.7316E+01  9.0823E+00 -9.3757E-01  4.4604E-02 -4.2918E+00  3.5433E-01
            -1.0554E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1348.81738220778        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  1.0287E+00  9.1902E-01  6.6298E-01  1.0542E+00  7.2654E-01  8.3651E-01  6.5292E-01  1.1263E-01  1.0456E+00  2.1938E-01
             3.5163E+00
 PARAMETER:  1.2831E-01  1.5557E-02 -3.1101E-01  1.5281E-01 -2.1946E-01 -7.8521E-02 -3.2630E-01 -2.0837E+00  1.4461E-01 -1.4169E+00
             1.3574E+00
 GRADIENT:   1.0129E+00  4.9481E+00  2.1388E+00  2.0275E+00 -4.2394E+00 -3.5872E-02  4.1793E-02  6.3565E-02  4.5316E-01  2.8184E-01
             1.7174E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1349.59556314018        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      454
 NPARAMETR:  1.0486E+00  8.5912E-01  7.2255E-01  1.1132E+00  7.3822E-01  8.3903E-01  6.7520E-01  1.0311E-01  1.0068E+00  1.9143E-01
             3.5877E+00
 PARAMETER:  1.4741E-01 -5.1842E-02 -2.2497E-01  2.0724E-01 -2.0351E-01 -7.5511E-02 -2.9274E-01 -2.1719E+00  1.0682E-01 -1.5532E+00
             1.3775E+00
 GRADIENT:   7.6519E+00  7.5327E+00  2.3578E+00  5.9174E+00 -6.7621E+00 -5.7608E-01  1.9366E-02  5.8858E-02  1.6445E-01  1.7184E-01
             5.5743E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1350.03513594876        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      630
 NPARAMETR:  1.0413E+00  6.4210E-01  7.7212E-01  1.2386E+00  6.9103E-01  8.3800E-01  8.4541E-01  3.8118E-02  9.1673E-01  9.9281E-02
             3.5922E+00
 PARAMETER:  1.4044E-01 -3.4301E-01 -1.5862E-01  3.1394E-01 -2.6957E-01 -7.6740E-02 -6.7935E-02 -3.1671E+00  1.3055E-02 -2.2098E+00
             1.3788E+00
 GRADIENT:  -3.4930E+00  2.4462E+00  2.4502E+00  2.2799E+00 -4.0251E+00  3.4713E-02  3.2948E-01  9.8828E-03  3.6608E-01  3.4678E-03
             2.4460E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1350.07123339662        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      812             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0416E+00  5.8809E-01  7.7440E-01  1.2676E+00  6.7766E-01  8.3765E-01  8.5518E-01  2.5520E-02  8.9956E-01  1.0668E-01
             3.5938E+00
 PARAMETER:  1.4073E-01 -4.3088E-01 -1.5566E-01  3.3712E-01 -2.8912E-01 -7.7160E-02 -5.6443E-02 -3.5683E+00 -5.8462E-03 -2.1379E+00
             1.3792E+00
 GRADIENT:   4.5138E+01  4.1351E+00  3.5829E-01  2.6128E+01  3.2410E+00  2.0348E+00  8.0675E-02  5.7896E-03  7.0968E-01  2.1296E-02
             1.1613E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1350.07336272057        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      908
 NPARAMETR:  1.0415E+00  5.8791E-01  7.7443E-01  1.2671E+00  6.7754E-01  8.3762E-01  8.5680E-01  1.0000E-02  8.9932E-01  1.1832E-01
             3.5921E+00
 PARAMETER:  1.4067E-01 -4.3118E-01 -1.5563E-01  3.3676E-01 -2.8928E-01 -7.7187E-02 -5.4555E-02 -4.5117E+00 -6.1218E-03 -2.0344E+00
             1.3787E+00
 GRADIENT:  -2.9116E-01 -2.5767E-01 -2.4718E-01 -7.9552E-01  6.4030E-01 -4.6785E-02  3.9549E-02  3.8632E-04  2.4095E-03  4.6585E-03
             4.9993E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1350.07383436197        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1001
 NPARAMETR:  1.0415E+00  5.8800E-01  7.7441E-01  1.2674E+00  6.7740E-01  8.3778E-01  8.5220E-01  1.0000E-02  8.9976E-01  1.1610E-01
             3.5903E+00
 PARAMETER:  1.4069E-01 -4.3103E-01 -1.5565E-01  3.3700E-01 -2.8949E-01 -7.7004E-02 -5.9931E-02 -4.5382E+00 -5.6249E-03 -2.0533E+00
             1.3782E+00
 GRADIENT:  -2.2540E-01  2.1775E-02  4.5646E-02 -1.6567E-01  9.8369E-02 -1.5304E-02 -2.9917E-03  1.0850E-04 -2.8667E-02 -2.4165E-04
            -7.4601E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1001
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -8.9126E-05 -7.7996E-03  8.1379E-05 -1.0931E-02 -7.1223E-04
 SE:             2.8177E-02  8.6612E-03  1.4967E-04  2.3414E-02  2.8278E-03
 N:                     100         100         100         100         100

 P VAL.:         9.9748E-01  3.6784E-01  5.8664E-01  6.4061E-01  8.0115E-01

 ETASHRINKSD(%)  5.6040E+00  7.0984E+01  9.9499E+01  2.1560E+01  9.0526E+01
 ETASHRINKVR(%)  1.0894E+01  9.1581E+01  9.9997E+01  3.8472E+01  9.9103E+01
 EBVSHRINKSD(%)  5.4772E+00  7.1358E+01  9.9457E+01  2.1019E+01  9.0524E+01
 EBVSHRINKVR(%)  1.0654E+01  9.1796E+01  9.9997E+01  3.7621E+01  9.9102E+01
 RELATIVEINF(%)  8.2363E+01  1.3597E-01  1.4003E-04  2.0538E+00  2.3463E-02
 EPSSHRINKSD(%)  2.0619E+01
 EPSSHRINKVR(%)  3.6987E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1350.0738343619698     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -614.92300779823165     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.62
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1350.074       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  5.88E-01  7.74E-01  1.27E+00  6.77E-01  8.38E-01  8.52E-01  1.00E-02  9.00E-01  1.16E-01  3.59E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.658
Stop Time:
Sat Oct  2 00:39:59 CDT 2021
