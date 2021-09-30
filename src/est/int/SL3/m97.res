Wed Sep 29 04:58:07 CDT 2021
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
$DATA ../../../../data/int/SL3/dat97.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
 NO. OF DATA RECS IN DATA SET:      975
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      875
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m97.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -859.003888787124        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.6823E+02  4.3851E+01  1.2977E+02  1.1991E+02  2.0038E+02  2.9658E+01 -1.2836E+02 -2.0712E+02 -4.6838E+01 -1.4082E+01
            -5.2904E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2701.56728457634        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.3411E-01  1.2344E+00  1.0148E+00  9.3256E-01  1.0302E+00  9.9900E-01  1.1682E+00  9.3308E-01  8.2990E-01  8.3930E-01
             2.7384E+00
 PARAMETER:  3.1844E-02  3.1056E-01  1.1471E-01  3.0179E-02  1.2976E-01  9.9004E-02  2.5549E-01  3.0733E-02 -8.6449E-02 -7.5189E-02
             1.1074E+00
 GRADIENT:   2.8971E+01  7.4709E+01  1.1982E+00  1.3196E+01 -4.2951E+01  1.9585E+00  1.0425E+01  8.5779E+00 -9.3336E-01 -1.6639E+00
             1.5687E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2704.08522245227        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.3221E-01  1.0209E+00  8.5275E-01  1.0517E+00  8.7420E-01  1.0214E+00  1.3030E+00  4.2368E-01  8.4383E-01  6.2549E-01
             2.7383E+00
 PARAMETER:  2.9808E-02  1.2067E-01 -5.9286E-02  1.5043E-01 -3.4448E-02  1.2120E-01  3.6466E-01 -7.5879E-01 -6.9807E-02 -3.6922E-01
             1.1073E+00
 GRADIENT:   2.4864E+01  3.0446E+01 -2.0861E+01  5.8811E+01  2.7383E+01  1.1198E+01  7.6111E+00  2.8721E+00  2.5887E+00 -1.5745E-01
             1.5141E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2709.36240259438        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.1548E-01  9.4737E-01  8.3432E-01  1.0552E+00  8.2473E-01  9.9619E-01  1.2982E+00  2.3396E-01  8.5136E-01  6.3566E-01
             2.5567E+00
 PARAMETER:  1.1694E-02  4.5938E-02 -8.1135E-02  1.5376E-01 -9.2698E-02  9.6184E-02  3.6096E-01 -1.3526E+00 -6.0921E-02 -3.5310E-01
             1.0387E+00
 GRADIENT:  -1.2625E+00  1.1156E+01 -1.0381E+00  9.5399E+00 -1.8459E+00  6.3304E-02 -1.0725E+00  8.6675E-01  1.7534E+00  2.1560E+00
             1.2640E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2711.19625849678        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      388
 NPARAMETR:  9.4597E-01  8.4264E-01  7.5543E-01  1.1108E+00  7.4118E-01  1.0185E+00  1.4610E+00  1.4581E-01  8.4247E-01  4.9869E-01
             2.5552E+00
 PARAMETER:  4.4452E-02 -7.1215E-02 -1.8047E-01  2.0510E-01 -1.9951E-01  1.1830E-01  4.7909E-01 -1.8255E+00 -7.1419E-02 -5.9577E-01
             1.0381E+00
 GRADIENT:   8.4389E+00 -5.7825E-01 -7.9686E+00  1.0692E+01  1.3771E+01 -8.8451E-02  1.0499E+00  3.3112E-01  1.7536E+00  9.3526E-01
            -1.2036E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2711.67977604341        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      564            RESET HESSIAN, TYPE II
 NPARAMETR:  9.4225E-01  7.7174E-01  6.8851E-01  1.1337E+00  6.7473E-01  1.0184E+00  1.5364E+00  4.0844E-02  8.2800E-01  3.8179E-01
             2.5722E+00
 PARAMETER:  4.0517E-02 -1.5910E-01 -2.7323E-01  2.2553E-01 -2.9344E-01  1.1819E-01  5.2945E-01 -3.0980E+00 -8.8739E-02 -8.6290E-01
             1.0448E+00
 GRADIENT:   5.9825E+01  1.2784E+01  5.6332E+00  3.9930E+01  2.5267E+01  1.0902E+01  8.9184E+00  3.2891E-02  9.7599E-01  9.9074E-01
             1.7212E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2711.68286337178        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      658
 NPARAMETR:  9.4148E-01  7.7201E-01  6.8800E-01  1.1336E+00  6.7468E-01  1.0173E+00  1.5369E+00  2.0326E-02  8.2868E-01  3.7405E-01
             2.5702E+00
 PARAMETER:  3.9700E-02 -1.5876E-01 -2.7396E-01  2.2543E-01 -2.9352E-01  1.1715E-01  5.2976E-01 -3.7959E+00 -8.7919E-02 -8.8337E-01
             1.0440E+00
 GRADIENT:  -1.3658E+00  7.1233E-01  1.0781E+00  1.3923E+00 -1.1090E+00 -4.1771E-01 -7.9011E-01  5.9434E-03 -2.1578E-01 -3.4387E-01
            -3.4726E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2711.69174717599        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      833
 NPARAMETR:  9.4193E-01  7.7051E-01  6.8643E-01  1.1336E+00  6.7339E-01  1.0180E+00  1.5390E+00  1.0110E-02  8.2872E-01  3.7920E-01
             2.5729E+00
 PARAMETER:  4.0173E-02 -1.6071E-01 -2.7625E-01  2.2536E-01 -2.9543E-01  1.1787E-01  5.3111E-01 -4.4943E+00 -8.7875E-02 -8.6969E-01
             1.0450E+00
 GRADIENT:  -4.3817E-01  1.4070E-01  1.7422E-01 -1.6170E-01 -7.6182E-01 -1.1193E-01 -2.0889E-01  1.2922E-03 -1.4141E-02 -6.2728E-03
            -4.9088E-01

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2711.69203142036        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      925
 NPARAMETR:  9.4205E-01  7.7014E-01  6.8639E-01  1.1336E+00  6.7339E-01  1.0183E+00  1.5407E+00  1.0000E-02  8.2871E-01  3.7831E-01
             2.5735E+00
 PARAMETER:  4.0305E-02 -1.6118E-01 -2.7630E-01  2.2541E-01 -2.9544E-01  1.1809E-01  5.3223E-01 -4.5147E+00 -8.7891E-02 -8.7203E-01
             1.0453E+00
 GRADIENT:  -1.7708E-01 -1.4133E-01 -9.3708E-02 -1.1583E-01 -1.0335E-01 -2.7466E-02  1.2214E-02  8.1137E-04 -3.6205E-03 -1.4589E-03
             2.6239E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      925
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0750E-03  5.6922E-03 -2.6606E-04 -7.8286E-03  3.9429E-03
 SE:             2.9389E-02  2.6236E-02  1.9842E-04  2.5912E-02  1.3018E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4371E-01  8.2824E-01  1.7996E-01  7.6256E-01  7.6199E-01

 ETASHRINKSD(%)  1.5419E+00  1.2107E+01  9.9335E+01  1.3193E+01  5.6387E+01
 ETASHRINKVR(%)  3.0600E+00  2.2747E+01  9.9996E+01  2.4645E+01  8.0979E+01
 EBVSHRINKSD(%)  1.6453E+00  1.1008E+01  9.9303E+01  1.3172E+01  5.7850E+01
 EBVSHRINKVR(%)  3.2635E+00  2.0805E+01  9.9995E+01  2.4609E+01  8.2234E+01
 RELATIVEINF(%)  9.6703E+01  1.7819E+01  7.7402E-04  3.5792E+01  1.3015E+00
 EPSSHRINKSD(%)  1.5922E+01
 EPSSHRINKVR(%)  2.9310E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          875
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1608.1424331081771     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2711.6920314203576     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1103.5495983121805     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.87
 Elapsed covariance  time in seconds:    11.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2711.692       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.42E-01  7.70E-01  6.86E-01  1.13E+00  6.73E-01  1.02E+00  1.54E+00  1.00E-02  8.29E-01  3.78E-01  2.57E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         2.91E-02  1.83E-01  2.09E-01  7.21E-02  1.79E-01  8.07E-02  2.85E-01  3.19E-04  7.53E-02  3.53E-01  2.23E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        8.49E-04
 
 TH 2
+       -8.69E-04  3.36E-02
 
 TH 3
+       -8.31E-04  3.48E-02  4.39E-02
 
 TH 4
+        1.44E-04 -1.16E-02 -1.11E-02  5.20E-03
 
 TH 5
+       -8.36E-04  3.15E-02  3.67E-02 -1.07E-02  3.21E-02
 
 TH 6
+        4.07E-04 -1.31E-03 -3.67E-04  1.97E-04 -1.00E-03  6.51E-03
 
 TH 7
+        1.32E-03 -4.71E-02 -5.12E-02  1.66E-02 -4.61E-02  1.39E-03  8.12E-02
 
 TH 8
+        1.72E-07  2.41E-05  3.17E-05 -8.86E-06  2.48E-05  8.85E-06 -4.43E-05  1.02E-07
 
 TH 9
+        2.02E-05  6.05E-03  5.64E-03 -2.52E-03  5.30E-03 -2.07E-04 -8.35E-03  3.82E-06  5.67E-03
 
 TH10
+       -1.01E-03  5.31E-02  6.69E-02 -1.72E-02  5.49E-02  1.67E-04 -7.91E-02  6.00E-05  8.82E-03  1.25E-01
 
 TH11
+        7.35E-04 -2.06E-03 -1.21E-02  5.22E-04 -7.54E-03 -2.23E-03  1.00E-02 -3.17E-05 -2.26E-04 -2.68E-02  4.95E-02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.91E-02
 
 TH 2
+       -1.63E-01  1.83E-01
 
 TH 3
+       -1.36E-01  9.05E-01  2.09E-01
 
 TH 4
+        6.87E-02 -8.74E-01 -7.34E-01  7.21E-02
 
 TH 5
+       -1.60E-01  9.59E-01  9.78E-01 -8.25E-01  1.79E-01
 
 TH 6
+        1.73E-01 -8.87E-02 -2.17E-02  3.39E-02 -6.94E-02  8.07E-02
 
 TH 7
+        1.59E-01 -9.02E-01 -8.57E-01  8.07E-01 -9.02E-01  6.03E-02  2.85E-01
 
 TH 8
+        1.85E-02  4.12E-01  4.74E-01 -3.85E-01  4.34E-01  3.44E-01 -4.88E-01  3.19E-04
 
 TH 9
+        9.20E-03  4.39E-01  3.58E-01 -4.64E-01  3.93E-01 -3.40E-02 -3.89E-01  1.59E-01  7.53E-02
 
 TH10
+       -9.82E-02  8.21E-01  9.04E-01 -6.77E-01  8.68E-01  5.87E-03 -7.86E-01  5.33E-01  3.32E-01  3.53E-01
 
 TH11
+        1.13E-01 -5.05E-02 -2.59E-01  3.25E-02 -1.89E-01 -1.24E-01  1.58E-01 -4.46E-01 -1.35E-02 -3.41E-01  2.23E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.35E+03
 
 TH 2
+        1.21E+02  8.61E+02
 
 TH 3
+       -1.62E+02  5.59E+02  2.06E+03
 
 TH 4
+        2.38E+02  8.22E+01 -9.48E+02  1.34E+03
 
 TH 5
+        1.90E+02 -1.27E+03 -2.95E+03  1.33E+03  4.88E+03
 
 TH 6
+       -4.49E+01  5.88E+00 -1.06E+02  7.53E+01  1.32E+02  2.00E+02
 
 TH 7
+       -1.08E+01  1.80E+01 -9.45E+01  1.31E+01  1.92E+02 -6.67E+00  8.45E+01
 
 TH 8
+       -1.13E+04 -3.14E+04 -5.56E+04  2.94E+04  1.06E+05 -2.20E+04  1.29E+04  2.23E+07
 
 TH 9
+       -3.75E+01 -7.74E+01 -7.89E+01  1.10E+02  1.54E+02  3.57E+00  4.49E+00  6.17E+03  2.34E+02
 
 TH10
+       -1.22E+01 -8.18E+01 -2.10E+02  6.52E+01  2.48E+02  1.11E+01  7.57E+00 -8.75E+01  7.66E+00  6.31E+01
 
 TH11
+       -4.20E+01 -9.22E+01 -4.76E+01  1.20E+01  1.23E+02 -3.24E+00  2.00E+00  1.18E+04  8.78E+00  1.56E+01  3.94E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       32.983
Stop Time:
Wed Sep 29 04:58:41 CDT 2021
