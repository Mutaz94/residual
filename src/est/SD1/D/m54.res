Fri Oct  1 06:52:01 CDT 2021
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
$DATA ../../../../data/SD1/D/dat54.csv ignore=@
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m54.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   37349.0842158520        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.8489E+02  6.8966E+02 -2.1178E+01  6.3601E+02  1.2575E+02 -2.4820E+03 -1.2365E+03 -5.0176E+01 -1.8724E+03 -6.8831E+02
            -7.5234E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -790.428187053270        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2901E+00  2.1562E+00  8.6542E-01  2.3553E+00  9.0319E-01  4.2376E+00  4.0364E+00  9.6740E-01  2.4420E+00  1.3040E+00
             1.3151E+01
 PARAMETER:  3.5475E-01  8.6833E-01 -4.4535E-02  9.5668E-01 -1.8271E-03  1.5440E+00  1.4953E+00  6.6862E-02  9.9281E-01  3.6547E-01
             2.6765E+00
 GRADIENT:  -4.2546E+00  6.4744E+01 -4.3071E+01  1.7839E+02 -2.6691E+01  2.0909E+02  2.1496E+01  4.8300E+00 -7.8749E+00  2.8679E+01
             3.1816E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -890.886276054670        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.1271E+00  2.2232E+00  2.4083E+01  2.5634E+00  2.2335E+00  4.1143E+00  9.1588E+00  4.8381E-01  2.0617E+00  9.0047E-01
             1.3003E+01
 PARAMETER:  2.1961E-01  8.9897E-01  3.2815E+00  1.0413E+00  9.0358E-01  1.5145E+00  2.3147E+00 -6.2606E-01  8.2352E-01 -4.8410E-03
             2.6652E+00
 GRADIENT:  -2.2878E+01  4.4761E+01 -2.0453E+00  1.3295E+02 -1.1713E+01  2.5397E+02  6.3546E+01  3.7877E-02  1.9928E+00  1.4966E+01
             3.8390E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -996.177913694544        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  1.2246E+00  1.2724E+00  1.5767E+01  1.0620E+00  2.3366E+00  1.8079E+00  3.6148E+00  2.2550E-01  1.0784E+00  6.9927E-01
             1.2053E+01
 PARAMETER:  3.0264E-01  3.4094E-01  2.8579E+00  1.6014E-01  9.4870E-01  6.9216E-01  1.3850E+00 -1.3894E+00  1.7551E-01 -2.5772E-01
             2.5893E+00
 GRADIENT:  -1.9755E+01 -3.9876E+01 -5.9493E-01 -2.6270E+01  1.3133E+01 -1.4992E+01 -4.5756E+01  4.5127E-03  1.2431E+01  1.0221E+01
             3.7708E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1043.37807943035        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  1.1461E+00  1.5473E+00  9.9358E+00  8.9426E-01  2.2035E+00  1.8410E+00  3.8169E+00  7.4454E-01  1.0931E+00  3.3244E-01
             9.5375E+00
 PARAMETER:  2.3638E-01  5.3653E-01  2.3961E+00 -1.1763E-02  8.9006E-01  7.1031E-01  1.4394E+00 -1.9499E-01  1.8900E-01 -1.0013E+00
             2.3552E+00
 GRADIENT:   1.4915E-01  2.4194E+00  2.3451E-01 -1.1392E+01 -8.0947E+00 -1.3445E+01  2.1231E+01  9.2510E-02  1.2204E+01  2.7586E+00
             9.2608E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1043.85171559185        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.1325E+00  1.5966E+00  9.1600E+00  8.5791E-01  2.2348E+00  1.8611E+00  3.6207E+00  8.0391E-01  8.9387E-01  2.0303E-01
             9.5537E+00
 PARAMETER:  2.2441E-01  5.6789E-01  2.3148E+00 -5.3250E-02  9.0416E-01  7.2117E-01  1.3867E+00 -1.1827E-01 -1.2194E-02 -1.4944E+00
             2.3569E+00
 GRADIENT:   8.4491E-01  5.0794E-01 -5.1568E-02 -7.4045E+00 -3.9414E+00  7.9698E+00  3.1076E+00  1.2146E-01  8.6005E+00  1.0627E+00
             4.8376E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1058.29304248215        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      494
 NPARAMETR:  1.1629E+00  1.5027E+00  1.1112E+01  9.5760E-01  2.3257E+00  1.9245E+00  4.6043E+00  2.6574E-01  3.1246E-02  1.0000E-02
             1.0013E+01
 PARAMETER:  2.5092E-01  5.0726E-01  2.5081E+00  5.6670E-02  9.4404E-01  7.5469E-01  1.6270E+00 -1.2252E+00 -3.3659E+00 -7.8158E+00
             2.4039E+00
 GRADIENT:  -2.0260E+01  2.9685E+00 -5.1639E-01 -5.2937E+00  7.4520E+00 -1.5444E+01 -4.0649E+00  1.4286E-02  8.9198E-03  0.0000E+00
             5.1982E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1059.83109844052        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      671
 NPARAMETR:  1.1902E+00  1.3125E+00  1.1903E+01  9.8632E-01  2.2706E+00  1.9476E+00  4.9093E+00  1.6169E-01  1.5380E-02  1.0000E-02
             9.7925E+00
 PARAMETER:  2.7412E-01  3.7196E-01  2.5768E+00  8.6226E-02  9.2003E-01  7.6658E-01  1.6911E+00 -1.7221E+00 -4.0747E+00 -9.0417E+00
             2.3816E+00
 GRADIENT:  -6.2375E+00 -1.2926E+00  5.7210E-01 -3.6712E+00 -3.6069E+00 -1.3272E+01  1.7225E+00  4.7668E-03 -8.6871E-04  0.0000E+00
             8.9102E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1077.78591098669        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      808
 NPARAMETR:  1.2209E+00  1.3600E+00  7.3466E+00  9.9749E-01  2.3041E+00  2.2350E+00  4.9060E+00  2.1800E-02  1.4331E-02  1.0000E-02
             9.6801E+00
 PARAMETER:  2.9955E-01  4.0751E-01  2.0942E+00  9.7483E-02  9.3470E-01  9.0423E-01  1.6905E+00 -3.7258E+00 -4.1453E+00 -9.1167E+00
             2.3701E+00
 GRADIENT:  -9.7885E+00  2.7770E+00 -4.6649E+00  1.3937E+01  3.3589E+01 -3.0627E+00 -6.1094E+00  2.8012E-04 -5.0153E-04  0.0000E+00
             1.7219E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1079.14564604419        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:      982
 NPARAMETR:  1.2427E+00  1.3050E+00  8.9434E+00  9.9069E-01  2.2315E+00  2.2342E+00  5.0626E+00  2.1412E-02  1.4428E-02  1.0000E-02
             9.6180E+00
 PARAMETER:  3.1737E-01  3.6864E-01  2.2849E+00  9.0758E-02  9.0241E-01  9.0370E-01  1.7214E+00 -3.7067E+00 -4.1439E+00 -9.1167E+00
             2.3641E+00
 GRADIENT:   4.0839E+02  1.4837E+00 -4.5299E-01  7.7051E-01 -1.3489E+02 -7.8957E+02 -6.8762E+01  1.8613E-04 -1.1199E-03  0.0000E+00
             2.9850E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      982
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4782E-02  9.0217E-03 -1.3089E-05 -1.4427E-03  1.0167E-05
 SE:             2.9748E-02  2.6178E-02  2.7985E-05  3.1401E-04  1.0867E-04
 N:                     100         100         100         100         100

 P VAL.:         6.1925E-01  7.3037E-01  6.4000E-01  4.3434E-06  9.2546E-01

 ETASHRINKSD(%)  3.3918E-01  1.2301E+01  9.9906E+01  9.8948E+01  9.9636E+01
 ETASHRINKVR(%)  6.7722E-01  2.3088E+01  1.0000E+02  9.9989E+01  9.9999E+01
 EBVSHRINKSD(%)  3.9174E+00  6.0049E+00  9.9869E+01  9.9316E+01  9.9526E+01
 EBVSHRINKVR(%)  7.6813E+00  1.1649E+01  1.0000E+02  9.9995E+01  9.9998E+01
 RELATIVEINF(%)  9.2048E+01  5.1517E+01  3.8928E-05  2.8005E-03  5.0567E-04
 EPSSHRINKSD(%)  4.8344E+00
 EPSSHRINKVR(%)  9.4351E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1079.1456460441887     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       574.94371372422211     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1079.146       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.24E+00  1.31E+00  8.89E+00  9.91E-01  2.23E+00  2.23E+00  5.06E+00  2.22E-02  1.44E-02  1.00E-02  9.62E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.530
Stop Time:
Fri Oct  1 06:52:29 CDT 2021