Fri Oct  1 10:33:54 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat44.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m44.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -733.024098747832        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.6911E+02  7.8878E+01  1.6973E+02  4.4217E+01  1.4866E+02  1.0145E+01 -2.9198E+01 -1.9343E+02 -6.2282E+01 -9.6040E+01
            -2.1848E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1489.80751478399        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0057E+00  1.0029E+00  8.9142E-01  1.0870E+00  9.3102E-01  8.6963E-01  9.0348E-01  9.9677E-01  8.0817E-01  9.0180E-01
             4.5039E+00
 PARAMETER:  1.0567E-01  1.0294E-01 -1.4941E-02  1.8340E-01  2.8527E-02 -3.9683E-02 -1.5042E-03  9.6768E-02 -1.1298E-01 -3.3657E-03
             1.6049E+00
 GRADIENT:   1.2504E+02  1.1514E+01 -1.7160E+01  4.1453E+01 -4.6600E+00 -2.2583E+01  7.2258E+00  7.4297E+00  1.1213E+01  2.0159E+01
             3.2300E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1521.28051668297        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.7964E-01  6.8602E-01  2.8578E-01  1.2090E+00  3.8701E-01  9.5549E-01  8.6050E-01  2.9407E-01  9.2757E-01  2.1726E-01
             3.9019E+00
 PARAMETER:  7.9433E-02 -2.7685E-01 -1.1525E+00  2.8979E-01 -8.4931E-01  5.4465E-02 -5.0244E-02 -1.1239E+00  2.4808E-02 -1.4267E+00
             1.4615E+00
 GRADIENT:   5.1256E+01  8.0924E+01 -2.7579E+00  2.0042E+02 -5.7943E+01 -8.5959E+00 -2.7381E+00  2.7350E-01 -4.4824E+00 -1.2644E-01
             2.4230E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1584.98682073362        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      253
 NPARAMETR:  9.1084E-01  6.9215E-01  2.7656E-01  1.0614E+00  3.8874E-01  9.7836E-01  1.1478E+00  1.8988E-01  8.5197E-01  3.0873E-01
             2.7413E+00
 PARAMETER:  6.6128E-03 -2.6796E-01 -1.1853E+00  1.5954E-01 -8.4486E-01  7.8125E-02  2.3788E-01 -1.5614E+00 -6.0202E-02 -1.0753E+00
             1.1084E+00
 GRADIENT:  -7.5929E+01  3.8308E+01  3.5729E+00  2.2409E+01 -5.6153E+01 -7.9379E+00 -5.8141E+00 -7.6874E-01 -1.6202E+01 -3.7368E+00
             2.4983E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1591.13915594006        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      430
 NPARAMETR:  9.3784E-01  5.9745E-01  3.0892E-01  1.1039E+00  3.8565E-01  9.8324E-01  1.1855E+00  1.7064E-01  9.0967E-01  5.5436E-01
             2.5750E+00
 PARAMETER:  3.5820E-02 -4.1509E-01 -1.0747E+00  1.9883E-01 -8.5282E-01  8.3101E-02  2.7020E-01 -1.6682E+00  5.3243E-03 -4.8993E-01
             1.0459E+00
 GRADIENT:  -2.6768E+00  9.4601E+00  5.9866E+00  2.9053E-02 -1.1956E+01 -2.7676E+00  1.7537E+00 -2.0243E-01 -4.7349E-01  5.5661E-01
            -7.6190E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1596.38412781641        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      611
 NPARAMETR:  9.4064E-01  4.1962E-01  2.0306E-01  1.0679E+00  2.7233E-01  1.0124E+00  7.6142E-01  1.3418E+00  1.0391E+00  5.6270E-01
             2.4644E+00
 PARAMETER:  3.8805E-02 -7.6841E-01 -1.4943E+00  1.6566E-01 -1.2008E+00  1.1230E-01 -1.7257E-01  3.9399E-01  1.3835E-01 -4.7501E-01
             1.0019E+00
 GRADIENT:   2.6603E+00 -2.6994E+01 -9.6067E+00 -1.9580E+01  4.7744E+01  3.2921E+00  4.8523E+00  8.4604E+00 -9.7376E+00  1.3567E+01
             7.7980E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1604.06680596641        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      791
 NPARAMETR:  9.3746E-01  3.6287E-01  1.5903E-01  9.9547E-01  2.2477E-01  1.0072E+00  3.0568E-01  1.2514E+00  1.2118E+00  5.5113E-01
             2.2806E+00
 PARAMETER:  3.5414E-02 -9.1371E-01 -1.7387E+00  9.5464E-02 -1.3927E+00  1.0719E-01 -1.0852E+00  3.2428E-01  2.9210E-01 -4.9579E-01
             9.2446E-01
 GRADIENT:   2.8606E+00 -3.8554E+00  1.1720E+01 -3.6949E+01 -8.2288E+00  4.5568E-01  5.6529E-01  3.3438E+00  1.0884E+00  2.1600E+00
             2.6849E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1605.71152802069        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      966
 NPARAMETR:  9.3446E-01  4.2129E-01  1.8966E-01  1.0666E+00  2.6099E-01  1.0054E+00  3.2141E-01  1.3862E+00  1.1847E+00  4.3231E-01
             2.2002E+00
 PARAMETER:  3.2216E-02 -7.6443E-01 -1.5625E+00  1.6446E-01 -1.2433E+00  1.0541E-01 -1.0350E+00  4.2655E-01  2.6952E-01 -7.3861E-01
             8.8855E-01
 GRADIENT:  -1.0176E+00  7.3218E-01  9.2922E-01  3.7478E+00 -3.5193E-01 -7.9685E-01 -1.3597E-01  4.5387E-01  8.2006E-02  7.6334E-01
            -1.9066E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1605.76857579875        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1104
 NPARAMETR:  9.3487E-01  4.1437E-01  1.8576E-01  1.0602E+00  2.5674E-01  1.0079E+00  4.2277E-01  1.3723E+00  1.1889E+00  4.2984E-01
             2.2040E+00
 PARAMETER:  3.2653E-02 -7.8099E-01 -1.5833E+00  1.5850E-01 -1.2597E+00  1.0786E-01 -7.6094E-01  4.1649E-01  2.7303E-01 -7.4434E-01
             8.9026E-01
 GRADIENT:   5.9280E+01  1.3456E+01  4.0434E+01  2.0199E+01  1.3449E+02  5.7935E+00  3.0153E-01  2.9168E+00  6.2289E+00  2.0300E+00
             1.0894E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1605.78348273206        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  9.3476E-01  4.1477E-01  1.8579E-01  1.0605E+00  2.5682E-01  1.0080E+00  4.4192E-01  1.3747E+00  1.1892E+00  4.1468E-01
             2.1982E+00
 PARAMETER:  3.2534E-02 -7.8003E-01 -1.5831E+00  1.5873E-01 -1.2594E+00  1.0796E-01 -7.1663E-01  4.1823E-01  2.7328E-01 -7.8025E-01
             8.8763E-01
 GRADIENT:  -3.1122E-01 -1.6835E-01 -4.8324E-01 -1.8614E-01 -1.4168E+00 -4.8105E-02 -2.0689E-02 -2.9228E-01 -2.6291E-01 -7.7542E-04
             2.7700E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1605.78516660899        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1400
 NPARAMETR:  9.3485E-01  4.1495E-01  1.8593E-01  1.0607E+00  2.5693E-01  1.0081E+00  4.5074E-01  1.3779E+00  1.1907E+00  4.1210E-01
             2.1971E+00
 PARAMETER:  3.2628E-02 -7.7961E-01 -1.5824E+00  1.5889E-01 -1.2589E+00  1.0808E-01 -6.9687E-01  4.2058E-01  2.7456E-01 -7.8648E-01
             8.8712E-01
 GRADIENT:  -5.0573E-02 -1.2962E-01 -3.5336E-01 -1.7844E-01 -1.7800E+00 -7.5232E-03 -6.4822E-03 -5.0739E-02  1.2770E-02  2.9520E-02
            -3.1570E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1400
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3405E-03 -1.0209E-02  8.0006E-03 -1.8742E-03  1.1409E-02
 SE:             2.9375E-02  7.7036E-03  2.3871E-02  2.7571E-02  1.4412E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6360E-01  1.8509E-01  7.3751E-01  9.4580E-01  4.2857E-01

 ETASHRINKSD(%)  1.5905E+00  7.4192E+01  2.0029E+01  7.6352E+00  5.1717E+01
 ETASHRINKVR(%)  3.1558E+00  9.3339E+01  3.6046E+01  1.4687E+01  7.6688E+01
 EBVSHRINKSD(%)  1.6074E+00  7.4030E+01  2.0891E+01  7.2766E+00  5.1783E+01
 EBVSHRINKVR(%)  3.1890E+00  9.3256E+01  3.7418E+01  1.4024E+01  7.6751E+01
 RELATIVEINF(%)  9.6761E+01  1.3024E+00  1.3627E+01  6.9275E+01  2.0022E+00
 EPSSHRINKSD(%)  3.1697E+01
 EPSSHRINKVR(%)  5.3348E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1605.7851666089871     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -686.84663340431439     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.97
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1605.785       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.35E-01  4.15E-01  1.86E-01  1.06E+00  2.57E-01  1.01E+00  4.51E-01  1.38E+00  1.19E+00  4.12E-01  2.20E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.015
Stop Time:
Fri Oct  1 10:34:15 CDT 2021