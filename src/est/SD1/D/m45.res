Fri Oct  1 06:38:35 CDT 2021
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
$DATA ../../../../data/SD1/D/dat45.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m45.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   25502.2580317326        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.8733E+02  4.9492E+02 -6.5090E+01  4.1869E+02  1.8460E+02 -1.8769E+03 -1.1225E+03 -6.6287E+01 -1.7211E+03 -4.2196E+02
            -5.2682E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -798.604465761638        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.0129E-01  1.7892E+00  9.5030E-01  1.5961E+00  9.6567E-01  3.9952E+00  6.0502E+00  9.9257E-01  3.3380E+00  1.5065E+00
             1.2117E+01
 PARAMETER: -3.9324E-03  6.8178E-01  4.9027E-02  5.6754E-01  6.5070E-02  1.4851E+00  1.9001E+00  9.2540E-02  1.3054E+00  5.0976E-01
             2.5946E+00
 GRADIENT:  -3.9985E+01  2.5798E+01 -4.6483E+01  6.2066E+01 -2.1614E+01  2.0221E+02  1.4328E+02  3.5724E+00  9.5848E+01  3.1721E+01
             5.6196E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -896.491900043867        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  8.0590E-01  1.2031E+00  3.4070E+01  2.2087E+00  2.0756E+00  3.6700E+00  9.3000E+00  9.0947E-01  3.6919E+00  1.3319E+00
             1.1530E+01
 PARAMETER: -1.1580E-01  2.8490E-01  3.6284E+00  8.9242E-01  8.3024E-01  1.4002E+00  2.3300E+00  5.1057E-03  1.4061E+00  3.8660E-01
             2.5450E+00
 GRADIENT:  -5.2748E+01  2.2897E+01 -2.5154E+00  4.5915E+01 -3.4153E+00  1.8427E+02  1.1428E+02  1.6355E-02  8.9646E+01  2.9131E+01
             5.5166E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1037.54448031252        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  1.0649E+00  1.6227E+00  1.8127E+01  8.4384E-01  2.5729E+00  1.7141E+00  3.3573E+00  3.4951E+00  2.3412E+00  9.0813E-01
             9.7355E+00
 PARAMETER:  1.6289E-01  5.8411E-01  2.9974E+00 -6.9791E-02  1.0451E+00  6.3886E-01  1.3111E+00  1.3514E+00  9.5064E-01  3.6275E-03
             2.3758E+00
 GRADIENT:   3.4294E+00 -1.7302E+01 -2.2216E+00 -1.0169E+01  6.4195E+01 -6.8691E+01  7.4775E+00  5.4882E-02  2.1614E+01  1.1794E+01
             3.4428E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1100.06145627746        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  1.0569E+00  1.7847E+00  6.9430E+00  5.0435E-01  2.0617E+00  2.1810E+00  2.6987E+00  1.3647E+00  1.6226E+00  5.3805E-01
             7.5721E+00
 PARAMETER:  1.5529E-01  6.7926E-01  2.0377E+00 -5.8448E-01  8.2355E-01  8.7979E-01  1.0928E+00  4.1091E-01  5.8404E-01 -5.1981E-01
             2.1245E+00
 GRADIENT:   1.0213E+01 -1.0523E+01  2.4235E+00 -3.8722E+00  6.3559E+00 -2.1718E+00 -1.5505E+01 -1.1905E-01  5.8234E+00  2.0618E+00
             2.8367E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1114.03466587681        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      401
 NPARAMETR:  1.0902E+00  1.6158E+00  2.0292E+00  6.4766E-01  1.7531E+00  2.2165E+00  2.9983E+00  9.1579E-01  9.3188E-01  3.3312E-01
             7.5750E+00
 PARAMETER:  1.8635E-01  5.7984E-01  8.0764E-01 -3.3439E-01  6.6141E-01  8.9594E-01  1.1980E+00  1.2034E-02  2.9450E-02 -9.9927E-01
             2.1249E+00
 GRADIENT:   6.8874E+00 -1.9140E+01 -2.0781E+00  1.0887E+01  2.2139E+01 -6.0770E+01 -5.8438E+01 -6.7832E-01 -2.3048E-02  1.6052E+00
            -4.8678E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1126.53034143537        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      580
 NPARAMETR:  1.0743E+00  1.4256E+00  3.4011E+00  8.0788E-01  1.7466E+00  2.5431E+00  4.0793E+00  1.8471E+00  7.2911E-01  2.5260E-01
             7.6787E+00
 PARAMETER:  1.7164E-01  4.5461E-01  1.3241E+00 -1.1334E-01  6.5770E-01  1.0334E+00  1.5059E+00  7.1360E-01 -2.1594E-01 -1.2759E+00
             2.1384E+00
 GRADIENT:   1.1065E-01  2.2990E+00  1.8872E-01  6.6993E+00  1.4243E+00 -1.7988E+00 -4.3675E+00 -1.0448E+00 -2.8356E+00  1.0170E+00
            -1.6985E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1127.33756424118        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      757
 NPARAMETR:  1.0788E+00  1.3295E+00  6.2833E+00  8.6899E-01  1.8602E+00  2.5764E+00  4.3191E+00  3.2552E+00  9.7264E-01  2.0168E-01
             7.7421E+00
 PARAMETER:  1.7587E-01  3.8477E-01  1.9379E+00 -4.0424E-02  7.2070E-01  1.0464E+00  1.5631E+00  1.2803E+00  7.2254E-02 -1.5011E+00
             2.1467E+00
 GRADIENT:   9.1551E-01  1.0331E+00  6.5672E-01 -3.4708E+00 -3.7674E+00  2.4824E+00  1.7360E+00  5.5560E-01 -5.7275E-01  7.2823E-01
             9.8621E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1127.48126862429        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      934
 NPARAMETR:  1.0730E+00  1.2154E+00  6.5253E+00  9.3713E-01  1.8467E+00  2.5567E+00  4.4676E+00  3.1242E+00  1.1049E+00  1.4347E-01
             7.6764E+00
 PARAMETER:  1.7046E-01  2.9505E-01  1.9757E+00  3.5070E-02  7.1342E-01  1.0387E+00  1.5968E+00  1.2392E+00  1.9972E-01 -1.8416E+00
             2.1382E+00
 GRADIENT:  -2.2024E-01  2.8516E-01 -2.4574E-02  2.4860E+00  6.4597E-01 -6.6478E-01 -1.5600E+00  3.4963E-02  1.8082E-01  3.7556E-01
            -7.3809E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1127.57563770281        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1110
 NPARAMETR:  1.0753E+00  1.2098E+00  5.8049E+00  9.1978E-01  1.8170E+00  2.5614E+00  4.5034E+00  2.9032E+00  1.0410E+00  9.8736E-02
             7.7208E+00
 PARAMETER:  1.7264E-01  2.9043E-01  1.8587E+00  1.6379E-02  6.9721E-01  1.0406E+00  1.6048E+00  1.1658E+00  1.4016E-01 -2.2153E+00
             2.1439E+00
 GRADIENT:   1.1032E-01 -1.1516E+00  3.2221E-02 -2.3029E+00 -9.1793E-01  3.8495E-01  1.5041E+00 -2.3071E-03  5.3636E-02  1.7907E-01
             5.1191E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1127.75856537343        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1286
 NPARAMETR:  1.0726E+00  1.2510E+00  6.0505E+00  9.1167E-01  1.8389E+00  2.5593E+00  4.4088E+00  3.0058E+00  1.0549E+00  1.4267E-02
             7.6984E+00
 PARAMETER:  1.7011E-01  3.2396E-01  1.9001E+00  7.5217E-03  7.0919E-01  1.0397E+00  1.5836E+00  1.2005E+00  1.5346E-01 -4.1498E+00
             2.1410E+00
 GRADIENT:  -5.1854E-01  2.2243E-01  2.2705E-01  4.7206E-01  3.0859E-01 -1.1863E-01 -7.6527E-01 -2.3442E-01 -1.4099E-01  3.6938E-03
            -1.7306E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1127.85933825697        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:     1423
 NPARAMETR:  1.0728E+00  1.2598E+00  5.9732E+00  9.0398E-01  1.8379E+00  2.5918E+00  4.2916E+00  3.0364E+00  1.0704E+00  1.0000E-02
             7.6971E+00
 PARAMETER:  1.7031E-01  3.3098E-01  1.8873E+00 -9.4768E-04  7.0862E-01  1.0523E+00  1.5566E+00  1.2107E+00  1.6801E-01 -5.1528E+00
             2.1408E+00
 GRADIENT:  -4.0616E-01 -1.0212E+00  1.6281E-01  1.7909E+00 -4.1190E-01  4.8152E+00 -5.5302E+00  5.6672E-02 -1.7214E-01  0.0000E+00
            -1.3114E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1127.89875059259        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1588             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0745E+00  1.2789E+00  5.8936E+00  8.9582E-01  1.8406E+00  2.6157E+00  4.3024E+00  3.0347E+00  1.0611E+00  1.0000E-02
             7.6980E+00
 PARAMETER:  1.7190E-01  3.4598E-01  1.8739E+00 -1.0011E-02  7.1010E-01  1.0615E+00  1.5592E+00  1.2101E+00  1.5929E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.6360E+01  8.2053E+00  6.8564E-01  3.3128E+00  4.7135E+00  9.1085E+01  7.6016E+01  6.1335E-01  3.7684E-01  0.0000E+00
             3.8022E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1127.90147043839        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1773
 NPARAMETR:  1.0744E+00  1.2889E+00  5.8347E+00  8.9335E-01  1.8414E+00  2.6157E+00  4.2870E+00  3.0304E+00  1.0524E+00  1.0000E-02
             7.6973E+00
 PARAMETER:  1.7174E-01  3.5376E-01  1.8638E+00 -1.2781E-02  7.1055E-01  1.0615E+00  1.5556E+00  1.2087E+00  1.5103E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   7.4673E-02  8.8939E-02 -1.3730E-01  1.7111E+00  6.3625E-01  8.2279E+00 -3.5667E+00  2.5909E-01 -2.1878E-01  0.0000E+00
            -1.3224E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1127.90685705983        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1959
 NPARAMETR:  1.0744E+00  1.2928E+00  5.8155E+00  8.9005E-01  1.8405E+00  2.6157E+00  4.2795E+00  3.0189E+00  1.0517E+00  1.0000E-02
             7.6978E+00
 PARAMETER:  1.7178E-01  3.5684E-01  1.8605E+00 -1.6483E-02  7.1005E-01  1.0615E+00  1.5538E+00  1.2049E+00  1.5037E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0031E-01  3.2304E-02  6.0980E-02  1.0358E+00  1.1493E-01  8.2350E+00 -3.4304E+00  1.0943E-01 -1.5367E-01  0.0000E+00
            -8.9529E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1127.90873440968        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2145
 NPARAMETR:  1.0744E+00  1.2971E+00  5.7825E+00  8.8747E-01  1.8401E+00  2.6097E+00  4.2771E+00  3.0120E+00  1.0503E+00  1.0000E-02
             7.6977E+00
 PARAMETER:  1.7173E-01  3.6016E-01  1.8548E+00 -1.9377E-02  7.0984E-01  1.0592E+00  1.5533E+00  1.2026E+00  1.4910E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   8.4481E-02  8.6223E-02  7.1581E-02  6.5570E-01  1.2904E-01  7.3623E+00 -3.0491E+00  9.7948E-02 -9.4564E-02  0.0000E+00
            -8.3369E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1127.91252284132        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2334             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.2994E+00  5.7461E+00  8.8403E-01  1.8395E+00  2.6156E+00  4.2666E+00  3.0014E+00  1.0550E+00  1.0000E-02
             7.6989E+00
 PARAMETER:  1.7179E-01  3.6193E-01  1.8485E+00 -2.3267E-02  7.0949E-01  1.0615E+00  1.5508E+00  1.1991E+00  1.5351E-01 -5.1447E+00
             2.1411E+00
 GRADIENT:   1.6330E+01  8.8218E+00  8.0548E-01  2.3178E+00  4.5691E+00  9.1123E+01  7.5224E+01  4.6066E-01  4.6343E-01  0.0000E+00
             3.8694E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1127.91399303767        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2521
 NPARAMETR:  1.0744E+00  1.3017E+00  5.7173E+00  8.8252E-01  1.8390E+00  2.6156E+00  4.2612E+00  2.9952E+00  1.0535E+00  1.0000E-02
             7.6985E+00
 PARAMETER:  1.7177E-01  3.6370E-01  1.8435E+00 -2.4973E-02  7.0921E-01  1.0615E+00  1.5495E+00  1.1970E+00  1.5210E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.1463E-01 -2.3959E-01  1.2583E-01 -2.1463E-01  9.7005E-02  8.2187E+00 -3.0073E+00  3.1962E-02  8.8780E-02  0.0000E+00
             1.1000E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1127.91583722483        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     2712             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3054E+00  5.6797E+00  8.8173E-01  1.8382E+00  2.6156E+00  4.2539E+00  2.9874E+00  1.0485E+00  1.0000E-02
             7.6978E+00
 PARAMETER:  1.7176E-01  3.6649E-01  1.8369E+00 -2.5866E-02  7.0880E-01  1.0615E+00  1.5478E+00  1.1944E+00  1.4734E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.6317E+01  9.1225E+00  7.5941E-01  2.7600E+00  4.6070E+00  9.1167E+01  7.4532E+01  4.9223E-01  3.1585E-01  0.0000E+00
             3.8115E+01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1127.91674006254        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2900
 NPARAMETR:  1.0744E+00  1.3079E+00  5.6466E+00  8.8092E-01  1.8374E+00  2.6156E+00  4.2486E+00  2.9790E+00  1.0452E+00  1.0000E-02
             7.6974E+00
 PARAMETER:  1.7176E-01  3.6839E-01  1.8310E+00 -2.6792E-02  7.0833E-01  1.0615E+00  1.5466E+00  1.1916E+00  1.4424E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0621E-01  2.2248E-02  6.9816E-02  5.5308E-01  1.1218E-01  8.2402E+00 -3.4533E+00  7.9188E-02 -1.0398E-01  0.0000E+00
            -7.2284E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1127.91809715845        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     3091             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3091E+00  5.6176E+00  8.7880E-01  1.8365E+00  2.6155E+00  4.2466E+00  2.9694E+00  1.0488E+00  1.0000E-02
             7.6982E+00
 PARAMETER:  1.7176E-01  3.6932E-01  1.8259E+00 -2.9201E-02  7.0788E-01  1.0615E+00  1.5461E+00  1.1884E+00  1.4764E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.6323E+01  9.1458E+00  7.6612E-01  2.3342E+00  4.6029E+00  9.1175E+01  7.4543E+01  4.5668E-01  4.0311E-01  0.0000E+00
             3.8495E+01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1127.91881551003        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     3277
 NPARAMETR:  1.0744E+00  1.3104E+00  5.5961E+00  8.7816E-01  1.8359E+00  2.6155E+00  4.2440E+00  2.9633E+00  1.0478E+00  1.0000E-02
             7.6981E+00
 PARAMETER:  1.7175E-01  3.7033E-01  1.8221E+00 -2.9928E-02  7.0754E-01  1.0615E+00  1.5455E+00  1.1863E+00  1.4674E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.1033E-01 -1.2693E-01  8.8823E-02 -8.2333E-02  1.1890E-01  8.2284E+00 -3.1504E+00  3.9184E-02  4.4335E-02  0.0000E+00
            -7.8859E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1127.91977631984        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     3468             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3125E+00  5.5621E+00  8.7772E-01  1.8349E+00  2.6155E+00  4.2395E+00  2.9541E+00  1.0445E+00  1.0000E-02
             7.6977E+00
 PARAMETER:  1.7175E-01  3.7195E-01  1.8160E+00 -3.0427E-02  7.0697E-01  1.0614E+00  1.5444E+00  1.1832E+00  1.4355E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.6318E+01  9.3587E+00  7.2976E-01  2.7116E+00  4.6102E+00  9.1204E+01  7.4103E+01  4.7225E-01  3.0125E-01  0.0000E+00
             3.8102E+01

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1127.92029485651        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3653
 NPARAMETR:  1.0744E+00  1.3132E+00  5.5444E+00  8.7709E-01  1.8342E+00  2.6154E+00  4.2381E+00  2.9483E+00  1.0441E+00  1.0000E-02
             7.6978E+00
 PARAMETER:  1.7175E-01  3.7248E-01  1.8128E+00 -3.1147E-02  7.0663E-01  1.0614E+00  1.5441E+00  1.1812E+00  1.4320E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0786E-01 -3.6304E-02  6.2761E-02  1.8018E-01  1.1255E-01  8.2364E+00 -3.3044E+00  5.1333E-02 -2.2889E-02  0.0000E+00
            -3.5719E-01

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1127.92084210962        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     3845             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3140E+00  5.5126E+00  8.7558E-01  1.8331E+00  2.6154E+00  4.2368E+00  2.9368E+00  1.0465E+00  1.0000E-02
             7.6984E+00
 PARAMETER:  1.7175E-01  3.7309E-01  1.8070E+00 -3.2866E-02  7.0600E-01  1.0614E+00  1.5438E+00  1.1773E+00  1.4547E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.6324E+01  9.2714E+00  7.4548E-01  2.1582E+00  4.5917E+00  9.1201E+01  7.4359E+01  4.2662E-01  4.2884E-01  0.0000E+00
             3.8669E+01

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1127.92135059811        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     4027
 NPARAMETR:  1.0744E+00  1.3148E+00  5.4971E+00  8.7543E-01  1.8325E+00  2.6154E+00  4.2352E+00  2.9321E+00  1.0451E+00  1.0000E-02
             7.6983E+00
 PARAMETER:  1.7175E-01  3.7366E-01  1.8042E+00 -3.3038E-02  7.0570E-01  1.0614E+00  1.5434E+00  1.1757E+00  1.4413E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.0981E-01 -1.1550E-01  6.5836E-02 -1.4601E-01  1.0908E-01  8.2298E+00 -3.1375E+00  2.6330E-02  5.6289E-02  0.0000E+00
             7.4829E-03

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1127.92190338498        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     4218             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3165E+00  5.4719E+00  8.7531E-01  1.8317E+00  2.6154E+00  4.2314E+00  2.9255E+00  1.0410E+00  1.0000E-02
             7.6975E+00
 PARAMETER:  1.7174E-01  3.7495E-01  1.7996E+00 -3.3174E-02  7.0523E-01  1.0614E+00  1.5425E+00  1.1735E+00  1.4020E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.6319E+01  9.4904E+00  7.1234E-01  2.7032E+00  4.5618E+00  9.1236E+01  7.3876E+01  4.5191E-01  2.7553E-01  0.0000E+00
             3.8047E+01

0ITERATION NO.:  135    OBJECTIVE VALUE:  -1127.92223937782        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4405
 NPARAMETR:  1.0744E+00  1.3175E+00  5.4492E+00  8.7496E-01  1.8309E+00  2.6153E+00  4.2291E+00  2.9184E+00  1.0402E+00  1.0000E-02
             7.6973E+00
 PARAMETER:  1.7174E-01  3.7576E-01  1.7955E+00 -3.3582E-02  7.0478E-01  1.0614E+00  1.5420E+00  1.1710E+00  1.3941E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0657E-01  4.4798E-02  2.7919E-02  3.7367E-01  9.0734E-02  8.2444E+00 -3.4266E+00  5.3976E-02 -6.5109E-02  0.0000E+00
            -5.8995E-01

0ITERATION NO.:  140    OBJECTIVE VALUE:  -1127.92270241709        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     4596             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3177E+00  5.4343E+00  8.7391E-01  1.8303E+00  2.6153E+00  4.2291E+00  2.9125E+00  1.0420E+00  1.0000E-02
             7.6979E+00
 PARAMETER:  1.7174E-01  3.7585E-01  1.7927E+00 -3.4779E-02  7.0446E-01  1.0614E+00  1.5420E+00  1.1690E+00  1.4112E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.6322E+01  9.4538E+00  7.1692E-01  2.3958E+00  4.5518E+00  9.1237E+01  7.4001E+01  4.2496E-01  3.4811E-01  0.0000E+00
             3.8369E+01

0ITERATION NO.:  145    OBJECTIVE VALUE:  -1127.92291297325        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     4780
 NPARAMETR:  1.0744E+00  1.3181E+00  5.4188E+00  8.7345E-01  1.8296E+00  2.6152E+00  4.2283E+00  2.9066E+00  1.0422E+00  1.0000E-02
             7.6981E+00
 PARAMETER:  1.7175E-01  3.7615E-01  1.7899E+00 -3.5301E-02  7.0411E-01  1.0614E+00  1.5418E+00  1.1670E+00  1.4130E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.0899E-01 -8.9998E-02  5.1831E-02 -1.2430E-01  6.0268E-02  8.2349E+00 -3.1740E+00  1.6850E-02  4.2041E-02  0.0000E+00
            -4.5088E-02

0ITERATION NO.:  150    OBJECTIVE VALUE:  -1127.92323266261        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     4971             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3191E+00  5.4007E+00  8.7341E-01  1.8290E+00  2.6152E+00  4.2259E+00  2.9018E+00  1.0396E+00  1.0000E-02
             7.6976E+00
 PARAMETER:  1.7174E-01  3.7698E-01  1.7865E+00 -3.5347E-02  7.0377E-01  1.0614E+00  1.5412E+00  1.1653E+00  1.3884E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.6321E+01  9.5510E+00  6.9948E-01  2.5860E+00  4.5360E+00  9.1256E+01  7.3801E+01  4.2897E-01  2.9515E-01  0.0000E+00
             3.8152E+01

0ITERATION NO.:  155    OBJECTIVE VALUE:  -1127.92334406730        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     5156
 NPARAMETR:  1.0744E+00  1.3196E+00  5.3884E+00  8.7325E-01  1.8285E+00  2.6152E+00  4.2248E+00  2.8978E+00  1.0383E+00  1.0000E-02
             7.6974E+00
 PARAMETER:  1.7174E-01  3.7734E-01  1.7842E+00 -3.5536E-02  7.0349E-01  1.0613E+00  1.5410E+00  1.1639E+00  1.3755E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0869E-01  1.7528E-02  2.7417E-02  2.4413E-01  3.7358E-02  8.2448E+00 -3.3780E+00  3.6986E-02 -5.2378E-02  0.0000E+00
            -4.9494E-01

0ITERATION NO.:  160    OBJECTIVE VALUE:  -1127.92356590571        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     5347             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3196E+00  5.3742E+00  8.7245E-01  1.8279E+00  2.6152E+00  4.2250E+00  2.8918E+00  1.0408E+00  1.0000E-02
             7.6981E+00
 PARAMETER:  1.7174E-01  3.7736E-01  1.7816E+00 -3.6453E-02  7.0317E-01  1.0613E+00  1.5410E+00  1.1619E+00  1.3996E-01 -5.1447E+00
             2.1410E+00
 GRADIENT:   1.6323E+01  9.4967E+00  7.0685E-01  2.3052E+00  4.5251E+00  9.1252E+01  7.3953E+01  4.0349E-01  3.6314E-01  0.0000E+00
             3.8479E+01

0ITERATION NO.:  165    OBJECTIVE VALUE:  -1127.92371584628        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     5531
 NPARAMETR:  1.0744E+00  1.3201E+00  5.3659E+00  8.7231E-01  1.8276E+00  2.6152E+00  4.2241E+00  2.8894E+00  1.0399E+00  1.0000E-02
             7.6979E+00
 PARAMETER:  1.7174E-01  3.7768E-01  1.7801E+00 -3.6606E-02  7.0301E-01  1.0613E+00  1.5408E+00  1.1611E+00  1.3911E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0958E-01 -6.2670E-02  3.1677E-02 -4.9609E-02  4.5697E-02  8.2381E+00 -3.2181E+00  1.8832E-02  2.1430E-02  0.0000E+00
            -1.6023E-01

0ITERATION NO.:  170    OBJECTIVE VALUE:  -1127.92384710888        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     5720             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0744E+00  1.3209E+00  5.3504E+00  8.7233E-01  1.8270E+00  2.6152E+00  4.2221E+00  2.8848E+00  1.0373E+00  1.0000E-02
             7.6974E+00
 PARAMETER:  1.7174E-01  3.7833E-01  1.7772E+00 -3.6590E-02  7.0267E-01  1.0613E+00  1.5403E+00  1.1595E+00  1.3665E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.6324E+01  9.6198E+00  6.8886E-01  2.6287E+00  4.4958E+00  9.1274E+01  7.3676E+01  4.1819E-01  2.6886E-01  0.0000E+00
             3.8078E+01

0ITERATION NO.:  175    OBJECTIVE VALUE:  -1127.92398149993        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     5907
 NPARAMETR:  1.0744E+00  1.3213E+00  5.3398E+00  8.7210E-01  1.8266E+00  2.6151E+00  4.2212E+00  2.8812E+00  1.0377E+00  1.0000E-02
             7.6974E+00
 PARAMETER:  1.7174E-01  3.7865E-01  1.7752E+00 -3.6854E-02  7.0244E-01  1.0613E+00  1.5401E+00  1.1582E+00  1.3705E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   1.0781E-01  1.3618E-02  1.4503E-02  1.9325E-01  2.9635E-02  8.2451E+00 -3.3514E+00  2.8274E-02 -3.0751E-02  0.0000E+00
            -4.3220E-01

0ITERATION NO.:  180    OBJECTIVE VALUE:  -1127.92407704415        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     6084
 NPARAMETR:  1.0744E+00  1.3212E+00  5.3299E+00  8.7144E-01  1.8261E+00  2.6151E+00  4.2218E+00  2.8767E+00  1.0392E+00  1.0000E-02
             7.6980E+00
 PARAMETER:  1.7174E-01  3.7872E-01  1.7739E+00 -3.7158E-02  7.0230E-01  1.0613E+00  1.5401E+00  1.1574E+00  1.3704E-01 -5.1447E+00
             2.1409E+00
 GRADIENT:   8.9434E-06  1.8057E-02  1.9988E-02  1.2826E-01  5.6131E-02  2.8902E-03 -4.0108E-02  2.1491E-02 -1.2945E-02  0.0000E+00
            -1.2183E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     6084
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.7384E-03  1.4989E-02 -2.3395E-02 -4.3632E-02 -6.2229E-05
 SE:             2.9260E-02  2.6347E-02  9.6821E-03  1.1859E-02  1.4515E-04
 N:                     100         100         100         100         100

 P VAL.:         7.9142E-01  5.6943E-01  1.5678E-02  2.3396E-04  6.6812E-01

 ETASHRINKSD(%)  1.9745E+00  1.1735E+01  6.7564E+01  6.0271E+01  9.9514E+01
 ETASHRINKVR(%)  3.9100E+00  2.2093E+01  8.9479E+01  8.4216E+01  9.9998E+01
 EBVSHRINKSD(%)  1.6828E+00  7.7467E+00  7.1862E+01  6.5237E+01  9.9423E+01
 EBVSHRINKVR(%)  3.3373E+00  1.4893E+01  9.2083E+01  8.7916E+01  9.9997E+01
 RELATIVEINF(%)  9.6566E+01  3.7023E+01  2.3555E+00  4.9111E+00  1.0988E-03
 EPSSHRINKSD(%)  8.2015E+00
 EPSSHRINKVR(%)  1.5730E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1127.9240770441545     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       526.16528272425626     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:   213.71
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1127.924       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  1.32E+00  5.33E+00  8.72E-01  1.83E+00  2.62E+00  4.22E+00  2.88E+00  1.04E+00  1.00E-02  7.70E+00
 


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
 #CPUT: Total CPU Time in Seconds,      213.705
Stop Time:
Fri Oct  1 06:42:11 CDT 2021
