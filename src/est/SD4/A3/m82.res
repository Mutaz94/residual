Sat Oct  2 01:18:32 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat82.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -208.598504172101        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3301E+02  9.1905E+01  1.9302E+01  1.1825E+02  3.2722E+02  7.1949E+01 -5.8267E+01 -1.5363E+01 -1.2045E+02 -2.5699E+02
            -2.4358E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1247.11550397667        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.8851E-01  9.7915E-01  9.8363E-01  1.0562E+00  9.3753E-01  7.9070E-01  9.4924E-01  9.7259E-01  1.0113E+00  1.0015E+00
             3.0802E+00
 PARAMETER:  8.8441E-02  7.8933E-02  8.3498E-02  1.5463E-01  3.5497E-02 -1.3484E-01  4.7905E-02  7.2207E-02  1.1128E-01  1.0151E-01
             1.2250E+00
 GRADIENT:  -5.5993E+01  3.0742E+00 -3.5084E+01  4.8945E+01  8.5641E+01 -2.1449E+01  3.1409E-01  3.1327E+00 -1.2036E+01 -1.3427E+01
            -1.4328E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1270.81087117638        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0160E+00  8.8103E-01  2.5414E+00  1.1506E+00  1.1728E+00  7.8647E-01  3.9263E-01  4.4681E-01  9.8096E-01  4.9239E-01
             4.1604E+00
 PARAMETER:  1.1592E-01 -2.6662E-02  1.0327E+00  2.4029E-01  2.5935E-01 -1.4019E-01 -8.3488E-01 -7.0562E-01  8.0771E-02 -6.0848E-01
             1.5256E+00
 GRADIENT:  -2.1014E+00  5.4924E+00  4.6298E-01  2.7947E+01  1.2855E+01 -4.8551E+00  2.7869E-01  9.5801E-02  1.0865E+01  1.3668E+00
             3.3931E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1273.42658312252        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0083E+00  1.0111E+00  1.1031E+00  9.8634E-01  9.0940E-01  8.0899E-01  5.3576E-01  1.4729E-01  1.0630E+00  4.5761E-01
             3.8814E+00
 PARAMETER:  1.0831E-01  1.1100E-01  1.9812E-01  8.6241E-02  5.0292E-03 -1.1196E-01 -5.2408E-01 -1.8154E+00  1.6108E-01 -6.8173E-01
             1.4562E+00
 GRADIENT:  -1.7732E+00 -4.1389E+00  3.5318E+00 -1.5175E+01 -3.3076E+00  1.2348E+00 -5.6270E-01  7.3489E-02 -2.6575E+00  8.1284E-02
            -1.0389E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1274.38124096824        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  1.0114E+00  9.2801E-01  9.8227E-01  1.0512E+00  8.4251E-01  8.0652E-01  6.9316E-01  7.2844E-02  1.0125E+00  3.8512E-01
             3.9445E+00
 PARAMETER:  1.1133E-01  2.5286E-02  8.2113E-02  1.4998E-01 -7.1369E-02 -1.1503E-01 -2.6649E-01 -2.5194E+00  1.1245E-01 -8.5419E-01
             1.4723E+00
 GRADIENT:  -2.8678E+00  2.6656E+00  1.0015E+00  2.4568E+00 -1.7871E+00 -4.9706E-01 -1.3221E-02  2.3414E-02 -2.0322E-01  1.1141E-01
             4.4514E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1274.38172676512        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0115E+00  9.2135E-01  9.7000E-01  1.0541E+00  8.3585E-01  8.0733E-01  6.9863E-01  6.9371E-02  1.0126E+00  3.8465E-01
             3.9361E+00
 PARAMETER:  1.1145E-01  1.8088E-02  6.9540E-02  1.5272E-01 -7.9304E-02 -1.1402E-01 -2.5863E-01 -2.5683E+00  1.1252E-01 -8.5543E-01
             1.4702E+00
 GRADIENT:  -2.1298E+00  2.0165E+00  6.0872E-01  2.0300E+00 -1.0338E+00 -3.4840E-01 -9.5265E-03  2.1708E-02 -1.1932E-01  7.7277E-02
             3.2706E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1275.09057429630        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      550
 NPARAMETR:  1.0255E+00  6.6692E-01  9.4310E-01  1.2171E+00  7.3713E-01  8.1949E-01  9.4213E-01  1.8526E-02  8.9488E-01  3.2917E-01
             3.9751E+00
 PARAMETER:  1.2521E-01 -3.0509E-01  4.1419E-02  2.9643E-01 -2.0499E-01 -9.9079E-02  4.0391E-02 -3.8886E+00 -1.1063E-02 -1.0112E+00
             1.4800E+00
 GRADIENT:   5.9777E+00  3.5367E+00  2.8309E+00  2.0076E+00 -5.9258E+00  1.2916E+00 -5.0613E-02  1.6603E-03 -3.0549E-01 -3.1123E-01
            -1.5133E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1275.56772932667        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      727
 NPARAMETR:  1.0238E+00  4.3181E-01  8.8363E-01  1.3424E+00  6.5196E-01  8.2327E-01  1.2414E+00  1.0000E-02  8.3722E-01  3.8304E-01
             3.9260E+00
 PARAMETER:  1.2349E-01 -7.3978E-01 -2.3715E-02  3.9447E-01 -3.2777E-01 -9.4477E-02  3.1627E-01 -6.0928E+00 -7.7672E-02 -8.5962E-01
             1.4676E+00
 GRADIENT:   8.6561E+00 -1.2971E+00 -3.8680E+00 -4.3512E+00  8.1489E+00  1.5779E+00 -1.9546E-02  0.0000E+00  3.9863E-01 -5.0291E-01
            -3.9813E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1278.25076274717        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      905
 NPARAMETR:  1.0142E+00  1.7281E-01  5.8453E-01  1.4372E+00  4.4626E-01  8.2724E-01  1.8975E+00  1.0000E-02  8.4787E-01  7.4716E-01
             3.6974E+00
 PARAMETER:  1.1413E-01 -1.6556E+00 -4.3695E-01  4.6271E-01 -7.0684E-01 -8.9661E-02  7.4054E-01 -1.1449E+01 -6.5029E-02 -1.9148E-01
             1.4076E+00
 GRADIENT:  -2.7517E+01  1.4614E+00 -2.4091E+01  3.7541E+01  3.3301E+01 -4.9897E+00 -1.4393E-01  0.0000E+00  6.7229E-01  2.3441E+00
             1.7702E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1285.13898798350        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1082
 NPARAMETR:  1.0349E+00  1.2536E-01  3.1436E-01  1.2481E+00  2.7469E-01  8.7453E-01  2.8082E+00  1.0000E-02  9.8884E-01  7.2034E-01
             3.3231E+00
 PARAMETER:  1.3429E-01 -1.9766E+00 -1.0572E+00  3.2160E-01 -1.1921E+00 -3.4067E-02  1.1326E+00 -1.3886E+01  8.8776E-02 -2.2804E-01
             1.3009E+00
 GRADIENT:   2.3800E+01  8.8801E-01 -3.7193E-01  2.3299E+00 -2.5808E+00  5.4732E+00  2.6350E+00  0.0000E+00 -3.9222E+00 -4.8731E+00
             3.3561E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1285.91461234426        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1257
 NPARAMETR:  1.0242E+00  1.2561E-01  3.1905E-01  1.2487E+00  2.7758E-01  8.5920E-01  2.6575E+00  1.0000E-02  1.0118E+00  7.6651E-01
             3.2622E+00
 PARAMETER:  1.2386E-01 -1.9746E+00 -1.0424E+00  3.2208E-01 -1.1817E+00 -5.1757E-02  1.0774E+00 -1.3700E+01  1.1176E-01 -1.6591E-01
             1.2824E+00
 GRADIENT:  -9.3967E-01  5.2564E-01  2.4330E-01  6.3697E-01 -1.0301E+00  2.9946E-02  5.4605E-02  0.0000E+00  1.1954E-01  4.0037E-01
             1.5062E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1285.93529959902        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1434            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0240E+00  1.1761E-01  3.2024E-01  1.2510E+00  2.7823E-01  8.5903E-01  2.7365E+00  1.0000E-02  1.0101E+00  7.6593E-01
             3.2549E+00
 PARAMETER:  1.2372E-01 -2.0404E+00 -1.0387E+00  3.2392E-01 -1.1793E+00 -5.1946E-02  1.1067E+00 -1.3716E+01  1.1001E-01 -1.6666E-01
             1.2802E+00
 GRADIENT:   4.0556E+01  1.4502E+00  1.0647E+01  3.3855E+01  5.4025E+01  2.2989E+00  1.2006E-01  0.0000E+00  1.5195E+00  4.3996E-01
             1.0224E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1285.95228580277        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1618
 NPARAMETR:  1.0235E+00  1.1194E-01  3.2051E-01  1.2534E+00  2.7788E-01  8.5880E-01  2.8484E+00  1.0000E-02  1.0081E+00  7.6669E-01
             3.2561E+00
 PARAMETER:  1.2324E-01 -2.0898E+00 -1.0378E+00  3.2590E-01 -1.1806E+00 -5.2214E-02  1.1468E+00 -1.3716E+01  1.0804E-01 -1.6567E-01
             1.2805E+00
 GRADIENT:   6.7365E-01  7.6111E-02 -1.9554E+00 -1.2657E+00  3.0886E+00  3.8465E-02 -1.2945E-01  0.0000E+00  1.1413E-01  1.1674E-01
             5.4089E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1286.02639408251        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1794
 NPARAMETR:  1.0198E+00  6.1974E-02  3.2444E-01  1.2746E+00  2.7562E-01  8.5694E-01  4.2238E+00  1.0000E-02  9.9232E-01  7.7100E-01
             3.2650E+00
 PARAMETER:  1.1961E-01 -2.6810E+00 -1.0257E+00  3.4260E-01 -1.1887E+00 -5.4383E-02  1.5407E+00 -1.3716E+01  9.2293E-02 -1.6006E-01
             1.2832E+00
 GRADIENT:  -2.2805E-01  5.1768E-02 -3.9155E-01  6.7407E-02 -8.6803E-01 -2.3711E-02  1.6065E-02  0.0000E+00 -1.5540E-01  1.2814E-02
             3.2264E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1286.02801579158        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1969
 NPARAMETR:  1.0186E+00  4.5622E-02  3.2722E-01  1.2828E+00  2.7593E-01  8.5640E-01  4.9838E+00  1.0000E-02  9.8800E-01  7.7371E-01
             3.2670E+00
 PARAMETER:  1.1844E-01 -2.9874E+00 -1.0171E+00  3.4908E-01 -1.1876E+00 -5.5019E-02  1.7062E+00 -1.3716E+01  8.7932E-02 -1.5656E-01
             1.2839E+00
 GRADIENT:  -1.4734E-01  1.8813E-02 -5.5671E-01  3.5494E-02 -6.4084E-01 -1.3076E-02  3.2307E-02  0.0000E+00  3.2876E-02  1.8853E-02
            -1.8576E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1286.02809136786        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2144
 NPARAMETR:  1.0180E+00  3.7098E-02  3.2978E-01  1.2884E+00  2.7669E-01  8.5606E-01  5.5259E+00  1.0000E-02  9.8463E-01  7.7543E-01
             3.2686E+00
 PARAMETER:  1.1781E-01 -3.1942E+00 -1.0093E+00  3.5338E-01 -1.1848E+00 -5.5411E-02  1.8094E+00 -1.3716E+01  8.4507E-02 -1.5433E-01
             1.2843E+00
 GRADIENT:  -1.2945E-01  9.2307E-03 -4.3639E-01  5.3223E-02 -6.9489E-01 -9.1649E-03  2.0259E-02  0.0000E+00  3.2520E-03  1.0030E-02
            -3.0607E-02

0ITERATION NO.:   77    OBJECTIVE VALUE:  -1286.02809341806        NO. OF FUNC. EVALS.:  65
 CUMULATIVE NO. OF FUNC. EVALS.:     2209
 NPARAMETR:  1.0182E+00  3.6035E-02  3.3067E-01  1.2881E+00  2.7707E-01  8.5612E-01  5.5120E+00  1.0000E-02  9.8417E-01  7.7548E-01
             3.2681E+00
 PARAMETER:  1.1772E-01 -3.2261E+00 -1.0080E+00  3.5403E-01 -1.1843E+00 -5.5469E-02  1.8252E+00 -1.3716E+01  8.4005E-02 -1.5399E-01
             1.2844E+00
 GRADIENT:  -2.4159E-01 -1.4193E-03 -4.1449E-01  4.8206E-01 -4.8909E-01 -1.2620E-02  2.7207E-02  0.0000E+00 -2.3997E-03  8.8390E-03
             3.8862E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2209
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -9.9745E-04  1.0574E-03  8.4560E-05 -1.2115E-02 -6.8941E-04
 SE:             2.8406E-02  2.8221E-03  1.9736E-04  2.5974E-02  2.1272E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7199E-01  7.0789E-01  6.6832E-01  6.4091E-01  9.7415E-01

 ETASHRINKSD(%)  4.8371E+00  9.0546E+01  9.9339E+01  1.2985E+01  2.8736E+01
 ETASHRINKVR(%)  9.4401E+00  9.9106E+01  9.9996E+01  2.4284E+01  4.9214E+01
 EBVSHRINKSD(%)  4.6932E+00  9.1485E+01  9.9336E+01  1.1748E+01  2.8049E+01
 EBVSHRINKVR(%)  9.1661E+00  9.9275E+01  9.9996E+01  2.2115E+01  4.8230E+01
 RELATIVEINF(%)  6.9584E+01  7.4908E-02  1.7025E-04  1.0620E+01  1.7343E+00
 EPSSHRINKSD(%)  3.0160E+01
 EPSSHRINKVR(%)  5.1224E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1286.0280934180619     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -550.87726685432369     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.24
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1286.028       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  3.59E-02  3.30E-01  1.29E+00  2.77E-01  8.56E-01  5.61E+00  1.00E-02  9.84E-01  7.76E-01  3.27E+00
 


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
 #CPUT: Total CPU Time in Seconds,       28.276
Stop Time:
Sat Oct  2 01:19:02 CDT 2021
