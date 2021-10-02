Fri Oct  1 11:50:27 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat68.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2152.87661152504        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1167E+02  4.5396E+01 -1.3969E+01  1.2122E+02  3.5166E+01  5.3598E+01  2.8067E+01  6.5181E+00  6.6732E+01  5.8511E+00
            -1.4233E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2167.95728127964        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0281E+00  9.9985E-01  9.8549E-01  9.8640E-01  9.7347E-01  9.7843E-01  8.4392E-01  9.6379E-01  6.9826E-01  9.6426E-01
             1.0144E+00
 PARAMETER:  1.2775E-01  9.9848E-02  8.5387E-02  8.6310E-02  7.3108E-02  7.8195E-02 -6.9694E-02  6.3114E-02 -2.5916E-01  6.3605E-02
             1.1434E-01
 GRADIENT:   2.7087E+01  1.7183E+01  5.1621E+00  9.4365E+00  4.1416E+00 -1.8851E+00  2.6187E+00  1.9241E+00 -3.3310E+00  5.2762E-01
            -7.3068E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2169.35794094073        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0241E+00  8.5306E-01  7.9610E-01  1.0682E+00  8.0549E-01  9.7936E-01  7.2921E-01  7.1845E-01  7.0648E-01  8.3900E-01
             1.0313E+00
 PARAMETER:  1.2382E-01 -5.8927E-02 -1.2803E-01  1.6600E-01 -1.1631E-01  7.9142E-02 -2.1579E-01 -2.3065E-01 -2.4746E-01 -7.5543E-02
             1.3078E-01
 GRADIENT:   1.6366E+01  1.9090E+01 -1.2443E+01  5.4316E+01  4.6755E+00 -1.2901E+00 -5.3740E+00  2.5091E+00 -2.2087E+00  1.4833E+00
             7.1361E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2170.65606818714        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0165E+00  8.4140E-01  8.0489E-01  1.0596E+00  8.0720E-01  9.8251E-01  9.0018E-01  6.1957E-01  6.7915E-01  8.3858E-01
             1.0224E+00
 PARAMETER:  1.1633E-01 -7.2687E-02 -1.1705E-01  1.5794E-01 -1.1419E-01  8.2355E-02 -5.1644E-03 -3.7873E-01 -2.8691E-01 -7.6043E-02
             1.2214E-01
 GRADIENT:   9.9712E-02  1.2510E+00  4.3785E-01  4.5518E-01 -8.6159E-01  3.7403E-02  1.8186E-01  2.7873E-02  1.7340E-01  7.0787E-02
            -1.3278E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2170.66771013354        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      725
 NPARAMETR:  1.0153E+00  7.7206E-01  8.5555E-01  1.1061E+00  8.0627E-01  9.8143E-01  9.4488E-01  6.3766E-01  6.6046E-01  8.4628E-01
             1.0241E+00
 PARAMETER:  1.1520E-01 -1.5869E-01 -5.6010E-02  2.0085E-01 -1.1533E-01  8.1255E-02  4.3304E-02 -3.4995E-01 -3.1481E-01 -6.6910E-02
             1.2377E-01
 GRADIENT:   3.6592E-02  3.6829E+00  1.5354E+00  5.8738E+00 -2.2858E+00  3.5257E-02 -2.8496E-01 -6.9732E-01 -2.8476E-01 -1.0586E+00
             1.9122E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2170.67099614275        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      900
 NPARAMETR:  1.0145E+00  7.3186E-01  8.9374E-01  1.1347E+00  8.0965E-01  9.8070E-01  9.7298E-01  6.6597E-01  6.4978E-01  8.5619E-01
             1.0247E+00
 PARAMETER:  1.1443E-01 -2.1217E-01 -1.2338E-02  2.2637E-01 -1.1116E-01  8.0513E-02  7.2607E-02 -3.0651E-01 -3.3113E-01 -5.5266E-02
             1.2444E-01
 GRADIENT:  -1.6815E-02  6.7491E+00  3.0902E+00  1.1402E+01 -5.2715E+00  2.5415E-02 -3.8277E-01 -9.5418E-01 -6.6706E-01 -1.0153E+00
             3.7863E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2170.70699528792        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1079
 NPARAMETR:  1.0128E+00  6.5319E-01  9.8537E-01  1.1908E+00  8.2446E-01  9.7899E-01  1.0319E+00  7.5859E-01  6.3035E-01  8.8644E-01
             1.0249E+00
 PARAMETER:  1.1270E-01 -3.2589E-01  8.5265E-02  2.7463E-01 -9.3032E-02  7.8767E-02  1.3140E-01 -1.7630E-01 -3.6148E-01 -2.0537E-02
             1.2456E-01
 GRADIENT:  -2.7797E-01  1.0485E+01  5.1359E+00  1.8886E+01 -1.0600E+01 -7.4229E-02 -2.8148E-01 -5.3089E-01 -1.3790E+00  8.5669E-01
             7.3893E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2171.02204555240        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1257
 NPARAMETR:  1.0088E+00  4.3848E-01  1.1710E+00  1.3298E+00  8.3895E-01  9.7504E-01  1.3349E+00  9.3214E-01  5.8552E-01  9.1374E-01
             1.0231E+00
 PARAMETER:  1.0875E-01 -7.2445E-01  2.5785E-01  3.8502E-01 -7.5603E-02  7.4720E-02  3.8882E-01  2.9732E-02 -4.3526E-01  9.7920E-03
             1.2287E-01
 GRADIENT:   2.8907E-01  7.1148E+00  3.6988E+00  1.8247E+01 -6.8373E+00 -2.5272E-01  5.7989E-01 -4.0111E-01 -8.1257E-01  6.6827E-01
            -7.1371E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2171.22990711048        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1433
 NPARAMETR:  1.0063E+00  3.0933E-01  1.2532E+00  1.4136E+00  8.3367E-01  9.7316E-01  1.5924E+00  1.0280E+00  5.6505E-01  9.0766E-01
             1.0244E+00
 PARAMETER:  1.0623E-01 -1.0734E+00  3.2570E-01  4.4614E-01 -8.1918E-02  7.2794E-02  5.6526E-01  1.2757E-01 -4.7084E-01  3.1176E-03
             1.2408E-01
 GRADIENT:   1.3681E-01  6.5198E+00  1.4029E+00  2.9749E+01 -5.5092E+00 -1.8224E-01  2.2992E-01 -2.6740E-01 -1.0844E+00 -3.7160E-01
            -5.0463E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2171.46322875785        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1611
 NPARAMETR:  1.0041E+00  2.0387E-01  1.3264E+00  1.4797E+00  8.3223E-01  9.7180E-01  1.8448E+00  1.1228E+00  5.5242E-01  9.0858E-01
             1.0249E+00
 PARAMETER:  1.0405E-01 -1.4903E+00  3.8248E-01  4.9181E-01 -8.3641E-02  7.1395E-02  7.1236E-01  2.1582E-01 -4.9345E-01  4.1287E-03
             1.2457E-01
 GRADIENT:  -1.8233E-01  3.9780E+00 -1.1366E+00  2.7116E+01 -3.6959E+00 -4.8173E-02 -1.9233E-01  7.9956E-01 -1.1290E+00 -2.4290E-01
             7.1744E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2171.63288915984        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1786
 NPARAMETR:  1.0025E+00  1.3077E-01  1.4017E+00  1.5259E+00  8.3958E-01  9.7071E-01  2.0882E+00  1.1758E+00  5.4552E-01  9.2460E-01
             1.0242E+00
 PARAMETER:  1.0249E-01 -1.9343E+00  4.3769E-01  5.2261E-01 -7.4857E-02  7.0269E-02  8.3629E-01  2.6196E-01 -5.0602E-01  2.1601E-02
             1.2395E-01
 GRADIENT:  -5.3343E-01  2.1898E+00  1.7607E-01  1.8671E+01 -3.1240E+00 -2.5230E-02 -1.8265E-01  2.9386E-02 -7.0534E-02  1.0882E-02
             2.3295E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2171.71714725294        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1961
 NPARAMETR:  1.0015E+00  7.5449E-02  1.4595E+00  1.5616E+00  8.4427E-01  9.6982E-01  2.4055E+00  1.2235E+00  5.3766E-01  9.3218E-01
             1.0239E+00
 PARAMETER:  1.0149E-01 -2.4843E+00  4.7811E-01  5.4572E-01 -6.9278E-02  6.9357E-02  9.7777E-01  3.0175E-01 -5.2053E-01  2.9771E-02
             1.2363E-01
 GRADIENT:  -4.9667E-01  1.2354E+00  7.1391E-01  1.4831E+01 -2.9354E+00 -5.2544E-02 -1.2121E-01 -1.4442E-01 -3.7214E-01  9.4336E-02
            -3.0248E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2171.79891675817        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2137
 NPARAMETR:  1.0008E+00  3.3763E-02  1.4991E+00  1.5874E+00  8.4669E-01  9.6921E-01  2.8719E+00  1.2580E+00  5.3094E-01  9.3519E-01
             1.0238E+00
 PARAMETER:  1.0080E-01 -3.2884E+00  5.0487E-01  5.6209E-01 -6.6426E-02  6.8725E-02  1.1550E+00  3.2949E-01 -5.3310E-01  3.2993E-02
             1.2352E-01
 GRADIENT:  -2.7387E-01  4.8853E-01  6.1420E-01  7.7289E+00 -1.7051E+00 -5.3402E-02 -4.3246E-02 -1.4466E-01 -6.0845E-01  3.3434E-02
            -9.2483E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2171.87571758801        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2320
 NPARAMETR:  1.0008E+00  1.6878E-02  1.5076E+00  1.5937E+00  8.4640E-01  9.6921E-01  3.1492E+00  1.2670E+00  5.2966E-01  9.3577E-01
             1.0237E+00
 PARAMETER:  1.0079E-01 -3.9817E+00  5.1052E-01  5.6606E-01 -6.6757E-02  6.8724E-02  1.2471E+00  3.3668E-01 -5.3552E-01  3.3619E-02
             1.2346E-01
 GRADIENT:   6.4741E-01  1.0614E-01  1.8110E-01 -1.2229E+01  1.1335E+00  7.4798E-02 -1.1569E-02  2.5448E-02  4.7618E-01  5.0651E-02
             8.8921E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2171.89653622537        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2500
 NPARAMETR:  1.0006E+00  1.0105E-02  1.5055E+00  1.5972E+00  8.4362E-01  9.6904E-01  3.2659E+00  1.2660E+00  5.2839E-01  9.3447E-01
             1.0236E+00
 PARAMETER:  1.0063E-01 -4.4947E+00  5.0914E-01  5.6824E-01 -7.0050E-02  6.8546E-02  1.2835E+00  3.3584E-01 -5.3793E-01  3.2227E-02
             1.2331E-01
 GRADIENT:   6.1702E-01  1.9631E-01  4.1031E-01 -1.3584E+01  3.5871E-01  4.8943E-02 -4.7478E-03 -7.1505E-04  4.2163E-01  1.7936E-01
            -4.5701E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2171.91131237432        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2692             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0010E+00  1.0000E-02  1.5028E+00  1.5960E+00  8.4234E-01  9.6914E-01  9.3646E+00  1.2658E+00  5.2807E-01  9.3274E-01
             1.0236E+00
 PARAMETER:  1.0098E-01 -4.5638E+00  5.0731E-01  5.6749E-01 -7.1572E-02  6.8658E-02  2.3369E+00  3.3572E-01 -5.3852E-01  3.0368E-02
             1.2334E-01
 GRADIENT:   4.2368E+02  0.0000E+00  1.0944E+01  1.1637E+03  7.3703E+00  4.1119E+01  6.7692E-01  1.2575E+00  2.9429E+01  9.7915E-01
             1.3032E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2171.91376859501        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2882             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0010E+00  1.0000E-02  1.4999E+00  1.5958E+00  8.4089E-01  9.6916E-01  9.0857E+00  1.2642E+00  5.2717E-01  9.3228E-01
             1.0237E+00
 PARAMETER:  1.0097E-01 -4.5638E+00  5.0541E-01  5.6735E-01 -7.3290E-02  6.8670E-02  2.3067E+00  3.3445E-01 -5.4023E-01  2.9874E-02
             1.2338E-01
 GRADIENT:   4.2352E+02  0.0000E+00  1.1257E+01  1.1632E+03  6.4024E+00  4.1124E+01  5.9968E-01  1.2902E+00  2.8855E+01  1.1140E+00
             1.3076E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2171.91539071215        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3070             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0010E+00  1.0000E-02  1.4970E+00  1.5955E+00  8.3988E-01  9.6916E-01  9.0171E+00  1.2622E+00  5.2721E-01  9.3160E-01
             1.0237E+00
 PARAMETER:  1.0096E-01 -4.5638E+00  5.0343E-01  5.6718E-01 -7.4500E-02  6.8674E-02  2.2991E+00  3.3286E-01 -5.4016E-01  2.9146E-02
             1.2342E-01
 GRADIENT:   4.2342E+02  0.0000E+00  1.1252E+01  1.1624E+03  6.2217E+00  4.1099E+01  5.8355E-01  1.2924E+00  2.8837E+01  1.1434E+00
             1.3410E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -2171.91788527838        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3258
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4925E+00  1.5951E+00  8.3866E-01  9.6913E-01  9.0148E+00  1.2588E+00  5.2724E-01  9.3055E-01
             1.0237E+00
 PARAMETER:  1.0093E-01 -4.5638E+00  5.0043E-01  5.6697E-01 -7.5948E-02  6.8646E-02  2.2989E+00  3.3019E-01 -5.4009E-01  2.8020E-02
             1.2338E-01
 GRADIENT:   1.5526E+00  0.0000E+00  8.4924E-01 -1.8486E+01 -8.8458E-01  1.1160E-01  1.3848E-02  1.3216E-01  2.4382E-01  3.7353E-01
             5.9467E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -2171.92082637505        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     3450             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4866E+00  1.5947E+00  8.3747E-01  9.6913E-01  9.0125E+00  1.2542E+00  5.2731E-01  9.2697E-01
             1.0237E+00
 PARAMETER:  1.0092E-01 -4.5638E+00  4.9647E-01  5.6668E-01 -7.7374E-02  6.8643E-02  2.2986E+00  3.2651E-01 -5.3997E-01  2.4162E-02
             1.2341E-01
 GRADIENT:   4.2305E+02  0.0000E+00  1.0352E+01  1.1603E+03  7.8171E+00  4.1082E+01  5.8255E-01  1.1174E+00  2.8793E+01  6.9537E-01
             1.2325E+00

0ITERATION NO.:  100    OBJECTIVE VALUE:  -2171.92134762612        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3638
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4841E+00  1.5945E+00  8.3669E-01  9.6912E-01  9.0101E+00  1.2514E+00  5.2732E-01  9.2510E-01
             1.0236E+00
 PARAMETER:  1.0091E-01 -4.5638E+00  4.9478E-01  5.6654E-01 -7.8303E-02  6.8631E-02  2.2983E+00  3.2427E-01 -5.3994E-01  2.2145E-02
             1.2334E-01
 GRADIENT:   1.5202E+00  0.0000E+00  2.4871E-01 -1.8773E+01  6.2974E-01  9.7830E-02  1.2639E-02 -1.3295E-01  2.0434E-01 -2.6362E-01
            -1.1541E-01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -2171.92207897580        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     3830             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4808E+00  1.5942E+00  8.3551E-01  9.6911E-01  9.0270E+00  1.2524E+00  5.2739E-01  9.2709E-01
             1.0238E+00
 PARAMETER:  1.0090E-01 -4.5638E+00  4.9259E-01  5.6639E-01 -7.9718E-02  6.8620E-02  2.3002E+00  3.2503E-01 -5.3982E-01  2.4293E-02
             1.2349E-01
 GRADIENT:   4.2278E+02  0.0000E+00  1.0137E+01  1.1591E+03  7.2690E+00  4.1056E+01  5.8569E-01  1.3363E+00  2.8797E+01  1.0314E+00
             1.3626E+00

0ITERATION NO.:  110    OBJECTIVE VALUE:  -2171.92261828274        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     4018
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4792E+00  1.5941E+00  8.3508E-01  9.6911E-01  9.0255E+00  1.2505E+00  5.2740E-01  9.2627E-01
             1.0237E+00
 PARAMETER:  1.0089E-01 -4.5638E+00  4.9150E-01  5.6632E-01 -8.0225E-02  6.8622E-02  2.3001E+00  3.2351E-01 -5.3979E-01  2.3411E-02
             1.2347E-01
 GRADIENT:   1.5555E+00  0.0000E+00 -2.1845E-02 -1.8689E+01  6.1770E-02  1.1501E-01  1.3549E-02  1.5017E-01  2.3058E-01  1.8890E-01
             8.1810E-02

0ITERATION NO.:  115    OBJECTIVE VALUE:  -2171.92273795196        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     4210             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4784E+00  1.5940E+00  8.3485E-01  9.6910E-01  9.0171E+00  1.2478E+00  5.2740E-01  9.2376E-01
             1.0236E+00
 PARAMETER:  1.0088E-01 -4.5638E+00  4.9096E-01  5.6625E-01 -8.0504E-02  6.8617E-02  2.2991E+00  3.2137E-01 -5.3980E-01  2.0694E-02
             1.2337E-01
 GRADIENT:   4.2277E+02  0.0000E+00  1.0226E+01  1.1587E+03  7.8522E+00  4.1059E+01  5.8343E-01  9.8813E-01  2.8768E+01  5.1924E-01
             1.1385E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -2171.92303365353        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     4398
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4778E+00  1.5940E+00  8.3463E-01  9.6910E-01  9.0229E+00  1.2482E+00  5.2741E-01  9.2480E-01
             1.0237E+00
 PARAMETER:  1.0088E-01 -4.5638E+00  4.9057E-01  5.6623E-01 -8.0764E-02  6.8616E-02  2.2998E+00  3.2172E-01 -5.3977E-01  2.1824E-02
             1.2343E-01
 GRADIENT:   1.5261E+00  0.0000E+00  6.5049E-02 -1.8779E+01  1.9421E-01  1.0360E-01  1.3157E-02  7.6904E-03  2.1963E-01 -1.3313E-02
            -8.1284E-03

0ITERATION NO.:  125    OBJECTIVE VALUE:  -2171.92331473464        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     4590             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4741E+00  1.5937E+00  8.3332E-01  9.6905E-01  9.0425E+00  1.2455E+00  5.2747E-01  9.2504E-01
             1.0238E+00
 PARAMETER:  1.0087E-01 -4.5638E+00  4.8807E-01  5.6604E-01 -8.2332E-02  6.8558E-02  2.3019E+00  3.1955E-01 -5.3966E-01  2.2086E-02
             1.2348E-01
 GRADIENT:   4.2253E+02  0.0000E+00  1.0155E+01  1.1578E+03  7.1483E+00  4.1017E+01  5.8918E-01  1.1422E+00  2.8777E+01  9.2600E-01
             1.2844E+00

0ITERATION NO.:  130    OBJECTIVE VALUE:  -2171.92345378420        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4777
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4739E+00  1.5936E+00  8.3334E-01  9.6909E-01  9.0287E+00  1.2454E+00  5.2747E-01  9.2392E-01
             1.0237E+00
 PARAMETER:  1.0086E-01 -4.5638E+00  4.8790E-01  5.6602E-01 -8.2314E-02  6.8606E-02  2.3004E+00  3.1943E-01 -5.3967E-01  2.0873E-02
             1.2346E-01
 GRADIENT:   1.5034E+00  0.0000E+00  5.5424E-03 -1.8822E+01  4.9477E-02  9.2450E-02  1.3232E-02  5.9581E-03  2.2312E-01  1.4740E-02
             4.5906E-03

0ITERATION NO.:  133    OBJECTIVE VALUE:  -2171.92348449717        NO. OF FUNC. EVALS.: 104
 CUMULATIVE NO. OF FUNC. EVALS.:     4881
 NPARAMETR:  1.0009E+00  1.0000E-02  1.4729E+00  1.5935E+00  8.3278E-01  9.6908E-01  9.0441E+00  1.2448E+00  5.2750E-01  9.2392E-01
             1.0238E+00
 PARAMETER:  1.0086E-01 -4.5638E+00  4.8711E-01  5.6596E-01 -8.2741E-02  6.8618E-02  2.2997E+00  3.1920E-01 -5.3963E-01  1.9873E-02
             1.2339E-01
 GRADIENT:   8.4451E-03  0.0000E+00 -2.9019E-02  3.9391E-02  1.6263E-01  4.1991E-03 -3.6120E-04  7.6420E-03 -3.7090E-03 -6.1093E-02
            -5.1653E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     4881
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5151E-04  5.7613E-04 -2.8306E-02 -7.4497E-03 -3.3186E-02
 SE:             2.9877E-02  2.0371E-03  1.8593E-02  2.8872E-02  2.1028E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9595E-01  7.7732E-01  1.2790E-01  7.9639E-01  1.1452E-01

 ETASHRINKSD(%)  1.0000E-10  9.3175E+01  3.7712E+01  3.2749E+00  2.9554E+01
 ETASHRINKVR(%)  1.0000E-10  9.9534E+01  6.1202E+01  6.4425E+00  5.0373E+01
 EBVSHRINKSD(%)  3.4468E-01  9.3413E+01  4.0439E+01  3.6207E+00  2.7228E+01
 EBVSHRINKVR(%)  6.8818E-01  9.9566E+01  6.4525E+01  7.1102E+00  4.7042E+01
 RELATIVEINF(%)  9.5251E+01  1.0360E-02  6.4855E+00  2.3933E+00  9.5970E+00
 EPSSHRINKSD(%)  3.3704E+01
 EPSSHRINKVR(%)  5.6049E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2171.9234844971738     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1252.9849512925011     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    77.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2171.923       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.00E-02  1.47E+00  1.59E+00  8.33E-01  9.69E-01  9.02E+00  1.25E+00  5.27E-01  9.23E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       77.130
Stop Time:
Fri Oct  1 11:51:45 CDT 2021
