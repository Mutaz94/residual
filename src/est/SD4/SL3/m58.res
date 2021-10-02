Sat Oct  2 03:23:11 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat58.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1557.97080313730        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1588E+02 -2.7386E+00  9.0987E-01  2.6435E+01  2.7109E+01  5.5111E+01 -9.2363E+00 -1.5583E+00  4.8752E+00 -4.0366E+00
            -1.0587E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1571.49048370656        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.3177E-01  1.1476E+00  9.1746E-01  9.4369E-01  1.0028E+00  8.9470E-01  1.3451E+00  9.3208E-01  8.2312E-01  8.5774E-01
             1.2084E+00
 PARAMETER:  2.9331E-02  2.3770E-01  1.3850E-02  4.2041E-02  1.0276E-01 -1.1271E-02  3.9649E-01  2.9660E-02 -9.4649E-02 -5.3454E-02
             2.8927E-01
 GRADIENT:   2.2760E+02  9.4447E+01  1.3580E+01  3.6079E+01  1.4829E+01  1.1292E+01  3.1996E+01 -3.6979E+00 -9.0124E+00 -1.3331E+01
            -1.4042E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1573.79945540832        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      265
 NPARAMETR:  9.4064E-01  1.2262E+00  8.0764E-01  9.0173E-01  9.6589E-01  9.5337E-01  1.1986E+00  8.3820E-01  9.3443E-01  8.6206E-01
             1.2895E+00
 PARAMETER:  3.8802E-02  3.0396E-01 -1.1364E-01 -3.4380E-03  6.5297E-02  5.2250E-02  2.8115E-01 -7.6497E-02  3.2176E-02 -4.8429E-02
             3.5424E-01
 GRADIENT:  -8.5216E+00  4.6934E+01  1.3123E+01  1.5086E+01 -2.0360E+01  3.2573E+00  1.2297E+01  2.0005E-01 -1.3951E+00 -2.7016E+00
             1.5969E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1577.66834623873        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      446
 NPARAMETR:  9.4348E-01  9.1438E-01  7.2797E-01  1.0516E+00  7.9049E-01  9.4987E-01  1.3700E+00  4.1258E-01  8.5492E-01  7.5534E-01
             1.2329E+00
 PARAMETER:  4.1822E-02  1.0487E-02 -2.1750E-01  1.5036E-01 -1.3511E-01  4.8565E-02  4.1479E-01 -7.8532E-01 -5.6743E-02 -1.8058E-01
             3.0939E-01
 GRADIENT:   5.5542E-01  7.2912E+00  9.2083E+00 -6.4750E+00 -1.2087E+01  1.4540E+00 -6.9823E-02 -2.2119E-01  2.8393E+00 -1.7914E+00
            -2.1314E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1578.85059673232        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      622
 NPARAMETR:  9.4128E-01  6.4278E-01  7.5192E-01  1.2149E+00  7.0678E-01  9.4064E-01  1.8041E+00  2.2739E-01  7.5430E-01  7.5790E-01
             1.2504E+00
 PARAMETER:  3.9487E-02 -3.4195E-01 -1.8512E-01  2.9469E-01 -2.4704E-01  3.8806E-02  6.9006E-01 -1.3811E+00 -1.8197E-01 -1.7721E-01
             3.2343E-01
 GRADIENT:  -7.9542E-01  5.6906E+00  2.0755E-02  1.3760E+01 -1.8669E+00 -1.4541E+00 -1.0565E+00 -1.6542E-01  6.3319E-02 -1.8675E+00
             1.6434E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1579.14809622401        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      799
 NPARAMETR:  9.3941E-01  5.0727E-01  8.1427E-01  1.2906E+00  7.0469E-01  9.4217E-01  2.1537E+00  1.7136E-01  7.2305E-01  8.2094E-01
             1.2534E+00
 PARAMETER:  3.7492E-02 -5.7872E-01 -1.0546E-01  3.5514E-01 -2.5000E-01  4.0430E-02  8.6721E-01 -1.6640E+00 -2.2428E-01 -9.7311E-02
             3.2588E-01
 GRADIENT:   5.1243E-01  8.1396E-01  4.8949E-01  2.8226E-01 -5.0456E-01  1.5024E-01  1.1798E-01 -8.8391E-02 -1.3843E-01 -1.2570E-01
            -2.4937E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1579.15392204585        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      980
 NPARAMETR:  9.3919E-01  5.0086E-01  8.1610E-01  1.2938E+00  7.0406E-01  9.4175E-01  2.1709E+00  1.7882E-01  7.2208E-01  8.2125E-01
             1.2538E+00
 PARAMETER:  3.7260E-02 -5.9142E-01 -1.0322E-01  3.5762E-01 -2.5090E-01  3.9988E-02  8.7513E-01 -1.6214E+00 -2.2562E-01 -9.6923E-02
             3.2615E-01
 GRADIENT:   2.2093E-01  3.9565E-01  2.5861E-01 -5.7244E-01 -7.1890E-02  2.2654E-02  3.8210E-02 -9.5670E-02 -4.8762E-02 -1.6199E-01
            -1.3523E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1579.30813763278        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1160
 NPARAMETR:  9.3853E-01  4.8951E-01  8.2257E-01  1.3020E+00  7.0114E-01  9.4132E-01  2.2045E+00  4.2453E-01  7.1699E-01  7.8728E-01
             1.2465E+00
 PARAMETER:  3.6565E-02 -6.1435E-01 -9.5321E-02  3.6387E-01 -2.5505E-01  3.9527E-02  8.9052E-01 -7.5676E-01 -2.3269E-01 -1.3918E-01
             3.2037E-01
 GRADIENT:  -9.1192E-01  6.1547E-01 -8.7024E-01  2.1060E+00 -1.2614E+00 -1.0935E-01 -3.7149E-01 -1.8100E-01  1.5931E-01  2.5824E-01
             1.2067E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1579.35600903360        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1336
 NPARAMETR:  9.3832E-01  4.7873E-01  8.4392E-01  1.3100E+00  7.0730E-01  9.4115E-01  2.2491E+00  5.5399E-01  7.1077E-01  7.6115E-01
             1.2411E+00
 PARAMETER:  3.6337E-02 -6.3662E-01 -6.9695E-02  3.7005E-01 -2.4630E-01  3.9350E-02  9.1052E-01 -4.9062E-01 -2.4140E-01 -1.7292E-01
             3.1599E-01
 GRADIENT:  -3.9582E-01  8.5685E-01  7.3014E-01  1.2085E+00 -2.6582E+00 -5.8216E-02 -1.1300E-01 -8.3201E-02 -2.3890E-01 -9.6129E-01
            -6.1587E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1579.38003221425        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1512
 NPARAMETR:  9.3750E-01  4.5826E-01  8.9228E-01  1.3278E+00  7.2775E-01  9.4044E-01  2.3185E+00  6.1382E-01  7.0649E-01  7.8456E-01
             1.2408E+00
 PARAMETER:  3.5461E-02 -6.8032E-01 -1.3970E-02  3.8352E-01 -2.1780E-01  3.8592E-02  9.4093E-01 -3.8805E-01 -2.4744E-01 -1.4263E-01
             3.1576E-01
 GRADIENT:  -5.2194E-01  9.2898E-01  1.3659E+00  1.7680E+00 -1.8005E+00 -6.9164E-02 -9.7695E-02 -7.0131E-02 -1.7885E-01 -6.3227E-01
            -4.9456E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1579.38307960888        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1691
 NPARAMETR:  9.3787E-01  4.5294E-01  8.9911E-01  1.3290E+00  7.3164E-01  9.4072E-01  2.3391E+00  6.1928E-01  7.0638E-01  7.9591E-01
             1.2421E+00
 PARAMETER:  3.5855E-02 -6.9200E-01 -6.3522E-03  3.8439E-01 -2.1247E-01  3.8894E-02  9.4979E-01 -3.7919E-01 -2.4760E-01 -1.2827E-01
             3.1677E-01
 GRADIENT:   8.5555E-01 -4.6528E-01 -8.4049E-01 -3.8623E+00  1.0319E+00  1.1899E-01  2.9837E-01  2.2354E-01  2.9160E-01  4.1604E-01
             3.8748E-01

0ITERATION NO.:   54    OBJECTIVE VALUE:  -1579.38532818862        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:     1821
 NPARAMETR:  9.3785E-01  4.5379E-01  8.9938E-01  1.3293E+00  7.3141E-01  9.4069E-01  2.3400E+00  6.1152E-01  7.0573E-01  7.9455E-01
             1.2417E+00
 PARAMETER:  3.5835E-02 -6.9012E-01 -6.0545E-03  3.8465E-01 -2.1278E-01  3.8858E-02  9.5016E-01 -3.9181E-01 -2.4852E-01 -1.2998E-01
             3.1649E-01
 GRADIENT:  -1.7217E-02  1.1338E-01  4.3054E-01  5.5523E-01 -3.0834E-01 -3.1088E-03  7.6455E-02 -1.6594E-02 -2.1185E-02 -6.7284E-02
            -1.1849E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1821
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5855E-04  3.0336E-02 -2.2871E-02 -2.9941E-02 -6.5672E-03
 SE:             2.9758E-02  2.0118E-02  1.1965E-02  2.3177E-02  2.0472E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7430E-01  1.3158E-01  5.5942E-02  1.9642E-01  7.4837E-01

 ETASHRINKSD(%)  3.0595E-01  3.2602E+01  5.9916E+01  2.2354E+01  3.1415E+01
 ETASHRINKVR(%)  6.1096E-01  5.4575E+01  8.3933E+01  3.9711E+01  5.2961E+01
 EBVSHRINKSD(%)  7.2408E-01  3.5806E+01  6.1591E+01  1.9810E+01  2.8949E+01
 EBVSHRINKVR(%)  1.4429E+00  5.8791E+01  8.5247E+01  3.5696E+01  4.9518E+01
 RELATIVEINF(%)  9.7803E+01  6.5360E+00  1.4316E+00  1.1723E+01  4.7420E+00
 EPSSHRINKSD(%)  4.2008E+01
 EPSSHRINKVR(%)  6.6369E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1579.3853281886211     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -844.23450162488291     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.64
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1579.385       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.38E-01  4.54E-01  8.99E-01  1.33E+00  7.31E-01  9.41E-01  2.34E+00  6.12E-01  7.06E-01  7.95E-01  1.24E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.671
Stop Time:
Sat Oct  2 03:23:36 CDT 2021
