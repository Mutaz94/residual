Sat Oct  2 01:55:07 CDT 2021
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
$DATA ../../../../data/SD4/S1/dat92.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m92.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1669.59745602567        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2999E+02 -5.0234E+01 -3.9938E+01 -8.2673E+00  2.2463E+01  5.5995E+01 -2.2962E+01  1.1532E+01 -5.1796E+00  1.7006E+01
             1.9559E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1678.99685698711        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.9424E-01  1.1734E+00  1.2332E+00  9.4638E-01  1.1515E+00  9.1156E-01  1.2415E+00  9.2218E-01  1.0799E+00  8.9136E-01
             9.1842E-01
 PARAMETER:  9.4228E-02  2.5990E-01  3.0958E-01  4.4888E-02  2.4108E-01  7.3987E-03  3.1636E-01  1.8982E-02  1.7684E-01 -1.5005E-02
             1.4901E-02
 GRADIENT:   1.3585E+01 -3.2604E-01  2.2592E+01 -1.0181E+01  1.1553E+01 -2.0114E+01 -6.7098E-01 -7.3544E+00  4.7827E+00 -2.0401E+01
            -2.7448E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1679.78711346270        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.8652E-01  1.1870E+00  1.2106E+00  9.4647E-01  1.1679E+00  9.1899E-01  1.2951E+00  8.3852E-01  1.0501E+00  9.7100E-01
             9.1319E-01
 PARAMETER:  8.6428E-02  2.7146E-01  2.9115E-01  4.4985E-02  2.5517E-01  1.5516E-02  3.5859E-01 -7.6115E-02  1.4889E-01  7.0576E-02
             9.1850E-03
 GRADIENT:  -7.1137E+00  6.6172E+00  1.5995E+01 -6.5554E-01  1.9673E+01 -1.6567E+01  5.7010E+00 -6.4489E+00  1.9296E+00 -1.1141E+01
            -2.8133E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1682.81207662113        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  9.9208E-01  1.2131E+00  9.3398E-01  9.2082E-01  1.0458E+00  9.6019E-01  1.2537E+00  6.3017E-01  1.0186E+00  8.9477E-01
             9.6444E-01
 PARAMETER:  9.2052E-02  2.9320E-01  3.1695E-02  1.7504E-02  1.4479E-01  5.9373E-02  3.2614E-01 -3.6177E-01  1.1841E-01 -1.1194E-02
             6.3789E-02
 GRADIENT:   2.1258E+00  4.2677E+00  2.3138E-01  5.5376E+00 -2.1166E+00  8.1767E-01  7.5095E-01  3.3396E-01  4.6968E-01  1.0177E+00
             8.9059E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1683.01618520963        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.9238E-01  1.4198E+00  7.5188E-01  7.8183E-01  1.0617E+00  9.5787E-01  1.1064E+00  3.5811E-01  1.1221E+00  8.6619E-01
             9.6155E-01
 PARAMETER:  9.2349E-02  4.5053E-01 -1.8518E-01 -1.4612E-01  1.5992E-01  5.6959E-02  2.0107E-01 -9.2691E-01  2.1517E-01 -4.3651E-02
             6.0795E-02
 GRADIENT:  -5.7829E-01  4.6845E+00  5.2779E-01  3.5309E+00 -3.1727E+00 -6.9483E-01 -6.7006E-01  1.5868E-01 -5.8271E-01 -7.0288E-01
            -6.1188E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1683.04351163178        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.9281E-01  1.5391E+00  7.0015E-01  7.0701E-01  1.1080E+00  9.5898E-01  1.0398E+00  2.5087E-01  1.2096E+00  8.9745E-01
             9.6195E-01
 PARAMETER:  9.2788E-02  5.3119E-01 -2.5646E-01 -2.4671E-01  2.0259E-01  5.8120E-02  1.3907E-01 -1.2828E+00  2.9029E-01 -8.2024E-03
             6.1204E-02
 GRADIENT:  -2.4417E-01  5.1984E+00 -3.3186E-01  5.2196E+00  2.5622E-01 -3.2457E-01 -3.3409E-01  6.6689E-02 -3.8363E-01 -7.0341E-01
            -3.4513E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1683.09048054445        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1065
 NPARAMETR:  9.9315E-01  1.5408E+00  6.9401E-01  6.9946E-01  1.1105E+00  9.5976E-01  1.0392E+00  1.1622E-01  1.2205E+00  9.0498E-01
             9.6275E-01
 PARAMETER:  9.3122E-02  5.3233E-01 -2.6528E-01 -2.5745E-01  2.0481E-01  5.8928E-02  1.3843E-01 -2.0522E+00  2.9928E-01  1.5350E-04
             6.2041E-02
 GRADIENT:   6.0956E-01 -2.3662E+00  6.2944E-02  4.0345E-01  7.6043E-01  1.1075E-02  1.7871E-01  5.0164E-03  1.4038E-01  2.5036E-01
             1.9121E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1683.09500706262        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1245
 NPARAMETR:  9.9346E-01  1.5613E+00  6.7976E-01  6.8554E-01  1.1145E+00  9.5999E-01  1.0277E+00  1.3947E-02  1.2345E+00  9.0267E-01
             9.6211E-01
 PARAMETER:  9.3440E-02  5.4552E-01 -2.8602E-01 -2.7755E-01  2.0845E-01  5.9164E-02  1.2735E-01 -4.1725E+00  3.1068E-01 -2.3965E-03
             6.1373E-02
 GRADIENT:   1.2228E+00 -2.5285E+00  3.6146E-01 -3.4439E-01  1.1709E-02  7.7353E-02 -8.8790E-02  1.5573E-04 -1.1590E-01 -2.1367E-01
            -1.3555E-01

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1683.09524771896        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:     1376
 NPARAMETR:  9.9347E-01  1.5616E+00  6.7921E-01  6.8565E-01  1.1144E+00  9.6001E-01  1.0281E+00  1.0000E-02  1.2354E+00  9.0412E-01
             9.6231E-01
 PARAMETER:  9.3453E-02  5.4569E-01 -2.8683E-01 -2.7738E-01  2.0833E-01  5.9192E-02  1.2775E-01 -5.5565E+00  3.1141E-01 -7.9469E-04
             6.1584E-02
 GRADIENT:   1.2338E+00 -2.4223E+00  2.8539E-02  8.3269E-02  3.2872E-03  8.5795E-02  7.7138E-02  0.0000E+00  9.8766E-02  7.8298E-02
             4.4539E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1376
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1263E-04 -1.8114E-02 -3.4456E-04  1.5819E-02 -3.0263E-02
 SE:             2.9853E-02  2.4716E-02  1.3024E-04  2.2389E-02  2.1592E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9699E-01  4.6363E-01  8.1539E-03  4.7983E-01  1.6104E-01

 ETASHRINKSD(%)  1.0000E-10  1.7197E+01  9.9564E+01  2.4995E+01  2.7664E+01
 ETASHRINKVR(%)  1.0000E-10  3.1436E+01  9.9998E+01  4.3743E+01  4.7676E+01
 EBVSHRINKSD(%)  4.2535E-01  1.6809E+01  9.9635E+01  2.6572E+01  2.6217E+01
 EBVSHRINKVR(%)  8.4889E-01  3.0792E+01  9.9999E+01  4.6084E+01  4.5560E+01
 RELATIVEINF(%)  9.9022E+01  5.5471E+00  1.7451E-04  4.0091E+00  9.9532E+00
 EPSSHRINKSD(%)  4.4026E+01
 EPSSHRINKVR(%)  6.8669E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1683.0952477189630     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -947.94442115522486     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1683.095       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  1.56E+00  6.79E-01  6.86E-01  1.11E+00  9.60E-01  1.03E+00  1.00E-02  1.24E+00  9.04E-01  9.62E-01
 


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
 #CPUT: Total CPU Time in Seconds,       18.048
Stop Time:
Sat Oct  2 01:55:27 CDT 2021
