Fri Oct  1 12:46:47 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat18.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2021.87392518781        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2459E+02 -7.6386E+01 -7.7432E+01  2.8990E+01  1.5123E+02  4.7588E+01 -3.6691E+01  7.7242E-01 -1.7780E+01 -3.4088E+01
            -1.0267E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2038.45858357066        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0085E+00  1.0363E+00  1.0857E+00  9.6251E-01  9.5001E-01  8.6951E-01  1.2220E+00  9.7829E-01  1.0914E+00  1.0508E+00
             1.1598E+00
 PARAMETER:  1.0842E-01  1.3568E-01  1.8223E-01  6.1786E-02  4.8716E-02 -3.9829E-02  3.0053E-01  7.8050E-02  1.8748E-01  1.4959E-01
             2.4824E-01
 GRADIENT:   3.6638E+02 -1.9519E+01  3.2167E+00 -2.3652E+01 -8.7653E+00 -2.0656E+01 -1.2097E+00  1.9402E-01  1.6451E+01 -3.3495E+00
             3.1294E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2043.46284240403        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      265
 NPARAMETR:  1.0228E+00  1.1143E+00  1.2414E+00  1.0462E+00  1.0256E+00  9.6680E-01  1.4098E+00  1.1605E+00  9.7108E-01  1.3065E+00
             1.1793E+00
 PARAMETER:  1.2250E-01  2.0825E-01  3.1625E-01  1.4521E-01  1.2526E-01  6.6238E-02  4.4345E-01  2.4888E-01  7.0650E-02  3.6739E-01
             2.6495E-01
 GRADIENT:   5.3352E+01  3.6058E+01 -1.1936E+01  6.4511E+01 -1.6543E+01 -2.1737E+00 -1.1101E+00  2.8521E-02  5.1428E+00  2.1982E+01
             4.4388E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2051.00146567676        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  9.9288E-01  9.0953E-01  2.0722E+00  1.1456E+00  1.1816E+00  9.6858E-01  1.7285E+00  1.9551E+00  7.9534E-01  1.3108E+00
             1.1129E+00
 PARAMETER:  9.2857E-02  5.1767E-03  8.2862E-01  2.3594E-01  2.6684E-01  6.8076E-02  6.4726E-01  7.7044E-01 -1.2899E-01  3.7067E-01
             2.0697E-01
 GRADIENT:  -1.2098E+01  5.1878E+00 -4.9521E+00  6.4373E+00  7.7336E+00 -5.9206E-01  3.2635E+00  2.8783E-01  6.1928E-01 -2.1742E+00
             7.8042E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2051.87705405966        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      620
 NPARAMETR:  9.9888E-01  6.7793E-01  3.2163E+00  1.3038E+00  1.2382E+00  9.7051E-01  2.0829E+00  2.5884E+00  7.3276E-01  1.3718E+00
             1.1110E+00
 PARAMETER:  9.8878E-02 -2.8871E-01  1.2682E+00  3.6525E-01  3.1369E-01  7.0069E-02  8.3377E-01  1.0510E+00 -2.1093E-01  4.1609E-01
             2.0524E-01
 GRADIENT:   3.0285E+00  1.7448E+00  9.1288E-01  3.5201E-02 -1.4243E+00  2.9494E-01 -1.4619E-01 -9.3118E-02 -4.6704E-01 -2.9994E-01
            -4.5085E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2051.88117891477        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      795
 NPARAMETR:  9.9793E-01  6.3693E-01  3.4114E+00  1.3338E+00  1.2416E+00  9.6884E-01  2.1672E+00  2.6665E+00  7.3141E-01  1.3742E+00
             1.1119E+00
 PARAMETER:  9.7929E-02 -3.5110E-01  1.3271E+00  3.8807E-01  3.1640E-01  6.8341E-02  8.7345E-01  1.0808E+00 -2.1277E-01  4.1790E-01
             2.0605E-01
 GRADIENT:   1.0053E+00  2.5632E+00  1.4308E+00  1.8746E+00 -2.6379E+00 -3.4965E-01  1.6680E-01 -1.0953E-01 -1.8835E-01 -2.5704E-01
             1.7542E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2051.88577422390        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      970
 NPARAMETR:  9.9665E-01  5.7532E-01  3.5939E+00  1.3768E+00  1.2399E+00  9.6731E-01  2.3016E+00  2.7139E+00  7.3087E-01  1.3735E+00
             1.1131E+00
 PARAMETER:  9.6643E-02 -4.5282E-01  1.3792E+00  4.1979E-01  3.1500E-01  6.6766E-02  9.3359E-01  1.0984E+00 -2.1353E-01  4.1739E-01
             2.0713E-01
 GRADIENT:  -1.3687E+00  2.9302E+00  1.8229E+00  3.2663E+00 -3.4657E+00 -8.7195E-01  3.9225E-01 -2.6761E-01  4.3778E-02 -1.8299E-01
             9.7457E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2051.88803788236        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1145
 NPARAMETR:  9.9541E-01  5.0660E-01  3.7228E+00  1.4240E+00  1.2345E+00  9.6612E-01  2.4718E+00  2.7313E+00  7.3160E-01  1.3708E+00
             1.1139E+00
 PARAMETER:  9.5400E-02 -5.8004E-01  1.4145E+00  4.5344E-01  3.1065E-01  6.5529E-02  1.0049E+00  1.1048E+00 -2.1252E-01  4.1539E-01
             2.0790E-01
 GRADIENT:  -3.3080E+00  3.0017E+00  1.7986E+00  4.7213E+00 -3.5653E+00 -1.2259E+00  5.5419E-01 -3.3622E-01  2.6139E-01 -7.0928E-02
             1.4903E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2051.89041067523        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1320
 NPARAMETR:  9.9452E-01  4.3823E-01  3.7855E+00  1.4696E+00  1.2264E+00  9.6558E-01  2.6693E+00  2.7231E+00  7.3277E-01  1.3662E+00
             1.1142E+00
 PARAMETER:  9.4501E-02 -7.2502E-01  1.4312E+00  4.8499E-01  3.0406E-01  6.4979E-02  1.0818E+00  1.1018E+00 -2.1092E-01  4.1206E-01
             2.0817E-01
 GRADIENT:  -4.1762E+00  2.6279E+00  1.4182E+00  5.2069E+00 -2.9464E+00 -1.2833E+00  6.0099E-01 -3.4269E-01  4.0436E-01  2.9390E-02
             1.5864E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2051.93933647252        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1502
 NPARAMETR:  9.9621E-01  4.1528E-01  3.7519E+00  1.4790E+00  1.2262E+00  9.6853E-01  2.7316E+00  2.7205E+00  7.3022E-01  1.3653E+00
             1.1123E+00
 PARAMETER:  9.6201E-02 -7.7880E-01  1.4222E+00  4.9136E-01  3.0389E-01  6.8022E-02  1.1049E+00  1.1008E+00 -2.1442E-01  4.1141E-01
             2.0640E-01
 GRADIENT:   4.9472E-01  3.1234E-01  6.8841E-02 -3.0663E+00  4.7297E-01 -6.5877E-03  3.7017E-02  6.2575E-01  1.1657E-01 -1.5071E-01
             2.2748E-01

0ITERATION NO.:   46    OBJECTIVE VALUE:  -2051.93933647252        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1524
 NPARAMETR:  9.9621E-01  4.1528E-01  3.7519E+00  1.4790E+00  1.2262E+00  9.6853E-01  2.7316E+00  2.7205E+00  7.3022E-01  1.3653E+00
             1.1123E+00
 PARAMETER:  9.6201E-02 -7.7880E-01  1.4222E+00  4.9136E-01  3.0389E-01  6.8022E-02  1.1049E+00  1.1008E+00 -2.1442E-01  4.1141E-01
             2.0640E-01
 GRADIENT:   4.9472E-01  3.1234E-01  6.8841E-02 -3.0663E+00  4.7297E-01 -6.5877E-03  3.7017E-02  6.2575E-01  1.1657E-01 -1.5071E-01
             2.2748E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1524
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.6739E-04  2.7052E-02 -4.7884E-02 -3.2958E-02 -4.5604E-02
 SE:             2.9820E-02  1.9306E-02  1.6380E-02  2.2171E-02  2.1768E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7679E-01  1.6114E-01  3.4642E-03  1.3713E-01  3.6168E-02

 ETASHRINKSD(%)  9.8854E-02  3.5324E+01  4.5123E+01  2.5726E+01  2.7075E+01
 ETASHRINKVR(%)  1.9761E-01  5.8170E+01  6.9885E+01  4.4833E+01  4.6819E+01
 EBVSHRINKSD(%)  4.9046E-01  4.0063E+01  5.3653E+01  2.1474E+01  2.0714E+01
 EBVSHRINKVR(%)  9.7851E-01  6.4076E+01  7.8520E+01  3.8336E+01  3.7137E+01
 RELATIVEINF(%)  9.8723E+01  4.8659E+00  9.6903E+00  8.1498E+00  3.0563E+01
 EPSSHRINKSD(%)  3.3936E+01
 EPSSHRINKVR(%)  5.6356E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2051.9393364725242     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1133.0008032678516     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2051.939       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.96E-01  4.15E-01  3.75E+00  1.48E+00  1.23E+00  9.69E-01  2.73E+00  2.72E+00  7.30E-01  1.37E+00  1.11E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.746
Stop Time:
Fri Oct  1 12:47:13 CDT 2021
