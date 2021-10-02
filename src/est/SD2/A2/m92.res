Fri Oct  1 10:14:47 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat92.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m92.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1476.58396119110        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3943E+02 -3.0511E+01  5.9310E+01 -9.8077E+00  9.5065E+01  5.6886E+01 -3.1038E+01 -1.3001E+02 -9.7981E+00 -5.2762E+00
            -1.0542E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1755.86272807760        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.2085E+00  1.1176E+00  1.0133E+00  1.0207E+00  1.0146E+00  1.2479E+00  1.1631E+00  1.0865E+00  1.0040E+00  8.4759E-01
             1.9838E+00
 PARAMETER:  2.8938E-01  2.1120E-01  1.1326E-01  1.2050E-01  1.1452E-01  3.2143E-01  2.5111E-01  1.8297E-01  1.0404E-01 -6.5357E-02
             7.8501E-01
 GRADIENT:   5.7948E+02  2.1872E+01  1.2311E+00  4.2412E+01  3.9770E-01  5.6645E+01 -8.0110E+00 -4.7760E+00  1.0471E+01  1.0188E+01
             4.3705E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1778.42165965881        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.1308E+00  1.2211E+00  4.1659E-01  9.0908E-01  6.5858E-01  1.0192E+00  1.2752E+00  1.6255E+00  8.3570E-01  1.5657E-01
             1.9263E+00
 PARAMETER:  2.2296E-01  2.9975E-01 -7.7565E-01  4.6821E-03 -3.1766E-01  1.1903E-01  3.4307E-01  5.8583E-01 -7.9481E-02 -1.7542E+00
             7.5562E-01
 GRADIENT:   4.9989E+02  9.6705E+01  1.8830E+01  2.3671E+01 -8.4359E+01  4.6043E+00  1.9712E+01  2.7916E+01 -6.4133E+00  1.1504E+00
             1.5599E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1801.10259418761        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.8793E-01  1.0773E+00  3.9617E-01  9.4396E-01  6.0752E-01  8.5809E-01  1.2196E+00  1.1515E+00  8.7655E-01  1.1337E-01
             1.8253E+00
 PARAMETER:  8.7861E-02  1.7444E-01 -8.2590E-01  4.2323E-02 -3.9837E-01 -5.3041E-02  2.9848E-01  2.4103E-01 -3.1764E-02 -2.0771E+00
             7.0176E-01
 GRADIENT:   1.0333E+02  3.8491E+01  1.5177E+01 -1.2657E+00 -3.4406E+01 -2.5752E+01  3.3657E-02  2.7061E+00 -3.0087E+00  6.0051E-01
            -2.2617E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1809.37014427758        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      391
 NPARAMETR:  9.7970E-01  1.5037E+00  6.3762E-01  7.6524E-01  1.0005E+00  9.4559E-01  1.0689E+00  1.8691E+00  9.3859E-01  2.1012E-01
             1.9537E+00
 PARAMETER:  7.9492E-02  5.0791E-01 -3.5002E-01 -1.6757E-01  1.0046E-01  4.4058E-02  1.6665E-01  7.2544E-01  3.6620E-02 -1.4601E+00
             7.6972E-01
 GRADIENT:  -2.5643E+01  2.0452E+01 -4.3975E-01  3.7874E+01  1.1511E+01  4.2365E+00 -2.2514E+00 -5.8000E+00 -3.2795E+00  4.2221E-01
            -1.5933E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1819.42172534586        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      578             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7068E-01  1.7940E+00  7.4241E-01  6.4208E-01  1.2028E+00  9.3901E-01  9.8509E-01  2.8104E+00  1.2700E+00  1.9395E-01
             1.9490E+00
 PARAMETER:  7.0240E-02  6.8446E-01 -1.9785E-01 -3.4304E-01  2.8464E-01  3.7075E-02  8.4977E-02  1.1333E+00  3.3898E-01 -1.5402E+00
             7.6732E-01
 GRADIENT:   5.3184E+01  2.3695E+02 -3.3083E-01  8.4113E+01  8.6577E+00  1.0581E+01  1.1335E+01 -9.3505E+00  9.2599E+00  5.1347E-02
             3.2428E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1819.83005995342        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      649
 NPARAMETR:  9.7066E-01  1.7910E+00  7.4200E-01  6.4196E-01  1.2028E+00  9.1631E-01  9.5595E-01  2.8103E+00  1.1480E+00  1.9398E-01
             1.9489E+00
 PARAMETER:  7.0225E-02  6.8276E-01 -1.9841E-01 -3.4323E-01  2.8467E-01  1.2596E-02  5.4945E-02  1.1333E+00  2.3799E-01 -1.5400E+00
             7.6729E-01
 GRADIENT:   4.9740E+01  2.4170E+02 -1.8671E-02  8.7449E+01  9.9218E+00  1.2108E+00  1.6141E-01 -1.0437E+01  1.8106E-01  3.8274E-02
             2.8983E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1819.92148321167        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      719
 NPARAMETR:  9.7066E-01  1.7781E+00  7.4342E-01  6.4158E-01  1.2027E+00  8.9707E-01  9.4383E-01  2.8121E+00  1.0760E+00  1.9393E-01
             1.9477E+00
 PARAMETER:  7.0224E-02  6.7556E-01 -1.9649E-01 -3.4383E-01  2.8460E-01 -8.6248E-03  4.2191E-02  1.1339E+00  1.7326E-01 -1.5402E+00
             7.6663E-01
 GRADIENT:   4.7527E+01  2.3133E+02 -2.5076E-01  8.5211E+01  1.2321E+01 -7.1697E+00 -5.7262E+00 -1.0890E+01 -4.0255E+00  2.5792E-02
             2.6172E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1820.03943608319        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      789
 NPARAMETR:  9.7068E-01  1.7403E+00  7.5205E-01  6.4045E-01  1.2024E+00  8.7679E-01  9.4379E-01  2.8178E+00  9.4886E-01  1.9375E-01
             1.9436E+00
 PARAMETER:  7.0237E-02  6.5407E-01 -1.8495E-01 -3.4559E-01  2.8434E-01 -3.1491E-02  4.2150E-02  1.1360E+00  4.7507E-02 -1.5412E+00
             7.6453E-01
 GRADIENT:   4.6449E+01  1.9170E+02 -5.7042E-01  7.1941E+01  1.7101E+01 -1.6268E+01 -1.2163E+01 -1.1733E+01 -8.2414E+00 -1.5416E-02
             2.0300E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1820.05150068269        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      861
 NPARAMETR:  9.7069E-01  1.7124E+00  7.5854E-01  6.3961E-01  1.2022E+00  8.7400E-01  9.6106E-01  2.8224E+00  8.6736E-01  1.9359E-01
             1.9404E+00
 PARAMETER:  7.0249E-02  6.3787E-01 -1.7636E-01 -3.4690E-01  2.8414E-01 -3.4680E-02  6.0279E-02  1.1376E+00 -4.2296E-02 -1.5420E+00
             7.6291E-01
 GRADIENT:   4.7636E+01  1.6031E+02 -6.2819E-01  5.9671E+01  1.9656E+01 -1.7298E+01 -1.2792E+01 -1.2419E+01 -8.7162E+00 -6.1482E-02
             1.6211E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1820.05850389625        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      934
 NPARAMETR:  9.7070E-01  1.6957E+00  7.6228E-01  6.3911E-01  1.2020E+00  8.7528E-01  9.7331E-01  2.8253E+00  8.3045E-01  1.9350E-01
             1.9385E+00
 PARAMETER:  7.0258E-02  6.2810E-01 -1.7144E-01 -3.4768E-01  2.8400E-01 -3.3214E-02  7.2946E-02  1.1386E+00 -8.5789E-02 -1.5425E+00
             7.6192E-01
 GRADIENT:   4.8833E+01  1.4141E+02 -6.3619E-01  5.1548E+01  2.0956E+01 -1.6484E+01 -1.2174E+01 -1.2743E+01 -8.4211E+00 -8.9856E-02
             1.4194E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1820.06763532829        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:     1009
 NPARAMETR:  9.7070E-01  1.6835E+00  7.6569E-01  6.3874E-01  1.2019E+00  8.7685E-01  9.8109E-01  2.8275E+00  8.1395E-01  1.9342E-01
             1.9371E+00
 PARAMETER:  7.0264E-02  6.2088E-01 -1.6698E-01 -3.4825E-01  2.8390E-01 -3.1421E-02  8.0913E-02  1.1394E+00 -1.0586E-01 -1.5429E+00
             7.6118E-01
 GRADIENT:   4.9965E+01  1.2745E+02 -5.8116E-01  4.5066E+01  2.1756E+01 -1.5637E+01 -1.1506E+01 -1.2879E+01 -8.0411E+00 -1.1000E-01
             1.3141E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1822.34544510501        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1167
 NPARAMETR:  9.7073E-01  1.7140E+00  7.7874E-01  6.3962E-01  1.2021E+00  9.5170E-01  9.8343E-01  2.8256E+00  1.0800E+00  1.9353E-01
             1.9399E+00
 PARAMETER:  7.0289E-02  6.3883E-01 -1.5007E-01 -3.4689E-01  2.8404E-01  5.0494E-02  8.3294E-02  1.1387E+00  1.7701E-01 -1.5423E+00
             7.6261E-01
 GRADIENT:  -4.5558E+01  1.2784E+01  2.1557E-01  2.7392E+01  1.0987E+01  5.7349E+00  2.3787E+00 -2.0880E+01 -8.9897E-01 -6.7431E-02
             1.8062E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1822.55896694293        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1344
 NPARAMETR:  9.7074E-01  1.6995E+00  7.8278E-01  6.3896E-01  1.2019E+00  9.3988E-01  9.6621E-01  2.8326E+00  1.1356E+00  1.9349E-01
             1.9371E+00
 PARAMETER:  7.0308E-02  6.3032E-01 -1.4490E-01 -3.4791E-01  2.8389E-01  3.7998E-02  6.5621E-02  1.1412E+00  2.2720E-01 -1.5425E+00
             7.6120E-01
 GRADIENT:  -4.6111E+01 -4.5203E+00 -5.1938E-01  2.1054E+01  1.3266E+01  1.1873E+00  9.2018E-01 -2.0052E+01  1.2797E+00 -6.1817E-02
             1.8513E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1824.66356408371        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1507
 NPARAMETR:  9.8531E-01  1.7249E+00  7.7968E-01  5.9661E-01  1.1950E+00  9.3464E-01  9.3484E-01  2.9629E+00  1.1409E+00  1.9887E-01
             1.9103E+00
 PARAMETER:  8.5200E-02  6.4517E-01 -1.4887E-01 -4.1649E-01  2.7814E-01  3.2402E-02  3.2615E-02  1.1862E+00  2.3179E-01 -1.5151E+00
             7.4726E-01
 GRADIENT:   9.8602E+01  1.3323E+02  8.0705E+00  1.9456E+01 -9.7719E+00  1.0659E+01 -2.3304E+00 -6.3692E+00 -1.3879E-02 -9.6382E-02
             1.4027E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1825.10547362214        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:     1662
 NPARAMETR:  9.9000E-01  1.7250E+00  6.8675E-01  5.9434E-01  1.1830E+00  9.3534E-01  9.5408E-01  2.9628E+00  1.1220E+00  2.1693E-01
             1.9104E+00
 PARAMETER:  8.9946E-02  6.4522E-01 -2.7579E-01 -4.2031E-01  2.6803E-01  3.3150E-02  5.2989E-02  1.1861E+00  2.1514E-01 -1.4282E+00
             7.4731E-01
 GRADIENT:   2.5633E+00 -3.7262E+01 -9.0007E-01  1.6673E+00  5.4792E+00  2.9132E-01 -1.8491E-01 -1.1262E+01 -1.4900E-01 -1.0148E-01
             9.1737E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1825.18914890484        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1840
 NPARAMETR:  9.8839E-01  1.7273E+00  6.8610E-01  5.9161E-01  1.1770E+00  9.3507E-01  9.5334E-01  2.9636E+00  1.1255E+00  3.6789E-01
             1.9104E+00
 PARAMETER:  8.8327E-02  6.4659E-01 -2.7674E-01 -4.2491E-01  2.6293E-01  3.2870E-02  5.2213E-02  1.1864E+00  2.1819E-01 -8.9998E-01
             7.4731E-01
 GRADIENT:  -1.6243E+00 -3.6651E+01  5.6316E-01 -5.0232E-01 -5.2148E+00  2.0405E-01 -1.0703E-01 -1.0470E+01  2.0316E-01  1.3618E-01
             1.8095E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1825.67526477236        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2020
 NPARAMETR:  9.8651E-01  1.7653E+00  6.7775E-01  5.8201E-01  1.1956E+00  9.1585E-01  9.5294E-01  2.9786E+00  1.1029E+00  5.4676E-01
             1.9083E+00
 PARAMETER:  8.6420E-02  6.6834E-01 -2.8897E-01 -4.4126E-01  2.7865E-01  1.2099E-02  5.1793E-02  1.1915E+00  1.9791E-01 -5.0375E-01
             7.4622E-01
 GRADIENT:  -7.5931E+00 -1.5983E+01 -9.2307E-01  1.1378E+01 -6.4399E+00 -7.9490E+00  1.1722E-01 -1.1247E+01 -4.0127E-01  1.4259E+00
             2.6200E+01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1830.47292710752        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2198
 NPARAMETR:  9.9201E-01  2.1224E+00  3.8615E-01  3.5302E-01  1.3097E+00  9.4273E-01  8.4772E-01  3.1094E+00  1.5535E+00  7.1405E-01
             1.8903E+00
 PARAMETER:  9.1983E-02  8.5253E-01 -8.5154E-01 -9.4122E-01  3.6983E-01  4.1026E-02 -6.5199E-02  1.2344E+00  5.4050E-01 -2.3680E-01
             7.3676E-01
 GRADIENT:   4.6271E+00  4.0942E+00  5.5254E-01  2.2745E+00  2.5147E-02  2.6329E+00 -8.0878E-01 -9.8159E+00 -5.4961E-01  5.4691E-01
             1.8337E+01

0ITERATION NO.:   93    OBJECTIVE VALUE:  -1830.65290284679        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     2299
 NPARAMETR:  9.9112E-01  2.1756E+00  3.3176E-01  3.1826E-01  1.3167E+00  9.3893E-01  8.3328E-01  3.1260E+00  1.6957E+00  7.1659E-01
             1.8885E+00
 PARAMETER:  9.1153E-02  8.7763E-01 -1.0030E+00 -1.0445E+00  3.7498E-01  3.7426E-02 -8.3082E-02  1.2402E+00  6.2832E-01 -2.3094E-01
             7.3552E-01
 GRADIENT:   1.1819E+00  6.5248E+02  5.6833E+02  5.4273E+02 -1.5117E+03  1.0558E+00 -1.2011E+00  8.8661E+02  1.8019E+03  3.6083E-01
            -1.5243E+03
 NUMSIGDIG:         2.0         2.3         2.3         2.3         2.3         1.3         1.1         2.3         2.3         0.9
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2299
 NO. OF SIG. DIGITS IN FINAL EST.:  0.9

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.6542E-04 -2.4973E-02 -3.1431E-02  3.2481E-02 -3.4338E-02
 SE:             2.9486E-02  2.6787E-02  1.4662E-02  1.7802E-02  1.4474E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8470E-01  3.5119E-01  3.2052E-02  6.8064E-02  1.7677E-02

 ETASHRINKSD(%)  1.2167E+00  1.0261E+01  5.0882E+01  4.0361E+01  5.1509E+01
 ETASHRINKVR(%)  2.4186E+00  1.9470E+01  7.5874E+01  6.4432E+01  7.6486E+01
 EBVSHRINKSD(%)  1.2732E+00  1.0739E+01  5.7085E+01  4.6299E+01  5.0803E+01
 EBVSHRINKVR(%)  2.5302E+00  2.0325E+01  8.1583E+01  7.1162E+01  7.5797E+01
 RELATIVEINF(%)  9.7414E+01  2.0734E+01  7.0586E+00  5.8594E+00  9.1020E+00
 EPSSHRINKSD(%)  3.1136E+01
 EPSSHRINKVR(%)  5.2578E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1830.6529028467855     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -911.71436964211284     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    33.06
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1830.653       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.91E-01  2.18E+00  3.32E-01  3.18E-01  1.32E+00  9.39E-01  8.33E-01  3.13E+00  1.70E+00  7.18E-01  1.89E+00
 


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
 #CPUT: Total CPU Time in Seconds,       33.111
Stop Time:
Fri Oct  1 10:15:22 CDT 2021