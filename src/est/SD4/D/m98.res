Sat Oct  2 06:01:07 CDT 2021
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
$DATA ../../../../data/SD4/D/dat98.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m98.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29519.5774947676        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.1617E+03  7.3576E+02 -7.4143E+01  6.9344E+02  3.6319E+01 -2.7343E+03 -1.2420E+03 -1.9375E+01 -1.9915E+03 -3.9938E+02
            -5.5104E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -373.741247605470        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0620E+00  9.7345E-01  8.7649E-01  1.1880E+00  1.5122E+00  1.5423E+00  8.8703E-01  9.5932E-01  6.6655E-01  8.8572E-01
             1.5514E+01
 PARAMETER:  1.6016E-01  7.3092E-02 -3.1835E-02  2.7226E-01  5.1357E-01  5.3324E-01 -1.9878E-02  5.8471E-02 -3.0564E-01 -2.1356E-02
             2.8417E+00
 GRADIENT:  -3.3928E+01  8.5876E+00 -1.5962E+00  6.4313E+00 -3.3013E+00  2.9389E+01  2.5444E+00  2.4087E+00  6.7735E+00  8.0825E-01
            -1.0730E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -387.135138732885        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.1320E+00  8.2959E-01  1.0785E+00  1.2689E+00  5.3630E+00  1.2298E+00  7.8019E-01  2.0471E-01  2.7536E-01  3.1789E+00
             1.6513E+01
 PARAMETER:  2.2400E-01 -8.6826E-02  1.7553E-01  3.3818E-01  1.7795E+00  3.0687E-01 -1.4822E-01 -1.4862E+00 -1.1897E+00  1.2565E+00
             2.9041E+00
 GRADIENT:   2.5389E+01  1.7645E+01  7.1532E+00  2.7473E+01 -4.6560E-01 -2.2565E+01  9.8351E-01  2.0199E-02  1.2697E+00 -1.2841E+00
            -2.2500E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -410.204367944309        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.0496E+00  3.4496E-01  3.3548E-01  1.4300E+00  1.1449E+01  1.5050E+00  1.1998E-01  1.0000E-02  1.9586E-01  5.8364E+00
             1.6789E+01
 PARAMETER:  1.4841E-01 -9.6433E-01 -9.9218E-01  4.5767E-01  2.5379E+00  5.0880E-01 -2.0205E+00 -7.1580E+00 -1.5304E+00  1.8641E+00
             2.9207E+00
 GRADIENT:   2.7989E+00  1.9329E+01 -8.7380E+00  8.0429E+01 -1.5792E+01 -2.0311E+01  7.5931E-02  0.0000E+00  1.2036E+00  2.3047E+01
            -9.6354E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -465.880494561165        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      308
 NPARAMETR:  6.7490E-01  5.2410E-02  5.9987E-02  5.7015E-01  9.0998E+03  1.5117E+00  1.1278E-02  1.0000E-02  2.7431E-02  9.3007E+01
             1.5441E+01
 PARAMETER: -2.9319E-01 -2.8487E+00 -2.7136E+00 -4.6186E-01  9.2160E+00  5.1320E-01 -4.3849E+00 -2.2258E+01 -3.4961E+00  4.6327E+00
             2.8370E+00
 GRADIENT:   5.7833E+01  1.2359E+01  6.6675E+00 -6.7628E+00 -1.3045E-03 -1.2018E+01  9.7975E-04  0.0000E+00  6.0945E-02  7.0527E-04
             6.4177E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -471.152578490573        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  4.8106E-01  2.0997E-02  3.1409E-02  3.5394E-01  2.5053E+05  1.5457E+00  1.0000E-02  1.0000E-02  1.0000E-02  4.1929E+02
             1.4744E+01
 PARAMETER: -6.3176E-01 -3.7634E+00 -3.3607E+00 -9.3863E-01  1.2531E+01  5.3546E-01 -5.2870E+00 -2.8867E+01 -4.6688E+00  6.1386E+00
             2.7908E+00
 GRADIENT:  -2.0097E+01  1.1213E+00  6.3323E-01  1.0252E+01 -5.3079E-06 -3.2516E+00  0.0000E+00  0.0000E+00  0.0000E+00  4.9707E-07
            -1.3665E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -472.254403180266        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      655
 NPARAMETR:  4.5732E-01  1.2138E-02  2.4947E-02  2.9829E-01  2.4628E+06  1.5451E+00  1.0000E-02  1.0000E-02  1.0000E-02  8.1903E+02
             1.5223E+01
 PARAMETER: -6.8237E-01 -4.3114E+00 -3.5910E+00 -1.1097E+00  1.4817E+01  5.3506E-01 -6.4204E+00 -3.1529E+01 -5.2635E+00  6.8081E+00
             2.8228E+00
 GRADIENT:   3.4196E+00  6.5973E-02 -6.6278E+00  5.9947E+00  1.8269E-07 -8.9728E-01  0.0000E+00  0.0000E+00  0.0000E+00 -1.6991E-09
            -1.7652E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -472.276113377741        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      830
 NPARAMETR:  4.5560E-01  1.1097E-02  2.5072E-02  2.9815E-01  3.1917E+05  1.5484E+00  1.0000E-02  1.0000E-02  1.0000E-02  8.2272E+02
             1.5214E+01
 PARAMETER: -6.8615E-01 -4.4011E+00 -3.5860E+00 -1.1102E+00  1.2773E+01  5.3724E-01 -6.4204E+00 -3.1529E+01 -5.2635E+00  6.8126E+00
             2.8222E+00
 GRADIENT:  -3.2606E-02  3.1393E-02 -3.5073E-01 -4.5232E-01  7.5820E-07 -1.7648E-02  0.0000E+00  0.0000E+00  0.0000E+00 -7.5603E-08
            -4.9265E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -472.277236659991        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      969
 NPARAMETR:  4.5526E-01  1.0790E-02  2.5046E-02  2.9810E-01  3.2549E+04  1.5480E+00  1.0000E-02  1.0000E-02  1.0000E-02  7.8213E+02
             1.5202E+01
 PARAMETER: -6.8689E-01 -4.4291E+00 -3.5870E+00 -1.1103E+00  1.0491E+01  5.3695E-01 -6.4204E+00 -3.1529E+01 -5.2635E+00  6.7620E+00
             2.8214E+00
 GRADIENT:   3.0049E+01  3.8472E-02  3.4749E+01  1.5355E+01  3.7692E-05  4.2898E+00  0.0000E+00  0.0000E+00  0.0000E+00  7.2807E-05
             2.1929E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -472.278129996764        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     1165
 NPARAMETR:  4.5566E-01  1.0000E-02  2.5034E-02  2.9792E-01  6.7192E+08  1.5501E+00  1.0000E-02  1.0000E-02  1.0000E-02  6.3064E+02
             1.5217E+01
 PARAMETER: -6.8601E-01 -4.5775E+00 -3.5875E+00 -1.1109E+00  2.0426E+01  5.3829E-01 -6.4204E+00 -3.1529E+01 -5.2635E+00  6.5467E+00
             2.8224E+00
 GRADIENT:   1.0281E+00  0.0000E+00 -9.2175E-01 -2.2563E-01  4.6893E-10  1.8244E-01  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -3.5581E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -472.279204892828        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1344
 NPARAMETR:  4.5505E-01  1.0000E-02  2.5011E-02  2.9761E-01  5.2894E+08  1.5495E+00  1.0000E-02  1.0000E-02  1.0000E-02  6.5010E+02
             1.5215E+01
 PARAMETER: -6.8735E-01 -4.5535E+00 -3.5885E+00 -1.1120E+00  2.0186E+01  5.3794E-01 -6.4204E+00 -3.1529E+01 -5.2635E+00  6.5771E+00
             2.8223E+00
 GRADIENT:   3.0372E-01  0.0000E+00 -3.6658E-01 -6.0311E-01  5.1672E-10  1.2272E-01  0.0000E+00  0.0000E+00  0.0000E+00 -8.6426E-13
            -1.1065E-01

0ITERATION NO.:   51    OBJECTIVE VALUE:  -472.279204892828        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1366
 NPARAMETR:  4.5505E-01  1.0000E-02  2.5011E-02  2.9761E-01  5.2894E+08  1.5495E+00  1.0000E-02  1.0000E-02  1.0000E-02  6.5010E+02
             1.5215E+01
 PARAMETER: -6.8735E-01 -4.5535E+00 -3.5885E+00 -1.1120E+00  2.0186E+01  5.3794E-01 -6.4204E+00 -3.1529E+01 -5.2635E+00  6.5771E+00
             2.8223E+00
 GRADIENT:   3.0372E-01  0.0000E+00 -3.6658E-01 -6.0311E-01  5.1672E-10  1.2272E-01  0.0000E+00  0.0000E+00  0.0000E+00 -8.6426E-13
            -1.1065E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1366
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6494E-03  1.9675E-06  9.7659E-05 -2.0436E-04  6.3713E-10
 SE:             2.8425E-02  9.8872E-07  2.0929E-04  2.5648E-04  1.2285E-09
 N:                     100         100         100         100         100

 P VAL.:         9.2574E-01  4.6595E-02  6.4077E-01  4.2557E-01  6.0401E-01

 ETASHRINKSD(%)  4.7727E+00  9.9997E+01  9.9299E+01  9.9141E+01  1.0000E+02
 ETASHRINKVR(%)  9.3176E+00  1.0000E+02  9.9995E+01  9.9993E+01  1.0000E+02
 EBVSHRINKSD(%)  4.9596E+00  9.9996E+01  9.9168E+01  9.8966E+01  1.0000E+02
 EBVSHRINKVR(%)  9.6732E+00  1.0000E+02  9.9993E+01  9.9989E+01  1.0000E+02
 RELATIVEINF(%)  1.0000E-10  1.0503E-08  5.3967E-05  9.6187E-05  1.0000E-10
 EPSSHRINKSD(%)  4.6339E+00
 EPSSHRINKVR(%)  9.0531E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -472.27920489282815     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       262.87162167091003     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.69
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -472.279       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.55E-01  1.00E-02  2.50E-02  2.98E-01  5.29E+08  1.55E+00  1.00E-02  1.00E-02  1.00E-02  6.50E+02  1.52E+01
 


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
 #CPUT: Total CPU Time in Seconds,       19.730
Stop Time:
Sat Oct  2 06:01:28 CDT 2021