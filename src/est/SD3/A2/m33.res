Fri Oct  1 17:45:02 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat33.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m33.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1422.41463076854        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0842E+02  3.9162E+01  1.3016E+02 -2.3823E+01  8.1090E+01  4.5598E+01  9.6254E-02 -1.9381E+02 -4.1095E+01 -3.3612E+01
            -1.7132E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1933.92775630428        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0239E+00  1.0058E+00  9.0875E-01  1.0661E+00  9.1982E-01  8.6125E-01  9.7419E-01  9.8148E-01  9.4090E-01  1.0135E+00
             2.6852E+00
 PARAMETER:  1.2363E-01  1.0582E-01  4.3097E-03  1.6402E-01  1.6425E-02 -4.9375E-02  7.3853E-02  8.1302E-02  3.9077E-02  1.1340E-01
             1.0878E+00
 GRADIENT:   2.6072E+02  2.4024E+01  6.0547E+00  2.6312E+01 -1.9875E+01 -2.0855E+01  7.1449E-01  8.4300E+00  4.0061E+00  7.3466E+00
             2.1223E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1951.08377002894        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0003E+00  7.1971E-01  5.1593E-01  1.2185E+00  5.7597E-01  8.7842E-01  1.0169E+00  3.5045E-01  9.2942E-01  7.4643E-01
             2.4474E+00
 PARAMETER:  1.0035E-01 -2.2890E-01 -5.6179E-01  2.9766E-01 -4.5170E-01 -2.9633E-02  1.1681E-01 -9.4853E-01  2.6802E-02 -1.9245E-01
             9.9504E-01
 GRADIENT:   1.8752E+02  5.3853E+01 -2.0838E+01  1.3622E+02  2.8907E+01 -1.0902E+01 -8.9290E+00  2.4782E+00  1.7595E+00 -9.0487E+00
             1.3567E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1965.17337517991        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      316
 NPARAMETR:  9.6937E-01  9.0619E-01  8.8037E-01  1.0567E+00  8.9064E-01  8.8846E-01  1.0529E+00  1.2761E-01  9.9201E-01  1.0967E+00
             2.2850E+00
 PARAMETER:  6.8887E-02  1.4919E-03 -2.7417E-02  1.5519E-01 -1.5810E-02 -1.8270E-02  1.5158E-01 -1.9588E+00  9.1977E-02  1.9232E-01
             9.2638E-01
 GRADIENT:   5.9019E+01 -3.6543E+01  7.7461E+00 -6.0465E+01  6.9710E+00 -3.0315E+00  3.4063E+00  1.3796E-01  9.4256E+00  7.9433E+00
             6.4012E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1970.67968140496        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      494
 NPARAMETR:  9.4999E-01  7.2047E-01  6.3752E-01  1.1663E+00  6.5257E-01  9.0058E-01  1.0866E+00  9.9095E-02  9.2315E-01  9.1080E-01
             2.1567E+00
 PARAMETER:  4.8693E-02 -2.2785E-01 -3.5017E-01  2.5381E-01 -3.2684E-01 -4.7126E-03  1.8307E-01 -2.2117E+00  2.0041E-02  6.5658E-03
             8.6858E-01
 GRADIENT:   3.2210E+00 -6.3044E+00  1.0676E+00 -1.0705E+01 -9.1902E-01  8.1382E-01  4.3196E-01  1.7152E-01  2.0661E-01  9.3598E-01
             4.3747E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1970.90501848894        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  9.4839E-01  7.8423E-01  6.7932E-01  1.1457E+00  7.0684E-01  8.9881E-01  1.0588E+00  5.5213E-02  9.3252E-01  9.4009E-01
             2.1516E+00
 PARAMETER:  4.7012E-02 -1.4305E-01 -2.8666E-01  2.3604E-01 -2.4695E-01 -6.6803E-03  1.5711E-01 -2.7966E+00  3.0130E-02  3.8220E-02
             8.6623E-01
 GRADIENT:  -1.0119E+00  3.8060E-01 -2.2330E-01  5.2394E-01  2.7382E-01  6.7764E-02  4.1102E-03  4.6253E-02  1.1754E-02 -1.0336E-01
            -6.5566E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1970.92831515639        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      846
 NPARAMETR:  9.4886E-01  7.7923E-01  6.7633E-01  1.1477E+00  7.0263E-01  8.9947E-01  1.0601E+00  1.1995E-02  9.3184E-01  9.3897E-01
             2.1518E+00
 PARAMETER:  4.7503E-02 -1.4945E-01 -2.9107E-01  2.3775E-01 -2.5293E-01 -5.9452E-03  1.5835E-01 -4.3233E+00  2.9405E-02  3.7030E-02
             8.6632E-01
 GRADIENT:   2.7801E-01  1.0233E-02 -1.3757E-02 -2.7524E-03  2.3333E-02  3.4283E-01  4.2584E-02  2.2325E-03  3.2955E-02  3.6016E-02
            -3.6293E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1970.92879667045        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      903
 NPARAMETR:  9.4874E-01  7.7892E-01  6.7636E-01  1.1478E+00  7.0245E-01  8.9891E-01  1.0601E+00  1.0000E-02  9.3169E-01  9.3902E-01
             2.1522E+00
 PARAMETER:  4.7383E-02 -1.4984E-01 -2.9103E-01  2.3788E-01 -2.5318E-01 -6.5709E-03  1.5834E-01 -4.5403E+00  2.9250E-02  3.7085E-02
             8.6651E-01
 GRADIENT:  -5.7709E-02 -3.7399E-03  5.1202E-02 -2.5523E-02 -4.8445E-02  1.1517E-01  3.7110E-02  1.9188E-04  1.6201E-02  4.8208E-02
            -1.2471E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      903
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0219E-03 -7.7018E-03 -1.9977E-04 -2.7208E-03 -9.2906E-03
 SE:             2.9368E-02  1.8052E-02  1.5047E-04  2.6256E-02  2.3999E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7224E-01  6.6964E-01  1.8427E-01  9.1747E-01  6.9866E-01

 ETASHRINKSD(%)  1.6138E+00  3.9523E+01  9.9496E+01  1.2038E+01  1.9601E+01
 ETASHRINKVR(%)  3.2015E+00  6.3425E+01  9.9997E+01  2.2627E+01  3.5359E+01
 EBVSHRINKSD(%)  1.7096E+00  3.9300E+01  9.9450E+01  1.2159E+01  1.9968E+01
 EBVSHRINKVR(%)  3.3900E+00  6.3155E+01  9.9997E+01  2.2840E+01  3.5949E+01
 RELATIVEINF(%)  9.6526E+01  4.5214E+00  5.5349E-04  2.4294E+01  4.2504E+00
 EPSSHRINKSD(%)  2.5382E+01
 EPSSHRINKVR(%)  4.4321E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1970.9287966704505     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -868.20255682484344     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.73
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1970.929       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.49E-01  7.79E-01  6.76E-01  1.15E+00  7.02E-01  8.99E-01  1.06E+00  1.00E-02  9.32E-01  9.39E-01  2.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.785
Stop Time:
Fri Oct  1 17:45:18 CDT 2021