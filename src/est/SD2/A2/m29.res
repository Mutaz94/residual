Fri Oct  1 09:53:25 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat29.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m29.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -684.912999090234        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8331E+02  5.6067E+01  8.7668E+01  2.8446E+01  1.3649E+02  6.1445E+00 -8.0604E+01 -4.1534E+01 -2.7528E+01 -1.2215E+02
            -2.5006E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1595.43129552538        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0225E+00  9.8000E-01  1.0429E+00  1.0450E+00  9.6899E-01  1.0665E+00  1.1627E+00  8.9046E-01  1.1277E+00  9.9634E-01
             2.4749E+00
 PARAMETER:  1.2223E-01  7.9801E-02  1.4198E-01  1.4399E-01  6.8499E-02  1.6441E-01  2.5072E-01 -1.6022E-02  2.2018E-01  9.6334E-02
             1.0062E+00
 GRADIENT:   1.5295E+02 -1.0044E+01 -8.2927E-01 -1.0703E+01  1.6606E+01  1.4800E+01 -3.6196E-02  5.1723E+00  1.4025E+01 -1.0934E+01
            -8.9373E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1602.26661711199        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0010E+00  8.4272E-01  7.8668E-01  1.1171E+00  7.9649E-01  1.0885E+00  1.2483E+00  1.5972E-01  9.1068E-01  1.0352E+00
             2.4952E+00
 PARAMETER:  1.0100E-01 -7.1122E-02 -1.3993E-01  2.1073E-01 -1.2754E-01  1.8480E-01  3.2177E-01 -1.7344E+00  6.4322E-03  1.3458E-01
             1.0144E+00
 GRADIENT:   9.0246E+01 -1.0472E+01 -1.6992E+01  1.2982E+01  3.9155E+01  2.5353E+01 -1.2695E+01  3.4479E-01 -1.8368E+01  4.3263E+00
            -5.6601E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1604.45531806938        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      253
 NPARAMETR:  9.9285E-01  7.8865E-01  4.8879E-01  1.1193E+00  5.9553E-01  1.0676E+00  1.4694E+00  1.0883E-01  8.6986E-01  8.4976E-01
             2.4696E+00
 PARAMETER:  9.2824E-02 -1.3743E-01 -6.1583E-01  2.1272E-01 -4.1830E-01  1.6542E-01  4.8485E-01 -2.1180E+00 -3.9424E-02 -6.2798E-02
             1.0040E+00
 GRADIENT:   1.8685E+00 -1.4161E+01 -5.3149E+01  3.9570E+01  8.2778E+01  4.3782E+00 -6.1562E+00  2.4416E-01 -1.9304E+01  7.7674E+00
            -5.2276E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1613.95784291989        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      429
 NPARAMETR:  9.9274E-01  4.8821E-01  5.4400E-01  1.2976E+00  4.9168E-01  1.0446E+00  2.0794E+00  1.1717E-01  9.2037E-01  7.6407E-01
             2.6614E+00
 PARAMETER:  9.2709E-02 -6.1701E-01 -5.0880E-01  3.6049E-01 -6.0994E-01  1.4362E-01  8.3210E-01 -2.0441E+00  1.7018E-02 -1.6910E-01
             1.0789E+00
 GRADIENT:   4.8929E+00  2.1733E+01  1.4330E+01  3.2469E+01 -2.5527E+01  1.6346E-01  7.2888E+00  2.6828E-01  5.3283E-01  5.8299E-01
             1.8509E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1618.51595353871        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      605
 NPARAMETR:  9.7906E-01  2.1423E-01  5.4654E-01  1.3963E+00  4.3735E-01  1.0358E+00  2.3004E+00  1.1943E-02  9.1272E-01  8.2801E-01
             2.5989E+00
 PARAMETER:  7.8840E-02 -1.4407E+00 -5.0415E-01  4.3379E-01 -7.2703E-01  1.3521E-01  9.3307E-01 -4.3276E+00  8.6769E-03 -8.8724E-02
             1.0551E+00
 GRADIENT:  -5.1856E+00  5.3389E+00  2.0145E+01 -3.6851E+00 -3.1518E+01 -1.7862E-01 -6.2968E-01  2.8067E-03 -2.8714E+00 -3.6671E+00
            -4.6149E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1621.99753253768        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      781
 NPARAMETR:  9.7238E-01  3.6170E-02  6.7170E-01  1.5251E+00  4.8862E-01  1.0325E+00  1.7164E+00  1.0000E-02  8.7686E-01  9.0892E-01
             2.5869E+00
 PARAMETER:  7.1996E-02 -3.2195E+00 -2.9794E-01  5.2207E-01 -6.1617E-01  1.3196E-01  6.4021E-01 -1.0420E+01 -3.1403E-02  4.4985E-03
             1.0504E+00
 GRADIENT:  -2.0148E+00  8.2453E-01  4.2170E+00 -1.7981E+00 -2.6786E+00 -1.2353E-02 -4.3990E-02  0.0000E+00 -2.0443E+00 -2.4631E-01
            -2.2895E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1622.66097938753        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      956
 NPARAMETR:  9.7216E-01  1.0000E-02  6.2747E-01  1.5231E+00  4.6236E-01  1.0315E+00  1.6880E+00  1.0000E-02  8.8198E-01  8.9158E-01
             2.5859E+00
 PARAMETER:  7.1764E-02 -4.8540E+00 -3.6605E-01  5.2074E-01 -6.7142E-01  1.3100E-01  6.2354E-01 -1.6208E+01 -2.5590E-02 -1.4760E-02
             1.0501E+00
 GRADIENT:  -6.4588E-02  0.0000E+00  1.9670E-01 -2.2179E-01 -7.9192E-02 -7.7292E-02 -3.1149E-03  0.0000E+00 -6.8097E-02 -8.7324E-02
            -2.7717E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1623.00146678496        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  9.7226E-01  1.0000E-02  6.2162E-01  1.5169E+00  4.6494E-01  1.0316E+00  1.1934E+01  1.0000E-02  8.7151E-01  8.5396E-01
             2.5819E+00
 PARAMETER:  7.1868E-02 -4.8540E+00 -3.7543E-01  5.1669E-01 -6.6585E-01  1.3109E-01  2.5794E+00 -1.6208E+01 -3.7533E-02 -5.7866E-02
             1.0485E+00
 GRADIENT:   9.6267E-01  0.0000E+00 -6.2398E+00 -2.4343E-01  1.2083E+01 -1.0788E-01  1.7260E+00  0.0000E+00 -1.2364E+00 -1.5934E+00
            -2.4920E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1623.04481602130        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1338             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7264E-01  1.0000E-02  6.2210E-01  1.5183E+00  4.6235E-01  1.0322E+00  1.1897E+01  1.0000E-02  8.7420E-01  8.5994E-01
             2.5876E+00
 PARAMETER:  7.2257E-02 -4.8540E+00 -3.7466E-01  5.1756E-01 -6.7144E-01  1.3170E-01  2.5763E+00 -1.6208E+01 -3.4449E-02 -5.0897E-02
             1.0507E+00
 GRADIENT:   5.8338E+01  0.0000E+00  4.9201E+00  1.4624E+02  2.3673E+01  7.3521E+00  1.9477E+01  0.0000E+00  2.5712E+00  1.2603E-01
             1.0756E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1623.05707625536        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:     1493
 NPARAMETR:  9.7288E-01  1.0000E-02  6.1811E-01  1.5166E+00  4.6012E-01  1.0318E+00  1.1867E+01  1.0000E-02  8.7597E-01  8.6227E-01
             2.5857E+00
 PARAMETER:  7.2507E-02 -4.8540E+00 -3.8109E-01  5.1645E-01 -6.7627E-01  1.3131E-01  2.5738E+00 -1.6208E+01 -3.2422E-02 -4.8184E-02
             1.0500E+00
 GRADIENT:   1.8170E+00  0.0000E+00  6.2387E-01  2.6936E+00  1.1347E+00  5.8892E-02  1.1633E+00  0.0000E+00  2.8505E-01  3.6209E-01
             1.1069E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1623.09723122531        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1671
 NPARAMETR:  9.7207E-01  1.0000E-02  5.7644E-01  1.4978E+00  4.3706E-01  1.0315E+00  1.1517E+01  1.0000E-02  8.8267E-01  8.4150E-01
             2.5822E+00
 PARAMETER:  7.1678E-02 -4.8540E+00 -4.5089E-01  5.0402E-01 -7.2768E-01  1.3104E-01  2.5438E+00 -1.6208E+01 -2.4801E-02 -7.2566E-02
             1.0486E+00
 GRADIENT:   3.8753E-01  0.0000E+00  3.2066E-01 -4.1606E-02 -9.0207E-01  5.1488E-03  8.5272E-01  0.0000E+00  2.8554E-01 -1.3257E-01
            -1.4185E-01

0ITERATION NO.:   57    OBJECTIVE VALUE:  -1623.09749870257        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1728
 NPARAMETR:  9.7184E-01  1.0000E-02  5.7662E-01  1.4978E+00  4.3731E-01  1.0315E+00  1.1516E+01  1.0000E-02  8.8190E-01  8.4234E-01
             2.5824E+00
 PARAMETER:  7.1440E-02 -4.8540E+00 -4.5058E-01  5.0397E-01 -7.2711E-01  1.3101E-01  2.5437E+00 -1.6208E+01 -2.5677E-02 -7.1566E-02
             1.0487E+00
 GRADIENT:  -9.0865E-02  0.0000E+00 -1.0378E-01 -3.0215E-01 -3.2101E-01 -6.0798E-03  8.5052E-01  0.0000E+00  2.8398E-02 -1.7408E-02
             6.8338E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1728
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1234E-03  4.5091E-03  2.5693E-05 -9.7749E-03 -1.1218E-02
 SE:             2.9242E-02  4.6082E-03  1.7411E-04  2.7758E-02  2.1934E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6935E-01  3.2783E-01  8.8269E-01  7.2473E-01  6.0905E-01

 ETASHRINKSD(%)  2.0369E+00  8.4562E+01  9.9417E+01  7.0072E+00  2.6517E+01
 ETASHRINKVR(%)  4.0322E+00  9.7617E+01  9.9997E+01  1.3523E+01  4.6003E+01
 EBVSHRINKSD(%)  1.9457E+00  8.8728E+01  9.9336E+01  6.5357E+00  2.6193E+01
 EBVSHRINKVR(%)  3.8535E+00  9.8730E+01  9.9996E+01  1.2644E+01  4.5525E+01
 RELATIVEINF(%)  9.5805E+01  1.0013E+00  2.7767E-04  3.7536E+01  3.5234E+00
 EPSSHRINKSD(%)  2.6244E+01
 EPSSHRINKVR(%)  4.5601E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1623.0974987025750     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -704.15896549790227     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.14
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1623.097       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.72E-01  1.00E-02  5.77E-01  1.50E+00  4.37E-01  1.03E+00  1.15E+01  1.00E-02  8.82E-01  8.42E-01  2.58E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.177
Stop Time:
Fri Oct  1 09:53:54 CDT 2021