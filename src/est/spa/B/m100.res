Sat Sep 18 08:51:30 CDT 2021
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
$DATA ../../../../data/spa/B/dat100.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m100.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1659.00106995691        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2981E+02 -4.9941E+01 -2.6705E+01 -1.9266E+01  2.6738E+01 -9.8690E+00 -1.5050E+00  5.1471E+00  2.4514E+01 -4.1795E+00
             9.3368E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1664.81327995673        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.5994E-01  1.1092E+00  1.0641E+00  9.4411E-01  1.0704E+00  1.0193E+00  1.0197E+00  9.7432E-01  8.5302E-01  1.0532E+00
             9.7464E-01
 PARAMETER:  5.9117E-02  2.0362E-01  1.6212E-01  4.2490E-02  1.6803E-01  1.1916E-01  1.1950E-01  7.3987E-02 -5.8969E-02  1.5182E-01
             7.4314E-02
 GRADIENT:   4.2330E+01 -1.5881E+01  1.3729E+00 -1.9674E+01  8.4486E+00  3.2799E+00 -4.8678E+00 -1.7676E+00 -7.0997E+00 -7.3036E+00
            -4.5133E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1665.50345067326        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.6110E-01  1.1520E+00  1.1520E+00  9.3615E-01  1.1265E+00  1.0364E+00  9.8052E-01  1.0205E+00  9.0817E-01  1.1684E+00
             9.7371E-01
 PARAMETER:  6.0326E-02  2.4153E-01  2.4154E-01  3.4025E-02  2.1916E-01  1.3573E-01  8.0332E-02  1.2027E-01  3.6728E-03  2.5560E-01
             7.3360E-02
 GRADIENT:   4.5798E+01  8.7140E+00  4.5600E+00  3.6022E+00  2.0481E+00  1.0792E+01 -8.9850E-01 -3.4402E+00 -2.2762E+00  6.5891E-01
            -4.2194E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1666.07088618986        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      317
 NPARAMETR:  9.6304E-01  1.2836E+00  1.1145E+00  8.5972E-01  1.1639E+00  1.0334E+00  9.0233E-01  1.2358E+00  9.7827E-01  1.1589E+00
             9.8537E-01
 PARAMETER:  6.2343E-02  3.4970E-01  2.0844E-01 -5.1144E-02  2.5178E-01  1.3290E-01 -2.7748E-03  3.1173E-01  7.8031E-02  2.4743E-01
             8.5259E-02
 GRADIENT:   3.3387E+00  8.0316E+00  1.5543E+00  8.9276E+00 -3.0764E+00  1.3831E+00 -5.3451E-01  7.7734E-02 -1.1380E+00 -1.0328E+00
             1.1536E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1666.87387326030        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      495
 NPARAMETR:  9.6494E-01  1.6088E+00  7.2495E-01  6.3483E-01  1.1793E+00  1.0358E+00  8.0743E-01  9.9163E-01  1.1616E+00  1.1376E+00
             9.7949E-01
 PARAMETER:  6.4309E-02  5.7548E-01 -2.2165E-01 -3.5441E-01  2.6492E-01  1.3516E-01 -1.1390E-01  9.1595E-02  2.4983E-01  2.2893E-01
             7.9281E-02
 GRADIENT:   3.1490E+00  3.4268E+00  8.3298E-01  1.5861E+00 -3.9084E+00  1.4257E+00  1.6981E+00  1.3886E-01 -1.4579E-01  1.6224E-01
            -7.9650E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1667.21383079587        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      670
 NPARAMETR:  9.6502E-01  1.8553E+00  5.1512E-01  4.7295E-01  1.2401E+00  1.0322E+00  7.3447E-01  8.8118E-01  1.3888E+00  1.1660E+00
             9.8260E-01
 PARAMETER:  6.4394E-02  7.1804E-01 -5.6335E-01 -6.4877E-01  3.1519E-01  1.3169E-01 -2.0861E-01 -2.6494E-02  4.2845E-01  2.5360E-01
             8.2446E-02
 GRADIENT:   1.7651E+00  1.1611E+01 -1.5007E-01  4.6780E+00 -1.0696E+00 -2.9341E-01  4.1094E-01  9.8297E-02 -1.8677E-01  4.7114E-01
             1.3208E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1667.26863888229        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      845
 NPARAMETR:  9.6424E-01  1.9203E+00  4.5273E-01  4.2288E-01  1.2582E+00  1.0330E+00  7.1747E-01  8.0552E-01  1.4804E+00  1.1703E+00
             9.8328E-01
 PARAMETER:  6.3589E-02  7.5250E-01 -6.9245E-01 -7.6067E-01  3.2966E-01  1.3246E-01 -2.3203E-01 -1.1627E-01  4.9234E-01  2.5725E-01
             8.3140E-02
 GRADIENT:  -3.3322E-02 -1.2071E-01 -1.8063E-02 -7.0200E-02 -1.9577E-01 -1.4086E-02  7.3374E-02  7.0396E-02  4.4243E-02  8.3571E-02
             1.1455E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1667.27092764143        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1024
 NPARAMETR:  9.6431E-01  1.9238E+00  4.4026E-01  4.2016E-01  1.2533E+00  1.0331E+00  7.1772E-01  7.3312E-01  1.4797E+00  1.1641E+00
             9.8313E-01
 PARAMETER:  6.3654E-02  7.5431E-01 -7.2039E-01 -7.6713E-01  3.2578E-01  1.3254E-01 -2.3167E-01 -2.1044E-01  4.9184E-01  2.5197E-01
             8.2990E-02
 GRADIENT:  -1.0652E-02 -1.2050E-01 -1.5512E-01  1.4844E-01  2.5044E-01 -2.0393E-03 -1.3390E-02  2.2841E-02 -2.9190E-02 -1.8248E-02
             3.4176E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1667.27124914880        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1209
 NPARAMETR:  9.6431E-01  1.9217E+00  4.4337E-01  4.2155E-01  1.2535E+00  1.0331E+00  7.1808E-01  7.3580E-01  1.4788E+00  1.1650E+00
             9.8308E-01
 PARAMETER:  6.3655E-02  7.5320E-01 -7.1336E-01 -7.6382E-01  3.2591E-01  1.3254E-01 -2.3118E-01 -2.0680E-01  4.9126E-01  2.5276E-01
             8.2940E-02
 GRADIENT:   1.9100E-02 -1.5832E-01 -2.0409E-02 -3.1787E-03  3.5357E-02  3.1719E-03  6.4297E-03  5.2715E-03  1.0306E-02  8.3381E-03
             3.9288E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1667.27125953090        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1385
 NPARAMETR:  9.6429E-01  1.9217E+00  4.4291E-01  4.2151E-01  1.2531E+00  1.0331E+00  7.1816E-01  7.3068E-01  1.4786E+00  1.1648E+00
             9.8308E-01
 PARAMETER:  6.3642E-02  7.5323E-01 -7.1440E-01 -7.6391E-01  3.2565E-01  1.3252E-01 -2.3107E-01 -2.1378E-01  4.9112E-01  2.5254E-01
             8.2937E-02
 GRADIENT:  -1.3264E-02 -6.4087E-02  7.1218E-03 -1.0787E-02 -1.1703E-02 -2.7227E-03  7.2799E-03 -1.1919E-03 -9.2765E-04  9.1186E-03
            -2.5631E-03

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1667.27125982223        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1442
 NPARAMETR:  9.6429E-01  1.9217E+00  4.4282E-01  4.2150E-01  1.2531E+00  1.0331E+00  7.1815E-01  7.3047E-01  1.4786E+00  1.1647E+00
             9.8308E-01
 PARAMETER:  6.3641E-02  7.5324E-01 -7.1459E-01 -7.6393E-01  3.2561E-01  1.3252E-01 -2.3108E-01 -2.1407E-01  4.9107E-01  2.5245E-01
             8.2937E-02
 GRADIENT:  -1.5761E-02 -6.6633E-02  4.4437E-03 -9.5042E-03 -5.8717E-03 -2.4834E-03  2.5928E-03 -8.0433E-04 -4.5136E-03  3.9340E-03
            -3.0805E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1442
 NO. OF SIG. DIGITS IN FINAL EST.:  3.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1909E-04 -3.2163E-02 -1.6831E-02  3.3103E-02 -4.2216E-02
 SE:             2.9847E-02  2.4578E-02  5.6167E-03  2.0931E-02  2.2575E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9682E-01  1.9066E-01  2.7302E-03  1.1376E-01  6.1479E-02

 ETASHRINKSD(%)  9.2793E-03  1.7662E+01  8.1183E+01  2.9880E+01  2.4371E+01
 ETASHRINKVR(%)  1.8558E-02  3.2205E+01  9.6459E+01  5.0831E+01  4.2803E+01
 EBVSHRINKSD(%)  3.9167E-01  1.6868E+01  8.4324E+01  3.3947E+01  2.0526E+01
 EBVSHRINKVR(%)  7.8180E-01  3.0890E+01  9.7543E+01  5.6370E+01  3.6839E+01
 RELATIVEINF(%)  9.9171E+01  4.1241E+00  2.1570E-01  2.1956E+00  1.8281E+01
 EPSSHRINKSD(%)  4.4767E+01
 EPSSHRINKVR(%)  6.9493E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1667.2712598222292     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -932.12043325849106     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.34
 Elapsed covariance  time in seconds:     6.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1667.271       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.64E-01  1.92E+00  4.43E-01  4.22E-01  1.25E+00  1.03E+00  7.18E-01  7.30E-01  1.48E+00  1.16E+00  9.83E-01
 


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
 
         3.00E-02  2.26E-01  2.15E-01  1.54E-01  2.15E-01  7.46E-02  8.06E-02  8.97E-01  4.12E-01  2.40E-01  6.46E-02
 


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
+        9.02E-04
 
 TH 2
+       -1.08E-04  5.12E-02
 
 TH 3
+       -5.99E-04 -1.92E-02  4.63E-02
 
 TH 4
+       -8.73E-05 -3.41E-02  1.48E-02  2.39E-02
 
 TH 5
+       -4.15E-04  3.20E-02  1.71E-02 -2.08E-02  4.62E-02
 
 TH 6
+        9.92E-05 -3.43E-04 -4.18E-03 -6.16E-06 -3.32E-03  5.56E-03
 
 TH 7
+        1.42E-04 -8.66E-03 -2.14E-03  5.89E-03 -8.58E-03  4.98E-05  6.50E-03
 
 TH 8
+       -1.06E-03  1.17E-01  7.40E-02 -7.58E-02  1.68E-01 -2.28E-02 -4.42E-02  8.05E-01
 
 TH 9
+        1.31E-04  6.72E-02  1.58E-02 -4.43E-02  7.15E-02 -3.55E-03 -1.98E-02  2.78E-01  1.70E-01
 
 TH10
+       -6.27E-04  2.41E-02  2.57E-02 -1.54E-02  4.52E-02 -5.60E-03 -7.70E-03  1.81E-01  6.18E-02  5.78E-02
 
 TH11
+       -7.73E-07  1.80E-03  1.19E-03 -1.44E-03  2.44E-03 -8.43E-05 -1.44E-03  1.63E-02  5.18E-03  6.93E-04  4.17E-03
 
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
+        3.00E-02
 
 TH 2
+       -1.59E-02  2.26E-01
 
 TH 3
+       -9.27E-02 -3.95E-01  2.15E-01
 
 TH 4
+       -1.88E-02 -9.76E-01  4.44E-01  1.54E-01
 
 TH 5
+       -6.43E-02  6.59E-01  3.69E-01 -6.25E-01  2.15E-01
 
 TH 6
+        4.43E-02 -2.03E-02 -2.60E-01 -5.35E-04 -2.07E-01  7.46E-02
 
 TH 7
+        5.87E-02 -4.75E-01 -1.23E-01  4.73E-01 -4.95E-01  8.28E-03  8.06E-02
 
 TH 8
+       -3.95E-02  5.74E-01  3.83E-01 -5.47E-01  8.70E-01 -3.41E-01 -6.11E-01  8.97E-01
 
 TH 9
+        1.06E-02  7.22E-01  1.79E-01 -6.97E-01  8.07E-01 -1.15E-01 -5.96E-01  7.51E-01  4.12E-01
 
 TH10
+       -8.68E-02  4.42E-01  4.96E-01 -4.14E-01  8.75E-01 -3.12E-01 -3.98E-01  8.38E-01  6.24E-01  2.40E-01
 
 TH11
+       -3.99E-04  1.23E-01  8.54E-02 -1.44E-01  1.76E-01 -1.75E-02 -2.76E-01  2.81E-01  1.95E-01  4.46E-02  6.46E-02
 
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
+        1.18E+03
 
 TH 2
+        1.35E+02  5.13E+02
 
 TH 3
+        5.46E+01  1.13E+02  3.52E+02
 
 TH 4
+        9.86E+01  4.93E+02 -4.30E+02  1.45E+03
 
 TH 5
+       -1.10E+01 -1.30E+02 -2.30E+02  2.47E+02  3.75E+02
 
 TH 6
+       -1.91E+01  1.55E+01  2.59E+01 -1.05E+01 -5.51E+01  2.40E+02
 
 TH 7
+       -5.80E+01  6.44E+00  7.77E+01 -1.35E+02 -9.71E+01  6.91E+01  3.31E+02
 
 TH 8
+       -1.08E+01 -7.17E+00 -5.80E+00  1.35E+00 -6.93E+00  1.66E+01  2.19E+01  9.80E+00
 
 TH 9
+       -2.60E+01 -2.84E+01 -5.67E+01  6.93E+01  5.90E+00 -4.36E+00  9.06E+00 -9.53E-01  3.37E+01
 
 TH10
+        1.91E+01  2.42E+01 -4.54E+01  8.14E+01 -7.40E+01  7.59E+00 -2.51E+01 -1.37E+01  1.82E+01  1.27E+02
 
 TH11
+        1.81E+01  5.42E+01 -3.49E+01  1.15E+02 -1.51E+01 -1.74E+01  8.41E+00 -1.77E+01  1.07E+01  7.50E+01  3.21E+02
 
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
 #CPUT: Total CPU Time in Seconds,       24.868
Stop Time:
Sat Sep 18 08:51:56 CDT 2021