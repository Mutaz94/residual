Fri Oct  1 20:11:31 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat78.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -684.105267959884        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4613E+02 -1.6554E+02 -4.2956E+01  8.5112E+01  1.3938E+02  3.6284E+01 -9.2994E+01 -4.8364E+01 -4.4646E+01 -1.5034E+01
            -3.3911E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1798.62495930740        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0517E+00  1.4421E+00  1.1276E+00  8.3199E-01  1.1308E+00  9.7964E-01  1.5149E+00  7.3963E-01  7.6984E-01  1.0657E+00
             1.8645E+00
 PARAMETER:  1.5038E-01  4.6610E-01  2.2005E-01 -8.3935E-02  2.2290E-01  7.9432E-02  5.1536E-01 -2.0160E-01 -1.6157E-01  1.6368E-01
             7.2298E-01
 GRADIENT:   3.1841E+02  1.3154E+02  1.8210E+01  4.5676E+00 -4.3909E+01 -2.6422E-01  5.9369E+01 -2.0847E+00 -6.0081E+00 -1.8126E+01
            -5.9939E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1863.17455712102        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0322E+00  1.1895E+00  2.1595E+00  9.6189E-01  1.4999E+00  9.8900E-01  1.4075E+00  1.8860E-02  1.6811E-01  1.4433E+00
             2.1703E+00
 PARAMETER:  1.3170E-01  2.7351E-01  8.6989E-01  6.1148E-02  5.0539E-01  8.8936E-02  4.4179E-01 -3.8707E+00 -1.6831E+00  4.6696E-01
             8.7486E-01
 GRADIENT:   1.9889E+02 -6.6147E-01 -3.7892E+01  1.2698E+02  8.4597E+01  8.0902E+00 -3.4196E+01 -1.6914E-03 -3.3028E+00 -5.4126E+00
            -3.0422E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1902.40336251101        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  9.7526E-01  1.2359E+00  2.3580E+00  9.4502E-01  1.3879E+00  9.5391E-01  1.3358E+00  1.0000E-02  5.0432E-01  1.3031E+00
             2.6036E+00
 PARAMETER:  7.4952E-02  3.1181E-01  9.5783E-01  4.3448E-02  4.2779E-01  5.2812E-02  3.8950E-01 -9.3242E+00 -5.8454E-01  3.6473E-01
             1.0569E+00
 GRADIENT:   8.2671E+00 -6.3862E+00 -2.9674E+00 -3.1530E-01  6.8698E+00 -1.5600E+00 -5.2584E+00  0.0000E+00 -1.6620E+00 -5.3133E+00
            -3.5412E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1907.82887989484        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      360
 NPARAMETR:  1.0045E+00  1.2316E+00  5.8910E+00  1.0197E+00  1.6728E+00  9.7776E-01  1.2772E+00  1.0000E-02  7.4816E-01  1.5479E+00
             2.6068E+00
 PARAMETER:  1.0446E-01  3.0828E-01  1.8734E+00  1.1950E-01  6.1449E-01  7.7504E-02  3.4469E-01 -8.9299E+00 -1.9013E-01  5.3689E-01
             1.0581E+00
 GRADIENT:   9.4054E+00  1.8801E+00 -5.0302E+00  1.2993E+01  1.4831E+01  1.7561E+00  1.1395E-01  0.0000E+00  4.6845E-02  8.9833E-01
             1.7046E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1910.41807328236        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      536
 NPARAMETR:  9.9753E-01  1.1674E+00  2.9571E+01  1.0777E+00  1.7878E+00  9.7569E-01  9.9822E-01  1.0000E-02  1.0236E+00  1.6052E+00
             2.5775E+00
 PARAMETER:  9.7528E-02  2.5474E-01  3.4868E+00  1.7480E-01  6.8100E-01  7.5394E-02  9.8223E-02 -6.4218E+00  1.2335E-01  5.7323E-01
             1.0468E+00
 GRADIENT:  -7.6619E+00 -6.0727E-01 -9.6512E-01  2.3224E+00  7.8426E+00  2.0784E-01  1.6509E+00  0.0000E+00  3.7498E+00  1.1222E+00
            -2.3809E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1911.23872703990        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      711
 NPARAMETR:  1.0015E+00  1.0393E+00  6.2755E+02  1.1597E+00  1.8047E+00  9.7411E-01  6.4109E-01  3.4439E-01  1.0938E+00  1.6048E+00
             2.5808E+00
 PARAMETER:  1.0148E-01  1.3855E-01  6.5418E+00  2.4815E-01  6.9041E-01  7.3769E-02 -3.4459E-01 -9.6599E-01  1.8966E-01  5.7301E-01
             1.0481E+00
 GRADIENT:   5.0625E-01 -1.1689E-01 -4.7664E-02  7.8033E-01  2.6862E+00 -3.6588E-01  1.1393E-01 -3.4630E-06  2.2856E+00  7.0715E-01
            -1.4265E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1911.33540544102        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  1.0011E+00  8.8561E-01  1.5624E+04  1.2679E+00  1.7969E+00  9.7519E-01  4.2849E-01  1.1920E+02  1.0501E+00  1.5908E+00
             2.5831E+00
 PARAMETER:  1.0108E-01 -2.1475E-02  9.7566E+00  3.3737E-01  6.8605E-01  7.4877E-02 -7.4749E-01  4.8808E+00  1.4885E-01  5.6423E-01
             1.0490E+00
 GRADIENT:   4.3646E-02  3.1609E+00 -1.6429E-03  5.9429E+00 -3.2041E-01  9.9602E-02 -1.1973E-02 -3.2088E-04  1.4622E+00 -6.7439E-01
             1.6546E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1911.34462525308        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1065
 NPARAMETR:  1.0011E+00  8.7679E-01  1.8794E+04  1.2738E+00  1.7972E+00  9.7489E-01  4.1909E-01  1.6696E+02  1.0457E+00  1.5913E+00
             2.5831E+00
 PARAMETER:  1.0105E-01 -3.1493E-02  9.9413E+00  3.4202E-01  6.8620E-01  7.4574E-02 -7.6967E-01  5.2178E+00  1.4469E-01  5.6458E-01
             1.0490E+00
 GRADIENT:  -1.4812E+00  3.3356E+00 -2.7771E-03  6.1013E+00 -2.5931E-01 -2.1413E-01 -1.2800E-02  2.6399E-03  1.1540E+00 -6.2458E-01
             1.5896E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1911.36350874438        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1246
 NPARAMETR:  1.0006E+00  8.7244E-01  1.9248E+04  1.2737E+00  1.7959E+00  9.7469E-01  4.5376E-01  1.6489E+02  1.0376E+00  1.5988E+00
             2.5810E+00
 PARAMETER:  1.0062E-01 -3.6459E-02  9.9651E+00  3.4196E-01  6.8548E-01  7.4364E-02 -6.9018E-01  5.2053E+00  1.3687E-01  5.6926E-01
             1.0482E+00
 GRADIENT:  -1.7735E+00  1.0374E+00 -1.6982E-03  1.2405E+00 -6.3561E-01 -1.3920E-01  1.6382E-02  5.0800E-04  7.4366E-01  2.7962E-01
            -2.5517E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1911.39280386287        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1425
 NPARAMETR:  1.0016E+00  8.1215E-01  1.8971E+04  1.3141E+00  1.7972E+00  9.7360E-01  4.6142E-01  1.6615E+02  9.9635E-01  1.5891E+00
             2.5845E+00
 PARAMETER:  1.0162E-01 -1.0807E-01  9.9507E+00  3.7312E-01  6.8624E-01  7.3243E-02 -6.7344E-01  5.2129E+00  9.6343E-02  5.6317E-01
             1.0495E+00
 GRADIENT:   1.4572E-01  4.7499E-01 -9.1206E-03 -2.1524E+00  4.8424E-01 -7.0934E-01 -4.3183E-02  1.2969E-02 -2.1262E+00 -8.0882E-01
             9.1030E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1911.39707861474        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1613
 NPARAMETR:  1.0014E+00  8.1014E-01  1.9093E+04  1.3152E+00  1.7981E+00  9.7370E-01  4.7711E-01  1.6560E+02  9.9886E-01  1.5898E+00
             2.5864E+00
 PARAMETER:  1.0137E-01 -1.1055E-01  9.9571E+00  3.7400E-01  6.8675E-01  7.3347E-02 -6.4000E-01  5.2096E+00  9.8855E-02  5.6359E-01
             1.0503E+00
 GRADIENT:   5.2202E-01 -1.3491E+00 -4.0052E-03 -4.8144E+00  9.7083E-01 -3.6126E-01  1.9343E-02  3.8116E-03 -5.4941E-01 -6.9718E-01
             2.1950E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1911.40150511964        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:     1770
 NPARAMETR:  1.0004E+00  8.1298E-01  2.0088E+04  1.3166E+00  1.7939E+00  9.7430E-01  4.3476E-01  1.6126E+02  1.0023E+00  1.5952E+00
             2.5807E+00
 PARAMETER:  1.0040E-01 -1.0705E-01  1.0008E+01  3.7506E-01  6.8438E-01  7.3965E-02 -7.3296E-01  5.1830E+00  1.0227E-01  5.6697E-01
             1.0481E+00
 GRADIENT:  -4.1040E+00  3.0059E+00  2.7457E-03  4.4569E+00 -1.3145E+00 -1.1519E+00 -6.8336E-02 -4.3658E-03 -1.1323E+00 -1.2682E-01
            -7.2920E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1911.41500432758        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1947
 NPARAMETR:  1.0026E+00  7.9794E-01  2.0040E+04  1.3254E+00  1.7961E+00  9.7672E-01  4.0651E-01  1.6146E+02  1.0014E+00  1.5999E+00
             2.5806E+00
 PARAMETER:  1.0262E-01 -1.2572E-01  1.0005E+01  3.8171E-01  6.8564E-01  7.6449E-02 -8.0016E-01  5.1842E+00  1.0140E-01  5.6992E-01
             1.0480E+00
 GRADIENT:  -4.7387E+01  5.8398E+00 -4.4653E-03  1.4349E+01 -1.9991E+00  7.9516E+00 -3.8482E-01  3.6322E-03  1.0698E+00  5.1715E-01
             9.3296E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1911.42173705559        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     2115
 NPARAMETR:  1.0015E+00  7.9584E-01  7.2330E+04  1.3260E+00  1.7966E+00  9.7585E-01  3.5571E-01  1.8127E+02  1.0029E+00  1.5969E+00
             2.5814E+00
 PARAMETER:  1.0149E-01 -1.2836E-01  1.1289E+01  3.8215E-01  6.8587E-01  7.5554E-02 -9.3364E-01  5.3000E+00  1.0295E-01  5.6807E-01
             1.0483E+00
 GRADIENT:  -8.9334E-01  7.6687E-01 -4.4314E-04 -5.9712E-01 -2.3909E-01  1.5779E-04 -1.4143E-03 -4.7320E-05 -8.5649E-01  2.0952E-02
            -2.3109E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1911.42457265268        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2297             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0013E+00  7.9253E-01  1.8930E+05  1.3272E+00  1.7971E+00  9.7491E-01  3.4905E-01  1.9429E+02  1.0061E+00  1.5971E+00
             2.5818E+00
 PARAMETER:  1.0134E-01 -1.3252E-01  1.2251E+01  3.8305E-01  6.8616E-01  7.4589E-02 -9.5253E-01  5.3693E+00  1.0610E-01  5.6816E-01
             1.0485E+00
 GRADIENT:   6.9591E+01  5.7085E+00 -3.1419E-05  6.9037E+01  1.3205E+01  3.2345E+00  5.6788E-01 -1.1488E-04  1.8610E+00  2.9823E+00
             1.2227E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1911.42803570007        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2477
 NPARAMETR:  1.0014E+00  7.9229E-01  1.9170E+05  1.3280E+00  1.7971E+00  9.7536E-01  3.1619E-01  1.9990E+02  1.0058E+00  1.5969E+00
             2.5818E+00
 PARAMETER:  1.0139E-01 -1.3282E-01  1.2264E+01  3.8370E-01  6.8619E-01  7.5056E-02 -1.0514E+00  5.3978E+00  1.0577E-01  5.6804E-01
             1.0485E+00
 GRADIENT:  -3.6094E+00  1.3001E+00 -2.3018E-04  1.4085E+00 -2.3291E-01 -1.7111E-01  5.5640E-03  4.1820E-05 -6.9712E-03 -6.9010E-02
             1.8341E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1911.43249359420        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     2645             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0010E+00  7.9002E-01  3.4152E+05  1.3301E+00  1.7969E+00  9.7530E-01  2.2598E-01  1.2608E+02  1.0078E+00  1.5974E+00
             2.5817E+00
 PARAMETER:  1.0099E-01 -1.3570E-01  1.2841E+01  3.8522E-01  6.8608E-01  7.4994E-02 -1.3873E+00  4.9369E+00  1.0776E-01  5.6839E-01
             1.0485E+00
 GRADIENT:   3.3670E+01  1.2876E+01  1.6999E-04  8.4717E+01  1.1988E+01  5.4600E+00  2.5413E-01 -2.7676E-04  8.5442E-01  2.9522E+00
             1.2769E+01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1911.43670698071        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:     2802
 NPARAMETR:  1.0021E+00  7.8730E-01  3.6199E+05  1.3298E+00  1.7968E+00  9.7395E-01  2.1173E-01  1.2265E+02  1.0109E+00  1.5969E+00
             2.5816E+00
 PARAMETER:  1.0210E-01 -1.3915E-01  1.2899E+01  3.8502E-01  6.8603E-01  7.3609E-02 -1.4525E+00  4.9093E+00  1.1087E-01  5.6807E-01
             1.0484E+00
 GRADIENT:  -3.3509E+00  7.4701E-01  1.4374E-03 -1.2331E-01 -1.3370E-01 -6.5373E-01 -8.6425E-02 -1.4901E-03 -1.7399E-01 -9.1705E-02
            -8.5555E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1911.44147051358        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2983             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0008E+00  7.8594E-01  5.4011E+05  1.3322E+00  1.7969E+00  9.7512E-01  1.8221E-01  1.1669E+02  1.0120E+00  1.5978E+00
             2.5819E+00
 PARAMETER:  1.0082E-01 -1.4087E-01  1.3300E+01  3.8686E-01  6.8609E-01  7.4802E-02 -1.6026E+00  4.8595E+00  1.1189E-01  5.6862E-01
             1.0485E+00
 GRADIENT:   3.9062E+01  8.8607E+00 -6.6226E-05  7.6719E+01  1.2552E+01  6.2866E+00  2.2241E-01  2.0728E-05  2.2934E+00  3.1205E+00
             1.3228E+01

0ITERATION NO.:   99    OBJECTIVE VALUE:  -1911.44166989491        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:     3114
 NPARAMETR:  1.0020E+00  7.8539E-01  5.2101E+05  1.3316E+00  1.7971E+00  9.7497E-01  1.7851E-01  1.1661E+02  1.0119E+00  1.5976E+00
             2.5817E+00
 PARAMETER:  1.0198E-01 -1.4157E-01  1.3264E+01  3.8642E-01  6.8619E-01  7.4649E-02 -1.6231E+00  4.8588E+00  1.1186E-01  5.6851E-01
             1.0484E+00
 GRADIENT:   9.7500E-01  2.6968E-01 -2.9739E-04 -1.1556E+00  7.9662E-02  5.8224E-02  5.5695E-03  2.6871E-04 -3.7061E-02 -9.7400E-03
            -4.9045E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     3114
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.4392E-04 -6.5449E-03  6.6402E-06 -9.0053E-03 -2.4966E-02
 SE:             2.9160E-02  2.4461E-03  4.5635E-06  2.7602E-02  2.4338E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9606E-01  7.4573E-03  1.4565E-01  7.4423E-01  3.0500E-01

 ETASHRINKSD(%)  2.3108E+00  9.1805E+01  9.9985E+01  7.5307E+00  1.8463E+01
 ETASHRINKVR(%)  4.5683E+00  9.9328E+01  1.0000E+02  1.4494E+01  3.3518E+01
 EBVSHRINKSD(%)  2.0766E+00  9.2701E+01  9.9987E+01  7.3887E+00  1.6794E+01
 EBVSHRINKVR(%)  4.1101E+00  9.9467E+01  1.0000E+02  1.4232E+01  3.0767E+01
 RELATIVEINF(%)  9.5289E+01  3.9062E-02  6.2288E-07  6.2407E+00  2.4384E+01
 EPSSHRINKSD(%)  2.2289E+01
 EPSSHRINKVR(%)  3.9611E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1911.4416698949142     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -812.39118418212570     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    59.20
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1911.442       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  7.85E-01  5.21E+05  1.33E+00  1.80E+00  9.75E-01  1.79E-01  1.17E+02  1.01E+00  1.60E+00  2.58E+00
 


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
1THERE ARE ERROR MESSAGES IN FILE PRDERR                                                                  
 #CPUT: Total CPU Time in Seconds,       59.231
Stop Time:
Fri Oct  1 20:12:32 CDT 2021
