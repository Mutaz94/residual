Fri Oct  1 11:59:39 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat88.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2113.53396078183        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1430E+02 -4.0268E+01 -5.0328E+01  2.5944E+01  1.0104E+02  4.9141E+01 -1.6161E+00 -9.0984E-01  8.8421E+00  1.0138E+01
            -1.7418E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2119.72555230629        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  1.0148E+00  1.0438E+00  1.0728E+00  1.0362E+00  9.7789E-01  9.6944E-01  1.0117E+00  1.0269E+00  9.7810E-01  8.7630E-01
             1.0630E+00
 PARAMETER:  1.1467E-01  1.4290E-01  1.7027E-01  1.3552E-01  7.7644E-02  6.8967E-02  1.1167E-01  1.2656E-01  7.7852E-02 -3.2042E-02
             1.6110E-01
 GRADIENT:   1.9161E+01  7.2612E+00 -7.6175E+00  2.2689E+01  2.4967E+01 -6.2296E+00 -4.3624E+00 -7.1694E+00 -3.6629E-01 -1.8562E-02
             2.3219E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2120.64843677483        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  1.0063E+00  9.4250E-01  1.1292E+00  1.1081E+00  9.3568E-01  9.9646E-01  1.2471E+00  1.2971E+00  8.8755E-01  7.1860E-01
             1.0242E+00
 PARAMETER:  1.0623E-01  4.0778E-02  2.2147E-01  2.0266E-01  3.3513E-02  9.6452E-02  3.2085E-01  3.6011E-01 -1.9287E-02 -2.3046E-01
             1.2387E-01
 GRADIENT:   1.5882E+00  1.9118E+01 -7.1042E+00  3.2202E+01  1.1142E+01  4.8466E+00  4.7060E-01  3.9639E+00 -2.6962E+00 -7.8029E+00
            -1.0417E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2122.33375925222        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  1.0038E+00  7.8223E-01  1.2725E+00  1.1962E+00  9.2940E-01  9.7816E-01  1.2974E+00  1.2513E+00  8.7201E-01  8.3272E-01
             1.0326E+00
 PARAMETER:  1.0375E-01 -1.4561E-01  3.4099E-01  2.7918E-01  2.6781E-02  7.7917E-02  3.6035E-01  3.2422E-01 -3.6949E-02 -8.3063E-02
             1.3207E-01
 GRADIENT:   1.9896E-01  5.7040E+00  2.9338E+00  1.5253E+00 -8.6609E+00 -1.4827E+00  3.5092E-02  2.7174E-02  4.8125E-01  9.4973E-01
             2.7890E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2122.87790206505        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.9964E-01  4.8344E-01  1.5819E+00  1.4039E+00  9.3344E-01  9.8023E-01  1.5408E+00  1.4418E+00  8.0820E-01  8.6566E-01
             1.0253E+00
 PARAMETER:  9.9644E-02 -6.2683E-01  5.5862E-01  4.3922E-01  3.1117E-02  8.0032E-02  5.3228E-01  4.6586E-01 -1.1294E-01 -4.4266E-02
             1.2499E-01
 GRADIENT:  -4.5741E-01  7.1302E+00  1.7375E+00  2.0535E+01 -4.7004E+00  8.1864E-01  2.5671E-01 -4.9588E-01 -5.9642E-01  3.2363E-01
            -2.0642E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2123.01576904848        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.9809E-01  3.5746E-01  1.7171E+00  1.4813E+00  9.3592E-01  9.7670E-01  1.5995E+00  1.5452E+00  7.8950E-01  8.7220E-01
             1.0273E+00
 PARAMETER:  9.8083E-02 -9.2874E-01  6.4062E-01  4.9293E-01  3.3775E-02  7.6420E-02  5.6969E-01  5.3517E-01 -1.3635E-01 -3.6734E-02
             1.2692E-01
 GRADIENT:  -2.8826E-01  3.0685E+00  1.0675E+00  8.9286E+00 -1.9763E+00 -3.0614E-02  2.2728E-01 -2.5786E-01  1.2654E-01 -6.4275E-02
            -4.3940E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2123.07809506986        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.9813E-01  3.4447E-01  1.7165E+00  1.4827E+00  9.3425E-01  9.7668E-01  1.4551E+00  1.5464E+00  7.9134E-01  8.7745E-01
             1.0275E+00
 PARAMETER:  9.8128E-02 -9.6574E-01  6.4029E-01  4.9389E-01  3.1988E-02  7.6401E-02  4.7504E-01  5.3590E-01 -1.3403E-01 -3.0731E-02
             1.2711E-01
 GRADIENT:   2.9514E-01  8.0459E-01  1.1402E-01 -4.1071E+00 -8.6624E-02  3.7232E-02  7.2864E-02  1.3814E-02 -4.5857E-01  5.2912E-02
             1.1019E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2123.08770405776        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1248             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9896E-01  3.4213E-01  1.7172E+00  1.4814E+00  9.3324E-01  9.7684E-01  1.2793E+00  1.5468E+00  7.9696E-01  8.8180E-01
             1.0272E+00
 PARAMETER:  9.8959E-02 -9.7255E-01  6.4069E-01  4.9301E-01  3.0902E-02  7.6566E-02  3.4631E-01  5.3619E-01 -1.2695E-01 -2.5790E-02
             1.2687E-01
 GRADIENT:   4.0562E+02  4.5395E+01  1.1107E+01  7.5164E+02  4.7890E+00  3.9309E+01  1.8751E+00  3.2240E+00  1.1269E+01  6.8703E-01
             1.3322E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2123.08886609928        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.9854E-01  3.4180E-01  1.7152E+00  1.4820E+00  9.3432E-01  9.7677E-01  1.2492E+00  1.5462E+00  7.9824E-01  8.8071E-01
             1.0272E+00
 PARAMETER:  9.8537E-02 -9.7353E-01  6.3951E-01  4.9340E-01  3.2062E-02  7.6491E-02  3.2254E-01  5.3580E-01 -1.2535E-01 -2.7032E-02
             1.2683E-01
 GRADIENT:   1.3215E+00  6.4443E-02 -5.2869E-01 -7.7602E+00  8.7057E-01  7.5446E-02  1.3512E-02  3.0688E-02 -1.6811E-01 -1.9499E-01
            -3.4855E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2123.08976354405        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     1599             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9862E-01  3.4206E-01  1.7158E+00  1.4813E+00  9.3469E-01  9.7680E-01  1.2188E+00  1.5463E+00  7.9992E-01  8.8194E-01
             1.0272E+00
 PARAMETER:  9.8621E-02 -9.7277E-01  6.3985E-01  4.9293E-01  3.2464E-02  7.6527E-02  2.9783E-01  5.3585E-01 -1.2325E-01 -2.5626E-02
             1.2679E-01
 GRADIENT:   4.0493E+02  4.5080E+01  9.9323E+00  7.5051E+02  7.4123E+00  3.9342E+01  1.4942E+00  3.1415E+00  1.1449E+01  3.3360E-01
             1.2287E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2123.09092978703        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1786             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9863E-01  3.4254E-01  1.7172E+00  1.4811E+00  9.3461E-01  9.7681E-01  1.1921E+00  1.5467E+00  8.0056E-01  8.8359E-01
             1.0272E+00
 PARAMETER:  9.8626E-02 -9.7136E-01  6.4068E-01  4.9280E-01  3.2374E-02  7.6537E-02  2.7576E-01  5.3613E-01 -1.2245E-01 -2.3763E-02
             1.2683E-01
 GRADIENT:   4.0491E+02  4.5251E+01  1.0316E+01  7.4982E+02  6.3387E+00  3.9345E+01  1.3312E+00  3.1485E+00  1.1302E+01  4.9950E-01
             1.2916E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2123.09143544022        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1973
 NPARAMETR:  9.9864E-01  3.4318E-01  1.7176E+00  1.4807E+00  9.3484E-01  9.7682E-01  1.1817E+00  1.5471E+00  8.0143E-01  8.8411E-01
             1.0272E+00
 PARAMETER:  9.8637E-02 -9.6949E-01  6.4092E-01  4.9254E-01  3.2623E-02  7.6548E-02  2.6693E-01  5.3636E-01 -1.2135E-01 -2.3177E-02
             1.2684E-01
 GRADIENT:   1.4931E+00  2.3705E-02 -1.1821E-01 -8.3172E+00 -2.3175E-01  8.7896E-02  2.6250E-02  3.1338E-02  2.2867E-01  2.5902E-02
             3.4152E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2123.09186169206        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2160
 NPARAMETR:  9.9865E-01  3.4365E-01  1.7181E+00  1.4804E+00  9.3511E-01  9.7683E-01  1.1685E+00  1.5474E+00  8.0212E-01  8.8481E-01
             1.0272E+00
 PARAMETER:  9.8646E-02 -9.6814E-01  6.4123E-01  4.9231E-01  3.2911E-02  7.6558E-02  2.5575E-01  5.3659E-01 -1.2049E-01 -2.2384E-02
             1.2685E-01
 GRADIENT:   1.4989E+00  9.8128E-03 -1.0617E-01 -8.3651E+00 -2.9514E-01  8.8558E-02  2.9516E-02  3.8043E-02  3.1861E-01  5.8842E-02
             4.9674E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2123.09247920665        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2344
 NPARAMETR:  9.9865E-01  3.4403E-01  1.7188E+00  1.4802E+00  9.3539E-01  9.7684E-01  1.1487E+00  1.5478E+00  8.0241E-01  8.8523E-01
             1.0272E+00
 PARAMETER:  9.8653E-02 -9.6702E-01  6.4163E-01  4.9217E-01  3.3210E-02  7.6565E-02  2.3865E-01  5.3683E-01 -1.2014E-01 -2.1908E-02
             1.2684E-01
 GRADIENT:   1.4952E+00  4.1673E-02 -1.0005E-01 -8.2560E+00 -3.3482E-01  8.8876E-02  1.9255E-02  2.2441E-02  1.6028E-01  3.6387E-02
             2.9584E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2123.09292700241        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2531
 NPARAMETR:  9.9866E-01  3.4453E-01  1.7193E+00  1.4799E+00  9.3571E-01  9.7685E-01  1.1383E+00  1.5482E+00  8.0297E-01  8.8564E-01
             1.0272E+00
 PARAMETER:  9.8663E-02 -9.6558E-01  6.4191E-01  4.9195E-01  3.3546E-02  7.6574E-02  2.2952E-01  5.3709E-01 -1.1944E-01 -2.1449E-02
             1.2685E-01
 GRADIENT:   1.4959E+00  2.7455E-02 -1.2443E-01 -8.2671E+00 -2.8394E-01  8.9039E-02  2.1418E-02  2.5013E-02  2.2652E-01  3.6293E-02
             3.1352E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2123.09333921662        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2715             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9866E-01  3.4484E-01  1.7200E+00  1.4796E+00  9.3602E-01  9.7685E-01  1.1208E+00  1.5487E+00  8.0361E-01  8.8624E-01
             1.0272E+00
 PARAMETER:  9.8657E-02 -9.6468E-01  6.4232E-01  4.9180E-01  3.3879E-02  7.6579E-02  2.1406E-01  5.3740E-01 -1.1864E-01 -2.0765E-02
             1.2686E-01
 GRADIENT:   4.0496E+02  4.5483E+01  1.0302E+01  7.4564E+02  6.1580E+00  3.9364E+01  9.4937E-01  3.1555E+00  1.1206E+01  5.4614E-01
             1.3117E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2123.09366670119        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2904             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9868E-01  3.4532E-01  1.7207E+00  1.4793E+00  9.3632E-01  9.7686E-01  1.1155E+00  1.5492E+00  8.0410E-01  8.8672E-01
             1.0272E+00
 PARAMETER:  9.8680E-02 -9.6329E-01  6.4270E-01  4.9158E-01  3.4207E-02  7.6591E-02  2.0933E-01  5.3771E-01 -1.1803E-01 -2.0230E-02
             1.2687E-01
 GRADIENT:   4.0501E+02  4.5518E+01  1.0312E+01  7.4482E+02  6.1424E+00  3.9366E+01  9.2920E-01  3.1630E+00  1.1253E+01  5.6980E-01
             1.3150E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2123.09427521360        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3091             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9869E-01  3.4570E-01  1.7215E+00  1.4791E+00  9.3662E-01  9.7687E-01  1.0978E+00  1.5497E+00  8.0422E-01  8.8700E-01
             1.0272E+00
 PARAMETER:  9.8686E-02 -9.6220E-01  6.4317E-01  4.9145E-01  3.4520E-02  7.6597E-02  1.9328E-01  5.3805E-01 -1.1788E-01 -1.9908E-02
             1.2687E-01
 GRADIENT:   4.0502E+02  4.5590E+01  1.0318E+01  7.4421E+02  6.1000E+00  3.9370E+01  8.2806E-01  3.1504E+00  1.1049E+01  5.3860E-01
             1.2938E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -2123.09464186281        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3278             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9870E-01  3.4620E-01  1.7220E+00  1.4788E+00  9.3694E-01  9.7688E-01  1.0918E+00  1.5502E+00  8.0477E-01  8.8738E-01
             1.0272E+00
 PARAMETER:  9.8697E-02 -9.6073E-01  6.4348E-01  4.9123E-01  3.4868E-02  7.6606E-02  1.8785E-01  5.3836E-01 -1.1720E-01 -1.9479E-02
             1.2688E-01
 GRADIENT:   4.0503E+02  4.5626E+01  1.0291E+01  7.4338E+02  6.1549E+00  3.9371E+01  8.0512E-01  3.1606E+00  1.1100E+01  5.4804E-01
             1.3030E+00

0ITERATION NO.:   95    OBJECTIVE VALUE:  -2123.09468974844        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3462
 NPARAMETR:  9.9867E-01  3.4659E-01  1.7225E+00  1.4789E+00  9.3715E-01  9.7687E-01  1.0486E+00  1.5503E+00  8.0433E-01  8.8716E-01
             1.0272E+00
 PARAMETER:  9.8667E-02 -9.5962E-01  6.4379E-01  4.9127E-01  3.5085E-02  7.6598E-02  1.4741E-01  5.3846E-01 -1.1774E-01 -1.9726E-02
             1.2685E-01
 GRADIENT:   1.3930E+00  2.3133E-01 -1.5432E-01 -7.3652E+00 -3.4607E-01  7.9260E-02 -1.8272E-02 -3.9307E-02 -4.7287E-01 -1.1082E-01
            -6.7108E-02

0ITERATION NO.:  100    OBJECTIVE VALUE:  -2123.09524186163        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3649
 NPARAMETR:  9.9871E-01  3.4668E-01  1.7234E+00  1.4785E+00  9.3745E-01  9.7689E-01  1.0471E+00  1.5509E+00  8.0465E-01  8.8756E-01
             1.0272E+00
 PARAMETER:  9.8706E-02 -9.5934E-01  6.4429E-01  4.9103E-01  3.5410E-02  7.6617E-02  1.4606E-01  5.3885E-01 -1.1734E-01 -1.9283E-02
             1.2687E-01
 GRADIENT:   1.4811E+00  1.0572E-01 -1.4864E-01 -8.0915E+00 -2.4511E-01  8.7388E-02 -1.0682E-02 -3.4431E-02 -3.5842E-01 -9.1907E-02
            -4.8852E-02

0ITERATION NO.:  105    OBJECTIVE VALUE:  -2123.09561369279        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     3831
 NPARAMETR:  9.9871E-01  3.4730E-01  1.7240E+00  1.4783E+00  9.3772E-01  9.7689E-01  1.0357E+00  1.5515E+00  8.0504E-01  8.8794E-01
             1.0272E+00
 PARAMETER:  9.8712E-02 -9.5756E-01  6.4465E-01  4.9091E-01  3.5700E-02  7.6620E-02  1.3510E-01  5.3921E-01 -1.1687E-01 -1.8856E-02
             1.2687E-01
 GRADIENT:   1.4648E+00  1.8997E-01 -1.3226E-01 -7.6098E+00 -3.6615E-01  8.3350E-02 -1.3199E-02 -2.6395E-02 -3.9010E-01 -8.5135E-02
            -5.7689E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -2123.09600626027        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4018             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9870E-01  3.4750E-01  1.7244E+00  1.4782E+00  9.3792E-01  9.7689E-01  1.0344E+00  1.5519E+00  8.0547E-01  8.8829E-01
             1.0273E+00
 PARAMETER:  9.8701E-02 -9.5699E-01  6.4490E-01  4.9080E-01  3.5913E-02  7.6620E-02  1.3378E-01  5.3946E-01 -1.1633E-01 -1.8459E-02
             1.2689E-01
 GRADIENT:   4.0503E+02  4.5882E+01  1.0269E+01  7.4149E+02  6.0851E+00  3.9381E+01  5.0618E-01  3.1273E+00  1.0537E+01  4.4666E-01
             1.2366E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -2123.09631404189        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4205             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9873E-01  3.4789E-01  1.7255E+00  1.4778E+00  9.3832E-01  9.7691E-01  1.0157E+00  1.5525E+00  8.0566E-01  8.8858E-01
             1.0273E+00
 PARAMETER:  9.8729E-02 -9.5587E-01  6.4550E-01  4.9057E-01  3.6335E-02  7.6637E-02  1.1557E-01  5.3987E-01 -1.1610E-01 -1.8125E-02
             1.2689E-01
 GRADIENT:   4.0509E+02  4.5910E+01  1.0267E+01  7.4038E+02  6.1250E+00  3.9388E+01  4.1661E-01  3.1101E+00  1.0344E+01  4.0519E-01
             1.2143E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -2123.09705884940        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:     4377
 NPARAMETR:  9.9856E-01  3.4866E-01  1.7262E+00  1.4771E+00  9.3872E-01  9.7681E-01  1.0150E+00  1.5534E+00  8.0624E-01  8.8919E-01
             1.0273E+00
 PARAMETER:  9.8559E-02 -9.5365E-01  6.4591E-01  4.9011E-01  3.6757E-02  7.6542E-02  1.1489E-01  5.4045E-01 -1.1537E-01 -1.7446E-02
             1.2693E-01
 GRADIENT:   4.0467E+02  4.5919E+01  1.0270E+01  7.3863E+02  6.1162E+00  3.9369E+01  4.2453E-01  3.1600E+00  1.0433E+01  4.5795E-01
             1.2570E+00

0ITERATION NO.:  125    OBJECTIVE VALUE:  -2123.09723679855        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     4540
 NPARAMETR:  9.9881E-01  3.4919E-01  1.7266E+00  1.4775E+00  9.3893E-01  9.7697E-01  1.0203E+00  1.5536E+00  8.0695E-01  8.8955E-01
             1.0273E+00
 PARAMETER:  9.8805E-02 -9.5213E-01  6.4614E-01  4.9033E-01  3.6987E-02  7.6701E-02  1.2006E-01  5.4058E-01 -1.1450E-01 -1.7038E-02
             1.2694E-01
 GRADIENT:   1.6043E+00  2.2327E-01 -1.3096E-01 -7.0694E+00 -4.0508E-01  1.0325E-01  5.9032E-03  4.5046E-03  6.7313E-02 -1.1620E-04
            -4.2034E-03

0ITERATION NO.:  130    OBJECTIVE VALUE:  -2123.09762558761        NO. OF FUNC. EVALS.: 148
 CUMULATIVE NO. OF FUNC. EVALS.:     4688             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9866E-01  3.4922E-01  1.7269E+00  1.4769E+00  9.3905E-01  9.7688E-01  1.0093E+00  1.5538E+00  8.0729E-01  8.8999E-01
             1.0273E+00
 PARAMETER:  9.8664E-02 -9.5206E-01  6.4631E-01  4.8996E-01  3.7117E-02  7.6612E-02  1.0923E-01  5.4071E-01 -1.1407E-01 -1.6544E-02
             1.2695E-01
 GRADIENT:   4.0489E+02  4.5990E+01  1.0280E+01  7.3818E+02  6.0501E+00  3.9382E+01  4.1325E-01  3.1664E+00  1.0650E+01  5.2099E-01
             1.2896E+00

0ITERATION NO.:  135    OBJECTIVE VALUE:  -2123.09795413261        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     4869             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9869E-01  3.4950E-01  1.7275E+00  1.4768E+00  9.3939E-01  9.7690E-01  9.9757E-01  1.5542E+00  8.0775E-01  8.9043E-01
             1.0273E+00
 PARAMETER:  9.8687E-02 -9.5124E-01  6.4669E-01  4.8986E-01  3.7481E-02  7.6632E-02  9.7565E-02  5.4098E-01 -1.1351E-01 -1.6054E-02
             1.2695E-01
 GRADIENT:   4.0494E+02  4.6019E+01  1.0229E+01  7.3773E+02  6.1523E+00  3.9389E+01  3.7293E-01  3.1597E+00  1.0638E+01  5.1610E-01
             1.2897E+00

0ITERATION NO.:  140    OBJECTIVE VALUE:  -2123.09830488659        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     5035
 NPARAMETR:  9.9872E-01  3.4996E-01  1.7281E+00  1.4765E+00  9.3962E-01  9.7691E-01  9.9310E-01  1.5546E+00  8.0768E-01  8.9046E-01
             1.0273E+00
 PARAMETER:  9.8715E-02 -9.4993E-01  6.4701E-01  4.8965E-01  3.7721E-02  7.6642E-02  9.3080E-02  5.4120E-01 -1.1359E-01 -1.6022E-02
             1.2694E-01
 GRADIENT:   4.0501E+02  4.6076E+01  1.0261E+01  7.3697E+02  6.1297E+00  3.9391E+01  3.6660E-01  3.1495E+00  1.0515E+01  4.9160E-01
             1.2598E+00

0ITERATION NO.:  145    OBJECTIVE VALUE:  -2123.09882166357        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     5201             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9880E-01  3.5072E-01  1.7289E+00  1.4761E+00  9.4008E-01  9.7697E-01  9.8822E-01  1.5554E+00  8.0833E-01  8.9090E-01
             1.0274E+00
 PARAMETER:  9.8803E-02 -9.4778E-01  6.4746E-01  4.8937E-01  3.8211E-02  7.6696E-02  8.8153E-02  5.4173E-01 -1.1279E-01 -1.5520E-02
             1.2698E-01
 GRADIENT:   4.0518E+02  4.6152E+01  1.0222E+01  7.3602E+02  6.1935E+00  3.9400E+01  3.7087E-01  3.1715E+00  1.0585E+01  5.0690E-01
             1.2880E+00

0ITERATION NO.:  150    OBJECTIVE VALUE:  -2123.09893129280        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     5368
 NPARAMETR:  9.9858E-01  3.5088E-01  1.7294E+00  1.4760E+00  9.4026E-01  9.7687E-01  9.6097E-01  1.5555E+00  8.0815E-01  8.9096E-01
             1.0273E+00
 PARAMETER:  9.8583E-02 -9.4731E-01  6.4776E-01  4.8930E-01  3.8402E-02  7.6603E-02  6.0191E-02  5.4183E-01 -1.1301E-01 -1.5458E-02
             1.2697E-01
 GRADIENT:   1.0112E+00  1.2442E-01 -1.5954E-01 -7.9319E+00 -2.2536E-01  5.4074E-02 -6.8172E-03 -2.2184E-02 -2.8580E-01 -7.8355E-02
            -2.8861E-02

0ITERATION NO.:  155    OBJECTIVE VALUE:  -2123.09940961920        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     5554             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9879E-01  3.5146E-01  1.7300E+00  1.4757E+00  9.4054E-01  9.7696E-01  9.7239E-01  1.5561E+00  8.0857E-01  8.9137E-01
             1.0273E+00
 PARAMETER:  9.8794E-02 -9.4565E-01  6.4814E-01  4.8915E-01  3.8698E-02  7.6694E-02  7.2002E-02  5.4218E-01 -1.1249E-01 -1.4995E-02
             1.2697E-01
 GRADIENT:   4.0515E+02  4.6305E+01  1.0252E+01  7.3527E+02  6.1088E+00  3.9403E+01  3.5586E-01  3.1565E+00  1.0408E+01  4.9203E-01
             1.2508E+00

0ITERATION NO.:  160    OBJECTIVE VALUE:  -2123.10014664548        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:     5723             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9883E-01  3.5257E-01  1.7317E+00  1.4746E+00  9.4151E-01  9.7699E-01  9.6149E-01  1.5575E+00  8.0972E-01  8.9223E-01
             1.0274E+00
 PARAMETER:  9.8831E-02 -9.4251E-01  6.4911E-01  4.8837E-01  3.9731E-02  7.6726E-02  6.0729E-02  5.4309E-01 -1.1107E-01 -1.4029E-02
             1.2704E-01
 GRADIENT:   4.0519E+02  4.6217E+01  1.0153E+01  7.3203E+02  6.4896E+00  3.9409E+01  3.6402E-01  3.1759E+00  1.0519E+01  4.9349E-01
             1.3077E+00

0ITERATION NO.:  165    OBJECTIVE VALUE:  -2123.10068477139        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     5911             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9883E-01  3.5296E-01  1.7325E+00  1.4747E+00  9.4167E-01  9.7699E-01  9.4138E-01  1.5582E+00  8.1002E-01  8.9268E-01
             1.0274E+00
 PARAMETER:  9.8829E-02 -9.4140E-01  6.4959E-01  4.8843E-01  3.9904E-02  7.6725E-02  3.9592E-02  5.4350E-01 -1.1070E-01 -1.3533E-02
             1.2704E-01
 GRADIENT:   4.0518E+02  4.6412E+01  1.0218E+01  7.3233E+02  6.1814E+00  3.9410E+01  3.4410E-01  3.1800E+00  1.0360E+01  5.0238E-01
             1.2845E+00

0ITERATION NO.:  170    OBJECTIVE VALUE:  -2123.10085663957        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     6101
 NPARAMETR:  9.9884E-01  3.5319E-01  1.7330E+00  1.4744E+00  9.4189E-01  9.7700E-01  9.3133E-01  1.5585E+00  8.1070E-01  8.9325E-01
             1.0274E+00
 PARAMETER:  9.8836E-02 -9.4076E-01  6.4986E-01  4.8828E-01  4.0129E-02  7.6731E-02  2.8857E-02  5.4376E-01 -1.0986E-01 -1.2889E-02
             1.2705E-01
 GRADIENT:   1.5080E+00  1.8668E-02 -1.4752E-01 -8.2136E+00 -2.2714E-01  8.9442E-02  1.4471E-02  2.4989E-02  2.3940E-01  2.8660E-02
             4.0479E-02

0ITERATION NO.:  175    OBJECTIVE VALUE:  -2123.10128168941        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     6286
 NPARAMETR:  9.9884E-01  3.5348E-01  1.7337E+00  1.4743E+00  9.4215E-01  9.7701E-01  9.0989E-01  1.5590E+00  8.1093E-01  8.9358E-01
             1.0274E+00
 PARAMETER:  9.8840E-02 -9.3993E-01  6.5026E-01  4.8818E-01  4.0407E-02  7.6737E-02  5.5631E-03  5.4402E-01 -1.0957E-01 -1.2518E-02
             1.2705E-01
 GRADIENT:   1.5003E+00  6.7214E-02 -1.4710E-01 -8.0356E+00 -2.6027E-01  8.9394E-02  6.9469E-03  8.5910E-03  6.6900E-02 -9.0919E-04
             1.2731E-02

0ITERATION NO.:  180    OBJECTIVE VALUE:  -2123.10222045396        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     6382
 NPARAMETR:  9.9827E-01  3.5956E-01  1.7474E+00  1.4719E+00  9.4775E-01  9.7655E-01  7.9153E-01  1.5680E+00  8.1284E-01  8.9754E-01
             1.0274E+00
 PARAMETER:  9.8268E-02 -9.2287E-01  6.5812E-01  4.8654E-01  4.6334E-02  7.6269E-02 -1.3379E-01  5.4982E-01 -1.0723E-01 -8.0949E-03
             1.2706E-01
 GRADIENT:   4.0382E+02  4.7658E+01  9.9875E+00  7.2560E+02  6.8442E+00  3.9315E+01  3.1769E-01  3.0439E+00  8.9501E+00  2.6669E-01
             1.0298E+00

0ITERATION NO.:  185    OBJECTIVE VALUE:  -2123.10439590091        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     6569
 NPARAMETR:  9.9863E-01  3.5827E-01  1.7464E+00  1.4720E+00  9.4695E-01  9.7687E-01  8.3750E-01  1.5680E+00  8.1439E-01  8.9843E-01
             1.0276E+00
 PARAMETER:  9.8626E-02 -9.2648E-01  6.5755E-01  4.8665E-01  4.5496E-02  7.6597E-02 -7.7339E-02  5.4983E-01 -1.0531E-01 -7.1017E-03
             1.2719E-01
 GRADIENT:   7.7603E-01  1.5056E-01 -1.6633E-01 -7.2028E+00  1.0761E-01 -8.0885E-04  1.8941E-02 -2.0999E-02  2.7987E-01  6.9120E-02
             1.8451E-02

0ITERATION NO.:  190    OBJECTIVE VALUE:  -2123.10540611381        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     6761             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9894E-01  3.5847E-01  1.7471E+00  1.4716E+00  9.4696E-01  9.7709E-01  7.8055E-01  1.5692E+00  8.1469E-01  8.9833E-01
             1.0276E+00
 PARAMETER:  9.8941E-02 -9.2591E-01  6.5798E-01  4.8635E-01  4.5504E-02  7.6827E-02 -1.4775E-01  5.5055E-01 -1.0495E-01 -7.2159E-03
             1.2721E-01
 GRADIENT:   4.0532E+02  4.7204E+01  1.0227E+01  7.2377E+02  6.0736E+00  3.9448E+01  3.6613E-01  3.2157E+00  9.5654E+00  4.8136E-01
             1.2417E+00

0ITERATION NO.:  192    OBJECTIVE VALUE:  -2123.10540611381        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     6818
 NPARAMETR:  9.9894E-01  3.5847E-01  1.7471E+00  1.4716E+00  9.4696E-01  9.7709E-01  7.8055E-01  1.5692E+00  8.1469E-01  8.9833E-01
             1.0276E+00
 PARAMETER:  9.8941E-02 -9.2591E-01  6.5798E-01  4.8635E-01  4.5504E-02  7.6827E-02 -1.4775E-01  5.5055E-01 -1.0495E-01 -7.2159E-03
             1.2721E-01
 GRADIENT:  -2.1098E-02  3.5889E-02 -1.4697E-02  5.3268E-01 -2.6539E-01 -3.1682E-03 -1.5750E-05 -2.9643E-02 -1.5897E-01 -3.0593E-02
            -2.9820E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     6818
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2896E-04 -8.9886E-03 -3.6864E-02 -4.0414E-03 -3.9647E-02
 SE:             2.9875E-02  4.9683E-03  1.9065E-02  2.9150E-02  2.0279E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9389E-01  7.0422E-02  5.3166E-02  8.8973E-01  5.0578E-02

 ETASHRINKSD(%)  1.0000E-10  8.3355E+01  3.6129E+01  2.3446E+00  3.2062E+01
 ETASHRINKVR(%)  1.0000E-10  9.7230E+01  5.9204E+01  4.6342E+00  5.3844E+01
 EBVSHRINKSD(%)  3.5575E-01  8.4292E+01  3.9025E+01  2.8230E+00  2.9724E+01
 EBVSHRINKVR(%)  7.1024E-01  9.7532E+01  6.2820E+01  5.5664E+00  5.0613E+01
 RELATIVEINF(%)  9.7646E+01  1.2722E-01  1.0203E+01  5.6955E+00  1.0170E+01
 EPSSHRINKSD(%)  3.4252E+01
 EPSSHRINKVR(%)  5.6772E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2123.1054061138111     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1204.1668729091384     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:   109.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2123.105       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  3.58E-01  1.75E+00  1.47E+00  9.47E-01  9.77E-01  7.81E-01  1.57E+00  8.15E-01  8.98E-01  1.03E+00
 


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
 #CPUT: Total CPU Time in Seconds,      109.604
Stop Time:
Fri Oct  1 12:01:30 CDT 2021
