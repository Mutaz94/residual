Fri Oct  1 10:21:20 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat9.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m9.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   113.635071416176        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4879E+02  9.8885E+01  2.3007E+02 -5.7399E+00  2.3950E+02  1.1752E+01 -1.2210E+02 -2.0711E+02 -9.7705E+01 -2.2716E+02
            -3.6024E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1457.02741814465        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.4424E-01  9.8288E-01  1.0196E+00  1.0854E+00  1.0604E+00  8.3897E-01  9.7122E-01  9.2938E-01  1.0168E+00  8.0989E-01
             3.4784E+00
 PARAMETER:  4.2622E-02  8.2729E-02  1.1941E-01  1.8197E-01  1.5863E-01 -7.5582E-02  7.0800E-02  2.6768E-02  1.1668E-01 -1.1085E-01
             1.3466E+00
 GRADIENT:   3.8804E+01 -3.5184E+01 -3.2339E+01 -2.3430E+01  3.6886E+01 -2.9686E+01  5.3988E+00  7.6949E+00  3.6745E+00  1.3364E+01
            -4.3457E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1468.06604905500        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.3253E-01  7.5463E-01  8.2719E-01  1.2399E+00  7.5170E-01  9.6339E-01  5.8425E-01  4.2677E-01  1.0737E+00  4.3525E-01
             3.6048E+00
 PARAMETER:  3.0147E-02 -1.8152E-01 -8.9722E-02  3.1504E-01 -1.8542E-01  6.2702E-02 -4.3742E-01 -7.5152E-01  1.7115E-01 -7.3183E-01
             1.3823E+00
 GRADIENT:  -2.2733E+00  2.3380E+01  1.6342E+01  3.7295E+01 -3.0170E+01  1.6514E+01  6.4892E-01  2.6181E+00  1.1177E+01  4.0961E+00
             4.6167E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1477.42747463073        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  9.2357E-01  6.2483E-01  2.5528E-01  1.2227E+00  3.3140E-01  1.0107E+00  8.4641E-01  5.8291E-02  1.1311E+00  2.6428E-01
             3.2565E+00
 PARAMETER:  2.0495E-02 -3.7027E-01 -1.2654E+00  3.0106E-01 -1.0044E+00  1.1067E-01 -6.6749E-02 -2.7423E+00  2.2316E-01 -1.2307E+00
             1.2806E+00
 GRADIENT:  -5.3933E+01  1.1690E+02  3.1032E+01  1.3524E+02 -1.0219E+02  1.6384E+01 -1.5897E+01 -1.0739E-01 -5.0556E+01 -7.0887E+00
             2.2224E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1525.31944991100        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      455
 NPARAMETR:  9.5467E-01  3.5137E-01  1.7344E-01  1.1473E+00  2.2531E-01  9.3635E-01  3.7535E-01  1.0000E-02  1.5980E+00  6.4450E-01
             2.8401E+00
 PARAMETER:  5.3606E-02 -9.4590E-01 -1.6519E+00  2.3743E-01 -1.3903E+00  3.4233E-02 -8.7990E-01 -5.4114E+00  5.6872E-01 -3.3928E-01
             1.1438E+00
 GRADIENT:   4.5245E+01  3.5131E+00 -1.4020E+01  4.9471E+01  3.9494E+01 -1.0476E+01  9.6524E-01  0.0000E+00  1.6900E+01  8.7584E-01
             3.3814E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1531.85624379874        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      630
 NPARAMETR:  9.3569E-01  2.9950E-01  1.4675E-01  1.0245E+00  1.9616E-01  9.5597E-01  3.1703E-01  1.0000E-02  1.5716E+00  6.7656E-01
             2.6920E+00
 PARAMETER:  3.3527E-02 -1.1056E+00 -1.8190E+00  1.2424E-01 -1.5288E+00  5.4966E-02 -1.0488E+00 -5.5957E+00  5.5212E-01 -2.9074E-01
             1.0903E+00
 GRADIENT:   1.9648E+00 -1.7922E+00 -1.4635E+00  1.5543E-01  3.0469E+00 -1.1687E+00  9.1499E-01  0.0000E+00  1.4067E+00  1.8558E-01
            -1.0436E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1532.30283124695        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      807
 NPARAMETR:  9.3534E-01  3.0264E-01  1.4641E-01  1.0231E+00  1.9618E-01  9.5784E-01  7.0559E-02  1.0000E-02  1.5684E+00  6.7875E-01
             2.6952E+00
 PARAMETER:  3.3152E-02 -1.0952E+00 -1.8214E+00  1.2287E-01 -1.5287E+00  5.6925E-02 -2.5513E+00 -4.5338E+00  5.5006E-01 -2.8750E-01
             1.0915E+00
 GRADIENT:   8.3335E-01  5.8997E-01  8.2502E-01 -6.6653E-02 -1.9413E+00 -5.7089E-01  4.5987E-02 -1.8258E-04  1.9300E-01 -5.4632E-02
             9.0683E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1533.95126324558        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      987
 NPARAMETR:  9.3478E-01  2.9959E-01  1.4425E-01  1.0232E+00  1.9440E-01  9.6053E-01  1.0000E-02  8.2835E-01  1.5830E+00  5.8505E-01
             2.6295E+00
 PARAMETER:  3.2557E-02 -1.1054E+00 -1.8362E+00  1.2291E-01 -1.5379E+00  5.9733E-02 -8.4568E+00 -8.8321E-02  5.5932E-01 -4.3605E-01
             1.0668E+00
 GRADIENT:   1.4406E+00 -1.1306E+00  2.8366E+00  2.6776E-01 -2.0588E+00  6.3272E-01  0.0000E+00  1.5677E+00  5.1116E-02  3.2275E+00
            -6.2428E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1534.02439209142        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1161
 NPARAMETR:  9.3429E-01  3.0234E-01  1.4447E-01  1.0238E+00  1.9523E-01  9.5924E-01  1.0000E-02  7.9426E-01  1.5848E+00  5.7373E-01
             2.6375E+00
 PARAMETER:  3.2032E-02 -1.0962E+00 -1.8347E+00  1.2347E-01 -1.5336E+00  5.8389E-02 -8.3405E+00 -1.3034E-01  5.6049E-01 -4.5560E-01
             1.0698E+00
 GRADIENT:   1.2735E-01  6.1624E-02 -4.6094E-02 -4.3838E-02 -4.5843E-02 -6.5613E-03  0.0000E+00 -4.7551E-02  1.2273E-01 -5.4020E-02
            -1.4811E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1534.02440848270        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1218
 NPARAMETR:  9.3426E-01  3.0231E-01  1.4447E-01  1.0238E+00  1.9523E-01  9.5925E-01  1.0000E-02  7.9530E-01  1.5844E+00  5.7393E-01
             2.6378E+00
 PARAMETER:  3.1996E-02 -1.0963E+00 -1.8347E+00  1.2351E-01 -1.5336E+00  5.8401E-02 -8.3405E+00 -1.2904E-01  5.6019E-01 -4.5525E-01
             1.0699E+00
 GRADIENT:   2.2350E-02  2.3843E-02 -6.7499E-02 -2.0900E-02  3.7230E-02  3.1109E-03  0.0000E+00  1.8921E-03  5.5789E-02  3.2271E-02
             1.1859E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1218
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2057E-03 -1.3278E-04  1.8901E-02 -7.3459E-03  1.4940E-02
 SE:             2.8984E-02  1.1634E-04  1.5328E-02  2.6877E-02  2.1061E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3934E-01  2.5375E-01  2.1755E-01  7.8461E-01  4.7811E-01

 ETASHRINKSD(%)  2.9015E+00  9.9610E+01  4.8649E+01  9.9603E+00  2.9442E+01
 ETASHRINKVR(%)  5.7187E+00  9.9998E+01  7.3630E+01  1.8928E+01  5.0216E+01
 EBVSHRINKSD(%)  2.6741E+00  9.9569E+01  4.8619E+01  7.3791E+00  3.0064E+01
 EBVSHRINKVR(%)  5.2767E+00  9.9998E+01  7.3599E+01  1.4214E+01  5.1090E+01
 RELATIVEINF(%)  9.4584E+01  3.7369E-04  2.4889E+00  4.5099E+01  2.4443E+00
 EPSSHRINKSD(%)  2.8130E+01
 EPSSHRINKVR(%)  4.8347E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1534.0244084827032     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -615.08587527803047     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.55
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1534.024       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.34E-01  3.02E-01  1.44E-01  1.02E+00  1.95E-01  9.59E-01  1.00E-02  7.95E-01  1.58E+00  5.74E-01  2.64E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.596
Stop Time:
Fri Oct  1 10:21:40 CDT 2021