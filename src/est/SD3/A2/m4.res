Fri Oct  1 17:37:03 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat4.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1422.89922068106        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5465E+02  4.7570E+01  1.1996E+02  4.3620E+01  1.9105E+02  1.8178E+01 -1.1353E+01 -2.7560E+02 -2.5894E+01 -8.8454E+01
            -1.5991E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1960.93344923413        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0377E+00  8.4397E-01  7.4459E-01  1.1216E+00  7.2859E-01  1.0336E+00  7.6387E-01  1.0892E+00  9.7323E-01  9.9627E-01
             2.3097E+00
 PARAMETER:  1.3705E-01 -6.9642E-02 -1.9493E-01  2.1475E-01 -2.1664E-01  1.3304E-01 -1.6936E-01  1.8545E-01  7.2862E-02  9.6259E-02
             9.3712E-01
 GRADIENT:   2.0886E+02  1.0467E+01  1.3358E+00  3.5001E+01  5.8094E+00  9.6396E+00  3.6407E+00  8.0217E+00  1.2522E+00  9.7919E+00
             8.0217E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1961.41822246162        NO. OF FUNC. EVALS.: 104
 CUMULATIVE NO. OF FUNC. EVALS.:      189
 NPARAMETR:  1.0365E+00  8.3130E-01  6.6001E-01  1.1198E+00  6.7688E-01  1.0368E+00  7.3360E-01  1.0062E+00  1.0008E+00  9.3735E-01
             2.2951E+00
 PARAMETER:  1.3582E-01 -8.4768E-02 -3.1549E-01  2.1319E-01 -2.9026E-01  1.3615E-01 -2.0979E-01  1.0617E-01  1.0078E-01  3.5303E-02
             9.3080E-01
 GRADIENT:   1.0537E+02  1.7604E+01 -1.4070E+00  3.8894E+00 -1.9658E+01  1.6052E+00  1.0745E+00  6.5396E+00  5.8785E+00  2.3197E+00
             6.3891E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1967.27565532444        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      366
 NPARAMETR:  1.0089E+00  8.1042E-01  6.4677E-01  1.1282E+00  6.6784E-01  1.0366E+00  6.0506E-01  5.5688E-01  9.9798E-01  1.0665E+00
             2.1936E+00
 PARAMETER:  1.0883E-01 -1.1020E-01 -3.3576E-01  2.2066E-01 -3.0370E-01  1.3591E-01 -4.0242E-01 -4.8541E-01  9.7979E-02  1.6438E-01
             8.8554E-01
 GRADIENT:   5.3780E+01  1.2885E+01 -1.4516E-01  1.0431E+01 -1.1853E+01  5.2827E+00 -4.3253E-02  1.6832E+00  1.3150E+00  4.8138E+00
             1.2063E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1968.70667899905        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      541
 NPARAMETR:  9.8112E-01  7.8110E-01  6.3168E-01  1.1342E+00  6.5230E-01  1.0166E+00  6.7869E-01  2.5224E-01  9.8102E-01  1.0539E+00
             2.1722E+00
 PARAMETER:  8.0943E-02 -1.4705E-01 -3.5937E-01  2.2592E-01 -3.2726E-01  1.1648E-01 -2.8758E-01 -1.2774E+00  8.0836E-02  1.5254E-01
             8.7574E-01
 GRADIENT:  -1.5810E+00  1.1080E-01  3.3754E-01  3.1890E-01 -5.4597E-01 -5.2262E-01  2.7297E-01  1.3128E-01  4.4978E-01  5.5111E-01
             2.3161E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1968.75750121007        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      718
 NPARAMETR:  9.8189E-01  7.7768E-01  6.2464E-01  1.1343E+00  6.4774E-01  1.0188E+00  6.4449E-01  1.0525E-01  9.8006E-01  1.0634E+00
             2.1746E+00
 PARAMETER:  8.1723E-02 -1.5144E-01 -3.7059E-01  2.2598E-01 -3.3426E-01  1.1865E-01 -3.3929E-01 -2.1514E+00  7.9857E-02  1.6148E-01
             8.7686E-01
 GRADIENT:  -5.4320E-02 -5.1203E-02 -1.9085E-01 -3.6927E-01  2.1066E-01  3.4626E-01 -9.9682E-02  1.8680E-02 -2.0758E-01 -1.2015E-02
             3.4021E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1968.76683416284        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      893
 NPARAMETR:  9.8189E-01  7.7582E-01  6.2317E-01  1.1352E+00  6.4606E-01  1.0179E+00  6.5267E-01  1.3261E-02  9.7928E-01  1.0625E+00
             2.1742E+00
 PARAMETER:  8.1721E-02 -1.5384E-01 -3.7293E-01  2.2684E-01 -3.3687E-01  1.1775E-01 -3.2668E-01 -4.2229E+00  7.9065E-02  1.6062E-01
             8.7668E-01
 GRADIENT:  -4.8509E-02  3.3394E-02  1.5992E-02 -2.9936E-02 -4.1362E-02  5.7476E-03 -2.9759E-03  3.0628E-04 -7.3177E-02  2.1474E-02
             1.2699E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1968.76691062223        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      985
 NPARAMETR:  9.8193E-01  7.7574E-01  6.2311E-01  1.1353E+00  6.4602E-01  1.0179E+00  6.5266E-01  1.0000E-02  9.7961E-01  1.0624E+00
             2.1742E+00
 PARAMETER:  8.1762E-02 -1.5393E-01 -3.7303E-01  2.2688E-01 -3.3693E-01  1.1770E-01 -3.2669E-01 -5.0215E+00  7.9403E-02  1.6052E-01
             8.7665E-01
 GRADIENT:   4.1272E-02 -1.5445E-02 -1.1123E-02  1.0045E-02  1.5437E-02 -1.5074E-02 -1.3229E-03  0.0000E+00  2.4328E-02  1.2777E-03
            -1.8163E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      985
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1139E-03 -1.6056E-02 -1.4713E-04 -1.0812E-03 -9.4046E-03
 SE:             2.9498E-02  1.2321E-02  1.6670E-04  2.7126E-02  2.6476E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6988E-01  1.9253E-01  3.7746E-01  9.6820E-01  7.2243E-01

 ETASHRINKSD(%)  1.1779E+00  5.8724E+01  9.9442E+01  9.1254E+00  1.1302E+01
 ETASHRINKVR(%)  2.3420E+00  8.2963E+01  9.9997E+01  1.7418E+01  2.1327E+01
 EBVSHRINKSD(%)  1.3655E+00  5.9287E+01  9.9464E+01  8.8866E+00  1.1252E+01
 EBVSHRINKVR(%)  2.7124E+00  8.3425E+01  9.9997E+01  1.6983E+01  2.1239E+01
 RELATIVEINF(%)  9.7216E+01  2.4418E+00  7.4288E-04  3.3907E+01  7.5466E+00
 EPSSHRINKSD(%)  2.5423E+01
 EPSSHRINKVR(%)  4.4382E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1968.7669106222272     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -866.04067077662012     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1968.767       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  7.76E-01  6.23E-01  1.14E+00  6.46E-01  1.02E+00  6.53E-01  1.00E-02  9.80E-01  1.06E+00  2.17E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.354
Stop Time:
Fri Oct  1 17:37:24 CDT 2021