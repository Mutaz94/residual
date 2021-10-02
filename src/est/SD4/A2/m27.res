Sat Oct  2 00:28:52 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat27.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m27.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -649.418209783577        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8690E+02  9.4346E+01 -3.5989E+00  1.3948E+02  2.2943E+02  5.0909E+01 -6.2883E+01 -1.4262E+01 -1.0574E+02 -1.1084E+02
            -1.6954E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1307.28669888770        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.5526E-01  9.5219E-01  1.0703E+00  1.1057E+00  1.0800E+00  8.0427E-01  8.8295E-01  9.0058E-01  9.2519E-01  7.5129E-01
             3.3881E+00
 PARAMETER:  5.4233E-02  5.1009E-02  1.6792E-01  2.0052E-01  1.7696E-01 -1.1782E-01 -2.4485E-02 -4.7153E-03  2.2244E-02 -1.8597E-01
             1.3203E+00
 GRADIENT:  -1.4158E+02  6.4647E+00 -5.7007E+01  8.1550E+01  7.8037E+01 -6.0919E+01  2.3222E+00  4.6167E+00 -5.3382E+00  1.1694E+01
            -5.9357E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1320.22768796907        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.4871E-01  5.8639E-01  7.0866E-01  1.3249E+00  6.1746E-01  8.6010E-01  7.9086E-01  2.2339E-01  1.1794E+00  3.2593E-01
             3.2872E+00
 PARAMETER:  4.7344E-02 -4.3377E-01 -2.4438E-01  3.8137E-01 -3.8215E-01 -5.0702E-02 -1.3463E-01 -1.3988E+00  2.6501E-01 -1.0211E+00
             1.2900E+00
 GRADIENT:  -1.2669E+02  3.9850E+01 -1.0152E+01  1.5434E+02  4.9713E-01 -3.1274E+01  7.1838E-01  9.0664E-01  2.4845E+01  1.0927E+00
             1.0007E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1333.87811453072        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  9.8748E-01  6.5518E-01  7.8707E-01  1.1703E+00  6.7724E-01  9.2071E-01  8.3785E-01  1.1572E-01  9.6988E-01  2.9358E-01
             3.3143E+00
 PARAMETER:  8.7403E-02 -3.2284E-01 -1.3943E-01  2.5725E-01 -2.8974E-01  1.7395E-02 -7.6919E-02 -2.0566E+00  6.9417E-02 -1.1256E+00
             1.2983E+00
 GRADIENT:   1.1807E+00  6.1346E+00  1.9333E+00  2.3936E+00 -3.8991E+00  1.9784E+00  5.7954E-01  2.0388E-01  4.7337E-02  1.4114E+00
             2.1091E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1335.45194883820        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      345
 NPARAMETR:  9.9654E-01  5.3965E-01  8.1936E-01  1.2448E+00  6.6176E-01  9.2170E-01  9.4625E-01  9.1844E-02  9.4071E-01  2.0499E-01
             3.3639E+00
 PARAMETER:  9.6535E-02 -5.1683E-01 -9.9227E-02  3.1900E-01 -3.1285E-01  1.8464E-02  4.4750E-02 -2.2877E+00  3.8884E-02 -1.4848E+00
             1.3131E+00
 GRADIENT:  -1.2123E+01 -1.1104E-01  1.7238E+00 -1.6393E+01 -3.7321E+00  2.8970E-01  6.1906E-01  1.3422E-01  2.9541E+00  4.8706E-01
             6.3195E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1336.86024397794        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      521
 NPARAMETR:  9.9840E-01  3.1813E-01  8.1381E-01  1.3794E+00  6.0523E-01  9.1105E-01  1.3234E+00  2.6215E-02  8.4343E-01  6.9441E-02
             3.3553E+00
 PARAMETER:  9.8401E-02 -1.0453E+00 -1.0603E-01  4.2164E-01 -4.0215E-01  6.8396E-03  3.8019E-01 -3.5414E+00 -7.0274E-02 -2.5673E+00
             1.3106E+00
 GRADIENT:  -3.7516E-01  2.3544E+00  2.2786E+00  2.7155E+00 -3.8393E+00 -3.8019E+00 -3.3959E-01  1.1084E-02 -3.2945E+00  5.9180E-04
            -5.8947E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1340.42547710162        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      699
 NPARAMETR:  1.0050E+00  8.6404E-02  3.8667E-01  1.3220E+00  3.2519E-01  9.4113E-01  2.5272E+00  1.0000E-02  9.4712E-01  1.0000E-02
             3.2358E+00
 PARAMETER:  1.0502E-01 -2.3487E+00 -8.5019E-01  3.7918E-01 -1.0233E+00  3.9328E-02  1.0271E+00 -8.1417E+00  4.5675E-02 -6.1750E+00
             1.2743E+00
 GRADIENT:   2.3034E+01  2.7437E+00  2.5630E+01  1.4189E+01 -4.8650E+01  2.8138E+00 -1.3098E+00  0.0000E+00 -1.6018E+01  0.0000E+00
             1.1564E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1343.22834011640        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  9.9019E-01  5.4755E-02  3.6015E-01  1.3014E+00  3.1281E-01  9.2817E-01  5.6518E+00  1.0000E-02  1.0327E+00  1.0000E-02
             3.1422E+00
 PARAMETER:  9.0141E-02 -2.8049E+00 -9.2123E-01  3.6343E-01 -1.0622E+00  2.5464E-02  1.8320E+00 -9.9724E+00  1.3213E-01 -7.5690E+00
             1.2449E+00
 GRADIENT:   1.8403E+00  9.9126E-01 -1.6975E+01 -2.5385E+00  2.3970E+01 -8.3026E-01  9.6573E-01  0.0000E+00  2.0438E-01  0.0000E+00
            -1.8801E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1343.31000675142        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1050
 NPARAMETR:  9.9020E-01  5.4698E-02  3.6318E-01  1.3033E+00  3.1257E-01  9.2912E-01  5.6538E+00  1.0000E-02  1.0287E+00  1.0000E-02
             3.1465E+00
 PARAMETER:  9.0155E-02 -2.8059E+00 -9.1286E-01  3.6489E-01 -1.0629E+00  2.6480E-02  1.8323E+00 -9.9724E+00  1.2833E-01 -7.5690E+00
             1.2463E+00
 GRADIENT:   1.7348E-01  6.6401E-02  7.9299E-02  1.8055E-01 -1.0043E+00 -8.7292E-02 -1.4257E+00  0.0000E+00  2.9239E-02  0.0000E+00
            -8.8554E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1050
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.0730E-04  8.3150E-03  1.2628E-04 -1.3519E-02  9.5754E-05
 SE:             2.8653E-02  7.3561E-03  2.9321E-04  2.6690E-02  4.8145E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8587E-01  2.5833E-01  6.6670E-01  6.1248E-01  8.4235E-01

 ETASHRINKSD(%)  4.0096E+00  7.5356E+01  9.9018E+01  1.0587E+01  9.8387E+01
 ETASHRINKVR(%)  7.8584E+00  9.3927E+01  9.9990E+01  2.0053E+01  9.9974E+01
 EBVSHRINKSD(%)  3.8067E+00  8.0381E+01  9.9067E+01  9.7766E+00  9.8671E+01
 EBVSHRINKVR(%)  7.4684E+00  9.6151E+01  9.9991E+01  1.8597E+01  9.9982E+01
 RELATIVEINF(%)  8.8506E+01  1.2085E+00  3.6531E-04  2.9591E+01  7.0020E-04
 EPSSHRINKSD(%)  2.3785E+01
 EPSSHRINKVR(%)  4.1912E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1343.3100067514222     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -608.15918018768400     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1343.310       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.90E-01  5.47E-02  3.63E-01  1.30E+00  3.13E-01  9.29E-01  5.65E+00  1.00E-02  1.03E+00  1.00E-02  3.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.492
Stop Time:
Sat Oct  2 00:29:09 CDT 2021
