Sat Sep 18 15:00:21 CDT 2021
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
$DATA ../../../../data/spa/TD2/dat94.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1676.53082771795        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1016E+01 -6.7376E+01 -4.6060E+01 -5.2377E+01  7.7072E+01 -2.1877E-01 -5.2738E+00  1.1131E+01 -1.4658E+01  7.1189E+00
             2.9767E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1683.36968697625        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      110
 NPARAMETR:  9.9696E-01  9.6412E-01  1.0514E+00  1.0676E+00  9.3121E-01  9.9941E-01  9.9968E-01  8.8333E-01  1.1141E+00  9.0224E-01
             9.5115E-01
 PARAMETER:  9.6959E-02  6.3456E-02  1.5009E-01  1.6545E-01  2.8729E-02  9.9406E-02  9.9676E-02 -2.4060E-02  2.0804E-01 -2.8758E-03
             4.9914E-02
 GRADIENT:  -6.3724E+00  5.9727E+00  1.0080E+01 -1.5885E+00 -1.0002E+01 -5.5012E+00  2.3420E+00  3.1936E+00  1.2703E+01 -2.7799E+00
             8.8995E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1686.06754568822        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      286
 NPARAMETR:  1.0019E+00  8.7614E-01  8.8823E-01  1.1351E+00  8.3478E-01  1.0413E+00  1.2114E+00  4.5552E-01  9.6662E-01  8.7933E-01
             9.3750E-01
 PARAMETER:  1.0193E-01 -3.2226E-02 -1.8529E-02  2.2671E-01 -8.0592E-02  1.4050E-01  2.9178E-01 -6.8631E-01  6.6052E-02 -2.8595E-02
             3.5461E-02
 GRADIENT:   2.0906E+00  1.6022E+01 -6.1870E+00  3.5673E+01  1.1950E+01  9.8881E+00 -1.0073E+00  8.8084E-01 -9.4068E-01  2.8771E+00
             5.3010E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1688.02918415278        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      463
 NPARAMETR:  9.9940E-01  7.1886E-01  7.8908E-01  1.2007E+00  7.1824E-01  1.0096E+00  1.4763E+00  2.6746E-01  8.8177E-01  7.7596E-01
             9.1960E-01
 PARAMETER:  9.9395E-02 -2.3009E-01 -1.3689E-01  2.8290E-01 -2.3095E-01  1.0952E-01  4.8955E-01 -1.2188E+00 -2.5822E-02 -1.5365E-01
             1.6181E-02
 GRADIENT:  -3.1631E+00  9.8860E+00  3.7961E+00  1.3396E+01 -5.6378E+00 -2.2154E+00 -2.4467E-01  2.3033E-01 -3.0210E+00 -1.0987E+00
            -1.5681E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1688.50967500105        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      638
 NPARAMETR:  9.9957E-01  5.7394E-01  7.7715E-01  1.2711E+00  6.6966E-01  1.0135E+00  1.7315E+00  1.1461E-01  8.4791E-01  7.8654E-01
             9.2008E-01
 PARAMETER:  9.9566E-02 -4.5523E-01 -1.5212E-01  3.3989E-01 -3.0098E-01  1.1344E-01  6.4900E-01 -2.0662E+00 -6.4979E-02 -1.4011E-01
             1.6703E-02
 GRADIENT:  -2.3690E-01  4.4374E-01  2.5055E-01  9.5976E-01 -6.5805E-02 -2.2657E-01 -2.8055E-02 -7.6942E-03 -7.2253E-03 -2.5497E-01
            -1.1653E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1688.51234064996        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  9.9955E-01  5.6209E-01  7.7682E-01  1.2770E+00  6.6617E-01  1.0140E+00  1.7566E+00  1.1948E-01  8.4474E-01  7.8865E-01
             9.2007E-01
 PARAMETER:  9.9554E-02 -4.7609E-01 -1.5254E-01  3.4450E-01 -3.0621E-01  1.1389E-01  6.6338E-01 -2.0246E+00 -6.8721E-02 -1.3743E-01
             1.6694E-02
 GRADIENT:   1.6894E-02 -8.0498E-02 -6.4303E-01 -1.2469E-01  3.8726E-01  2.0481E-03  1.4582E-02  1.0895E-03  2.2517E-02  2.8150E-01
             1.1330E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1688.51300731015        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  9.9938E-01  5.6142E-01  7.7799E-01  1.2773E+00  6.6647E-01  1.0139E+00  1.7585E+00  1.3323E-01  8.4427E-01  7.8670E-01
             9.2011E-01
 PARAMETER:  9.9376E-02 -4.7729E-01 -1.5104E-01  3.4474E-01 -3.0576E-01  1.1377E-01  6.6448E-01 -1.9156E+00 -6.9288E-02 -1.3991E-01
             1.6734E-02
 GRADIENT:  -3.0393E-01 -9.4265E-02 -1.1743E-01 -5.4271E-01 -3.3662E-04 -3.5436E-02 -2.6630E-02 -7.4900E-04 -8.7038E-02 -4.8196E-02
             4.5937E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1688.51314874426        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1179
 NPARAMETR:  9.9916E-01  5.6157E-01  7.7936E-01  1.2774E+00  6.6720E-01  1.0137E+00  1.7567E+00  1.4063E-01  8.4482E-01  7.8739E-01
             9.2003E-01
 PARAMETER:  9.9161E-02 -4.7702E-01 -1.4928E-01  3.4484E-01 -3.0467E-01  1.1362E-01  6.6345E-01 -1.8616E+00 -6.8637E-02 -1.3903E-01
             1.6647E-02
 GRADIENT:  -7.2544E-01 -9.7986E-02 -2.1578E-02 -6.2117E-01 -1.3729E-01 -8.7776E-02 -6.5329E-02  1.2160E-03  3.0942E-03  7.2575E-03
             2.0296E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1688.51338184165        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1355
 NPARAMETR:  9.9956E-01  5.6216E-01  7.7976E-01  1.2774E+00  6.6764E-01  1.0140E+00  1.7564E+00  1.3989E-01  8.4490E-01  7.8762E-01
             9.2002E-01
 PARAMETER:  9.9559E-02 -4.7596E-01 -1.4877E-01  3.4485E-01 -3.0401E-01  1.1389E-01  6.6329E-01 -1.8669E+00 -6.8542E-02 -1.3874E-01
             1.6639E-02
 GRADIENT:   1.2594E-01  2.1895E-02 -1.0075E-01 -7.2112E-02  6.4106E-02  1.6050E-02 -2.0512E-02 -6.9013E-04 -1.5830E-03 -2.8699E-02
            -1.0167E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1688.51364134718        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1532            RESET HESSIAN, TYPE II
 NPARAMETR:  9.9948E-01  5.6052E-01  7.8074E-01  1.2786E+00  6.6765E-01  1.0139E+00  1.7606E+00  1.4448E-01  8.4453E-01  7.8815E-01
             9.2002E-01
 PARAMETER:  9.9475E-02 -4.7888E-01 -1.4752E-01  3.4575E-01 -3.0399E-01  1.1382E-01  6.6563E-01 -1.8346E+00 -6.8977E-02 -1.3807E-01
             1.6638E-02
 GRADIENT:   4.7314E+01  6.7280E+00  7.5720E-01  4.6086E+01  4.4018E+00  5.6288E+00  2.4312E+00  1.8001E-02  1.0301E+00  1.2437E-01
             7.8005E-02

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1688.51364134718        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1589
 NPARAMETR:  9.9948E-01  5.6052E-01  7.8074E-01  1.2786E+00  6.6765E-01  1.0139E+00  1.7606E+00  1.4448E-01  8.4453E-01  7.8815E-01
             9.2002E-01
 PARAMETER:  9.9475E-02 -4.7888E-01 -1.4752E-01  3.4575E-01 -3.0399E-01  1.1382E-01  6.6563E-01 -1.8346E+00 -6.8977E-02 -1.3807E-01
             1.6638E-02
 GRADIENT:   1.6727E-02  9.4137E-02 -4.7727E-02  6.7291E-02 -4.4231E-02  2.4182E-03  1.7099E-02 -8.2919E-06  1.4556E-02  7.8749E-03
            -1.9953E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1589
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4317E-04  1.7011E-02 -7.2769E-03 -1.3199E-02 -1.4422E-04
 SE:             2.9850E-02  1.8896E-02  3.4499E-03  2.6146E-02  2.3680E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9350E-01  3.6799E-01  3.4917E-02  6.1368E-01  9.9514E-01

 ETASHRINKSD(%)  1.0000E-10  3.6697E+01  8.8442E+01  1.2407E+01  2.0668E+01
 ETASHRINKVR(%)  1.0000E-10  5.9927E+01  9.8664E+01  2.3274E+01  3.7064E+01
 EBVSHRINKSD(%)  3.7256E-01  3.9231E+01  8.9127E+01  1.1533E+01  1.8352E+01
 EBVSHRINKVR(%)  7.4373E-01  6.3072E+01  9.8818E+01  2.1737E+01  3.3336E+01
 RELATIVEINF(%)  9.8676E+01  3.9697E+00  1.2166E-01  1.2383E+01  4.9358E+00
 EPSSHRINKSD(%)  4.4644E+01
 EPSSHRINKVR(%)  6.9357E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1688.5136413471769     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -953.36281478343869     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.72
 Elapsed covariance  time in seconds:     6.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1688.514       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  5.61E-01  7.81E-01  1.28E+00  6.68E-01  1.01E+00  1.76E+00  1.44E-01  8.45E-01  7.88E-01  9.20E-01
 


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
 
         3.07E-02  2.10E-01  1.64E-01  1.25E-01  1.05E-01  7.33E-02  4.12E-01  6.05E-01  8.75E-02  1.20E-01  6.05E-02
 


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
+        9.41E-04
 
 TH 2
+        2.03E-04  4.42E-02
 
 TH 3
+       -6.41E-04 -4.14E-03  2.70E-02
 
 TH 4
+       -2.58E-04 -2.44E-02  6.53E-03  1.56E-02
 
 TH 5
+       -3.56E-04  1.07E-02  1.36E-02 -3.78E-03  1.11E-02
 
 TH 6
+       -9.19E-05  1.80E-03 -1.73E-03 -9.87E-04 -3.34E-04  5.37E-03
 
 TH 7
+       -7.03E-04 -7.46E-02  8.36E-03  4.14E-02 -1.65E-02 -1.26E-03  1.69E-01
 
 TH 8
+       -3.12E-03  5.39E-03  7.87E-02  1.06E-02  4.28E-02 -5.37E-03 -9.95E-03  3.66E-01
 
 TH 9
+       -1.89E-04  8.29E-03  4.18E-03 -4.06E-03  4.61E-03  8.31E-05 -1.59E-02  1.62E-02  7.66E-03
 
 TH10
+       -1.99E-04 -6.28E-03  1.03E-02  4.85E-03  4.28E-03 -4.90E-04  8.57E-03  4.02E-03  1.54E-03  1.44E-02
 
 TH11
+        4.18E-05  2.53E-03  1.04E-03 -9.70E-04  1.07E-03 -5.65E-04 -6.70E-03  9.68E-03  3.90E-04 -8.61E-04  3.65E-03
 
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
+        3.07E-02
 
 TH 2
+        3.15E-02  2.10E-01
 
 TH 3
+       -1.27E-01 -1.20E-01  1.64E-01
 
 TH 4
+       -6.74E-02 -9.31E-01  3.19E-01  1.25E-01
 
 TH 5
+       -1.10E-01  4.85E-01  7.87E-01 -2.88E-01  1.05E-01
 
 TH 6
+       -4.09E-02  1.17E-01 -1.44E-01 -1.08E-01 -4.33E-02  7.33E-02
 
 TH 7
+       -5.57E-02 -8.62E-01  1.24E-01  8.07E-01 -3.80E-01 -4.19E-02  4.12E-01
 
 TH 8
+       -1.68E-01  4.24E-02  7.92E-01  1.41E-01  6.71E-01 -1.21E-01 -3.99E-02  6.05E-01
 
 TH 9
+       -7.05E-02  4.51E-01  2.91E-01 -3.72E-01  5.00E-01  1.30E-02 -4.42E-01  3.06E-01  8.75E-02
 
 TH10
+       -5.39E-02 -2.49E-01  5.24E-01  3.24E-01  3.38E-01 -5.57E-02  1.73E-01  5.53E-02  1.47E-01  1.20E-01
 
 TH11
+        2.25E-02  1.99E-01  1.04E-01 -1.29E-01  1.67E-01 -1.27E-01 -2.69E-01  2.65E-01  7.37E-02 -1.19E-01  6.05E-02
 
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
+        1.14E+03
 
 TH 2
+       -3.62E+01  5.24E+02
 
 TH 3
+       -1.96E+02  3.70E+02  1.29E+03
 
 TH 4
+        6.23E+01  3.04E+02 -3.19E+02  7.88E+02
 
 TH 5
+        2.35E+02 -7.67E+02 -1.67E+03  3.51E+02  2.82E+03
 
 TH 6
+        1.92E+01 -3.84E+01  4.06E+01 -4.53E+01 -2.32E+01  2.02E+02
 
 TH 7
+        7.47E+00  5.56E+01  1.02E+01 -5.47E+00 -4.96E+01 -7.21E+00  2.71E+01
 
 TH 8
+        2.25E+01 -3.78E+00 -7.34E+01 -1.19E+00  2.53E+01 -1.78E+00  2.68E+00  1.61E+01
 
 TH 9
+        2.72E+01 -3.24E+01 -6.55E+01  4.96E+01  8.95E+01 -3.24E+00  7.87E+00 -6.64E+00  2.10E+02
 
 TH10
+        3.52E+01  5.62E+01 -1.40E+02 -1.35E+01 -7.27E+01 -9.65E+00  1.66E+01  3.80E+01 -3.38E+01  2.03E+02
 
 TH11
+       -2.22E+01 -4.04E+01 -2.23E+01 -3.62E+01  8.42E+01  3.03E+01  1.60E+01 -1.29E+01  2.88E+01 -2.40E+00  3.38E+02
 
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
 #CPUT: Total CPU Time in Seconds,       27.065
Stop Time:
Sat Sep 18 15:00:50 CDT 2021