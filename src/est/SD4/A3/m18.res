Sat Oct  2 00:56:15 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat18.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m18.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -343.438719169511        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5902E+02  5.3836E+01  8.7113E+01 -4.4605E+01  1.9001E+02  3.9703E+01 -6.9834E+01 -2.3531E+01 -1.5221E+02 -1.8453E+02
            -2.1595E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1251.13752151050        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0185E+00  9.3317E-01  9.1635E-01  1.1719E+00  8.8746E-01  8.2781E-01  1.0233E+00  9.5689E-01  1.2568E+00  1.0259E+00
             3.9470E+00
 PARAMETER:  1.1833E-01  3.0832E-02  1.2647E-02  2.5861E-01 -1.9389E-02 -8.8977E-02  1.2301E-01  5.5938E-02  3.2860E-01  1.2555E-01
             1.4729E+00
 GRADIENT:   3.8624E+01  2.0209E+00 -1.5808E+01  2.8038E+01  6.4856E+00 -2.8185E+01  9.0463E+00  6.7853E+00  1.7353E+01  1.9759E+01
             7.7214E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1259.50688157508        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0051E+00  6.4997E-01  3.9671E-01  1.2503E+00  4.1896E-01  8.3724E-01  7.3274E-01  3.2807E-01  1.3121E+00  4.0414E-01
             3.8755E+00
 PARAMETER:  1.0505E-01 -3.3083E-01 -8.2455E-01  3.2338E-01 -7.6998E-01 -7.7643E-02 -2.1096E-01 -1.0145E+00  3.7162E-01 -8.0599E-01
             1.4547E+00
 GRADIENT:  -1.9734E+01  7.3461E+01  5.9508E+01  7.3520E+01 -9.7801E+01 -3.3761E+01 -1.4248E+00  7.5730E-01  2.0437E+01  1.7579E+00
             8.1291E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1279.05726414169        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  9.9152E-01  5.1280E-01  3.3943E-01  1.2641E+00  3.6073E-01  1.0201E+00  1.5888E+00  1.0000E-02  1.1017E+00  4.3933E-01
             3.0606E+00
 PARAMETER:  9.1484E-02 -5.6786E-01 -9.8049E-01  3.3434E-01 -9.1964E-01  1.1987E-01  5.6299E-01 -4.8720E+00  1.9683E-01 -7.2251E-01
             1.2186E+00
 GRADIENT:  -3.4513E+01  3.2062E+01  2.2840E+01  6.2082E+01 -3.1421E+01  2.1869E+01 -7.6297E+00  0.0000E+00 -1.3873E+01 -1.5891E+00
            -6.6890E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1287.34948698544        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      474
 NPARAMETR:  1.0020E+00  4.3334E-01  2.1266E-01  1.1239E+00  2.6910E-01  9.5211E-01  1.6262E+00  1.0000E-02  1.2456E+00  3.4703E-01
             2.8618E+00
 PARAMETER:  1.0196E-01 -7.3623E-01 -1.4480E+00  2.1682E-01 -1.2127E+00  5.0924E-02  5.8627E-01 -9.0503E+00  3.1964E-01 -9.5834E-01
             1.1514E+00
 GRADIENT:   1.3651E+00  9.5837E+00  2.3126E+00  1.3398E+01 -1.9665E+01 -7.7982E+00 -1.1353E+00  0.0000E+00 -5.9385E+00 -1.7983E+00
            -8.3854E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1289.01663485542        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      650
 NPARAMETR:  1.0041E+00  2.8328E-01  2.6078E-01  1.2216E+00  2.7097E-01  9.4838E-01  2.3050E+00  1.0000E-02  1.1764E+00  5.2083E-01
             2.9227E+00
 PARAMETER:  1.0409E-01 -1.1613E+00 -1.2441E+00  3.0016E-01 -1.2057E+00  4.7003E-02  9.3509E-01 -1.3236E+01  2.6247E-01 -5.5233E-01
             1.1725E+00
 GRADIENT:  -9.9900E-01  3.4006E+00 -1.2345E+00  6.1614E+00 -5.0112E+00 -3.5158E+00  3.5310E-01  0.0000E+00 -8.2343E-01  5.6054E-01
            -1.6813E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1289.57350928689        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      825
 NPARAMETR:  1.0019E+00  2.1856E-01  2.8608E-01  1.2644E+00  2.7984E-01  9.5003E-01  2.8799E+00  1.0000E-02  1.1310E+00  5.4529E-01
             2.9650E+00
 PARAMETER:  1.0189E-01 -1.4207E+00 -1.1515E+00  3.3460E-01 -1.1736E+00  4.8738E-02  1.1577E+00 -1.6629E+01  2.2311E-01 -5.0644E-01
             1.1869E+00
 GRADIENT:   1.7949E-01  5.3684E-01 -2.0905E-01  2.0359E-02  5.1871E-01  6.3522E-01  6.8106E-01  0.0000E+00  4.4831E-01 -4.8845E-01
            -5.0567E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1289.57788224630        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  1.0018E+00  2.1636E-01  2.8632E-01  1.2654E+00  2.7960E-01  9.4909E-01  2.8940E+00  1.0000E-02  1.1290E+00  5.5137E-01
             2.9653E+00
 PARAMETER:  1.0184E-01 -1.4308E+00 -1.1506E+00  3.3539E-01 -1.1744E+00  4.7745E-02  1.1626E+00 -1.6777E+01  2.2132E-01 -4.9536E-01
             1.1870E+00
 GRADIENT:   2.0470E-02  1.4508E-01  2.9945E-01  3.1669E-01 -3.4009E-01  2.9573E-01  2.1102E-01  0.0000E+00  8.3700E-02  4.8641E-02
             7.5927E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      882
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9971E-03  4.9353E-02 -2.7429E-04 -2.3532E-02  2.1545E-02
 SE:             2.8730E-02  1.6968E-02  2.0346E-04  2.6269E-02  1.5814E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4458E-01  3.6301E-03  1.7762E-01  3.7035E-01  1.7308E-01

 ETASHRINKSD(%)  3.7524E+00  4.3157E+01  9.9318E+01  1.1997E+01  4.7021E+01
 ETASHRINKVR(%)  7.3641E+00  6.7688E+01  9.9995E+01  2.2555E+01  7.1932E+01
 EBVSHRINKSD(%)  3.6101E+00  5.2831E+01  9.9254E+01  1.0847E+01  4.1463E+01
 EBVSHRINKVR(%)  7.0898E+00  7.7751E+01  9.9994E+01  2.0518E+01  6.5735E+01
 RELATIVEINF(%)  9.2044E+01  8.9487E+00  2.3672E-04  3.1003E+01  1.3268E+00
 EPSSHRINKSD(%)  3.3135E+01
 EPSSHRINKVR(%)  5.5290E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1289.5778822462964     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -554.42705568255826     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.42
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1289.578       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.16E-01  2.86E-01  1.27E+00  2.80E-01  9.49E-01  2.89E+00  1.00E-02  1.13E+00  5.51E-01  2.97E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.451
Stop Time:
Sat Oct  2 00:56:28 CDT 2021
