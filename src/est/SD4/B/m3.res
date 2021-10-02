Fri Oct  1 23:09:33 CDT 2021
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
$DATA ../../../../data/SD4/B/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1721.17371147917        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0703E+02 -2.8948E+01 -1.8646E+01 -1.2586E+01 -8.7318E+00  6.3847E+01  6.2609E+00  1.1902E+01  8.4630E+00  3.6800E+01
             2.0145E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1730.43531769136        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0198E+00  1.0627E+00  1.1064E+00  1.0305E+00  1.0658E+00  1.0168E+00  9.6836E-01  9.4912E-01  1.0048E+00  7.9476E-01
             1.0005E+00
 PARAMETER:  1.1961E-01  1.6079E-01  2.0114E-01  1.3001E-01  1.6373E-01  1.1662E-01  6.7849E-02  4.7775E-02  1.0476E-01 -1.2971E-01
             1.0051E-01
 GRADIENT:   2.2724E+00  7.7818E-01  5.2229E+00  2.1922E+00  1.1714E+01 -7.9733E-01  7.1023E-01 -2.6647E+00 -1.6248E-01 -1.9721E+00
             8.7774E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1731.04045261981        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0198E+00  1.1024E+00  9.7225E-01  9.9944E-01  1.0067E+00  1.0189E+00  9.9118E-01  9.4552E-01  1.0125E+00  6.9731E-01
             9.8507E-01
 PARAMETER:  1.1963E-01  1.9747E-01  7.1855E-02  9.9438E-02  1.0671E-01  1.1872E-01  9.1143E-02  4.3983E-02  1.1245E-01 -2.6053E-01
             8.4957E-02
 GRADIENT:   3.1656E-01  4.4204E+00  4.1322E+00  3.4155E+00 -2.4622E+00 -6.3380E-01  1.7023E+00  7.7902E-01  8.9157E-01 -3.0645E+00
             4.6216E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1731.69822573896        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0211E+00  1.2837E+00  7.8070E-01  8.7655E-01  1.0041E+00  1.0251E+00  8.9060E-01  6.5601E-01  1.0921E+00  7.2948E-01
             9.6613E-01
 PARAMETER:  1.2093E-01  3.4975E-01 -1.4756E-01 -3.1762E-02  1.0409E-01  1.2483E-01 -1.5863E-02 -3.2159E-01  1.8807E-01 -2.1543E-01
             6.5539E-02
 GRADIENT:  -1.2638E-01  5.8899E+00  2.4010E+00  5.3564E+00 -6.1604E+00  8.9206E-01 -1.1754E+00 -7.3599E-02 -1.0678E+00  1.1985E+00
            -2.9710E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1732.04426970186        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      725
 NPARAMETR:  1.0224E+00  1.5565E+00  5.9802E-01  6.9608E-01  1.0583E+00  1.0238E+00  8.0132E-01  4.0980E-01  1.2701E+00  7.1819E-01
             9.7849E-01
 PARAMETER:  1.2214E-01  5.4246E-01 -4.1412E-01 -2.6230E-01  1.5669E-01  1.2352E-01 -1.2150E-01 -7.9208E-01  3.3912E-01 -2.3102E-01
             7.8258E-02
 GRADIENT:   3.2585E-02  1.0549E+01  1.8375E+00  5.7179E+00 -4.7991E+00 -3.0148E-01  2.2548E-01  1.0795E-01 -3.8422E-01 -5.8607E-01
             1.0346E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1732.06933388855        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      907
 NPARAMETR:  1.0246E+00  1.5863E+00  5.7227E-01  6.5982E-01  1.0758E+00  1.0275E+00  7.8593E-01  2.5803E-01  1.3112E+00  7.3296E-01
             9.7500E-01
 PARAMETER:  1.2428E-01  5.6139E-01 -4.5814E-01 -3.1579E-01  1.7308E-01  1.2715E-01 -1.4089E-01 -1.2547E+00  3.7097E-01 -2.1067E-01
             7.4684E-02
 GRADIENT:   4.8718E+00 -2.0441E+01 -1.3250E+00 -7.6155E+00  5.9259E+00  1.1588E+00 -4.9323E-01  6.5797E-02 -2.0202E-01 -1.2586E-01
            -3.9468E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1732.13501239252        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1083
 NPARAMETR:  1.0222E+00  1.6004E+00  5.6757E-01  6.6120E-01  1.0750E+00  1.0244E+00  7.8666E-01  1.8517E-01  1.3144E+00  7.3563E-01
             9.7693E-01
 PARAMETER:  1.2196E-01  5.7027E-01 -4.6640E-01 -3.1369E-01  1.7230E-01  1.2415E-01 -1.3996E-01 -1.5865E+00  3.7336E-01 -2.0702E-01
             7.6658E-02
 GRADIENT:  -3.5547E-01 -7.1023E-01  3.4375E-01  1.4965E+00  5.2753E-02 -8.2824E-02  1.3994E-01  2.5222E-02 -2.8589E-02  4.2605E-02
             8.4324E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1732.14830203397        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1263             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0249E+00  1.6049E+00  5.5995E-01  6.5364E-01  1.0762E+00  1.0272E+00  7.8352E-01  5.8431E-02  1.3214E+00  7.3483E-01
             9.7684E-01
 PARAMETER:  1.2458E-01  5.7305E-01 -4.7990E-01 -3.2519E-01  1.7347E-01  1.2679E-01 -1.4396E-01 -2.7399E+00  3.7871E-01 -2.0812E-01
             7.6568E-02
 GRADIENT:   5.9639E+02  5.5320E+02  5.8018E+00  1.1413E+02  1.4669E+01  9.4988E+01  9.3019E+00  1.3358E-02  2.1222E+01  7.3091E-01
             7.9715E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1732.15478939285        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1444
 NPARAMETR:  1.0238E+00  1.6062E+00  5.5932E-01  6.5461E-01  1.0750E+00  1.0260E+00  7.8484E-01  1.0000E-02  1.3237E+00  7.3574E-01
             9.7698E-01
 PARAMETER:  1.2350E-01  5.7388E-01 -4.8104E-01 -3.2372E-01  1.7229E-01  1.2567E-01 -1.4228E-01 -4.6147E+00  3.8042E-01 -2.0687E-01
             7.6713E-02
 GRADIENT:   2.9580E+00 -4.9886E+00  3.4804E-02 -4.5555E-01  2.8517E-01  5.2096E-01  1.8740E-01  0.0000E+00  4.5871E-01  2.4113E-01
             1.5647E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1732.15601179802        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     1638             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0238E+00  1.6056E+00  5.5888E-01  6.5487E-01  1.0741E+00  1.0260E+00  7.8415E-01  1.0000E-02  1.3205E+00  7.3274E-01
             9.7659E-01
 PARAMETER:  1.2350E-01  5.7349E-01 -4.8183E-01 -3.2332E-01  1.7146E-01  1.2570E-01 -1.4316E-01 -4.6147E+00  3.7798E-01 -2.1096E-01
             7.6316E-02
 GRADIENT:   5.8912E+02  5.5708E+02  6.4078E+00  1.1508E+02  1.2753E+01  9.4003E+01  9.3334E+00  0.0000E+00  2.1270E+01  6.6675E-01
             6.5203E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1732.15658070388        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1829
 NPARAMETR:  1.0238E+00  1.6052E+00  5.5864E-01  6.5509E-01  1.0734E+00  1.0260E+00  7.8455E-01  1.0000E-02  1.3198E+00  7.3244E-01
             9.7658E-01
 PARAMETER:  1.2350E-01  5.7325E-01 -4.8226E-01 -3.2298E-01  1.7081E-01  1.2570E-01 -1.4264E-01 -4.6147E+00  3.7748E-01 -2.1138E-01
             7.6298E-02
 GRADIENT:   2.9640E+00 -4.4934E+00  4.0966E-01 -8.1116E-01 -2.5892E-02  5.2895E-01 -9.5346E-02  0.0000E+00  6.8680E-03 -8.1273E-02
            -1.2321E-01

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1732.15658070388        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1857
 NPARAMETR:  1.0238E+00  1.6040E+00  5.5731E-01  6.5566E-01  1.0734E+00  1.0260E+00  7.8567E-01  1.0000E-02  1.3211E+00  7.3364E-01
             9.7717E-01
 PARAMETER:  1.2350E-01  5.7325E-01 -4.8226E-01 -3.2298E-01  1.7081E-01  1.2570E-01 -1.4264E-01 -4.6147E+00  3.7748E-01 -2.1138E-01
             7.6298E-02
 GRADIENT:   6.8902E-03  8.3704E-01  4.2120E-01 -3.5364E-01  3.0777E-03 -2.7965E-04 -1.1688E-01  0.0000E+00 -9.0102E-02 -8.3171E-02
            -1.2274E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1857
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0931E-04 -2.4056E-02 -3.0888E-04  1.9212E-02 -3.1641E-02
 SE:             2.9874E-02  2.3795E-02  1.3484E-04  2.4214E-02  2.0404E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9441E-01  3.1203E-01  2.1982E-02  4.2752E-01  1.2096E-01

 ETASHRINKSD(%)  1.0000E-10  2.0285E+01  9.9548E+01  1.8879E+01  3.1645E+01
 ETASHRINKVR(%)  1.0000E-10  3.6455E+01  9.9998E+01  3.4194E+01  5.3276E+01
 EBVSHRINKSD(%)  3.8489E-01  2.0103E+01  9.9601E+01  1.9174E+01  3.1808E+01
 EBVSHRINKVR(%)  7.6830E-01  3.6164E+01  9.9998E+01  3.4671E+01  5.3499E+01
 RELATIVEINF(%)  9.9192E+01  4.2550E+00  1.6220E-04  5.0288E+00  7.0710E+00
 EPSSHRINKSD(%)  4.3849E+01
 EPSSHRINKVR(%)  6.8471E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1732.1565807038764     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -997.00575414013827     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.20
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1732.157       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.61E+00  5.59E-01  6.55E-01  1.07E+00  1.03E+00  7.85E-01  1.00E-02  1.32E+00  7.32E-01  9.77E-01
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       24.226
Stop Time:
Fri Oct  1 23:09:59 CDT 2021
