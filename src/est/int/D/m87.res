Sat Sep 18 07:39:02 CDT 2021
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
$DATA ../../../../data/int/D/dat87.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m87.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   46162.3247811631        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3552E+02  6.1485E+02 -8.1922E+01  4.8711E+02  1.0243E+02 -3.3361E+03 -1.8512E+03 -5.6701E+01 -2.7256E+03 -6.2537E+02
            -9.0749E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -633.826208086927        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1826E+00  2.2332E+00  9.6324E-01  1.9677E+00  9.6487E-01  5.0104E+00  5.6479E+00  9.6141E-01  2.9762E+00  1.2147E+00
             1.2383E+01
 PARAMETER:  2.6774E-01  9.0345E-01  6.2550E-02  7.7689E-01  6.4238E-02  1.7115E+00  1.8313E+00  6.0650E-02  1.1907E+00  2.9447E-01
             2.6164E+00
 GRADIENT:  -9.6233E+00  3.1626E+01 -5.2344E+01  9.2317E+01 -1.4684E+01  1.3786E+02  7.2541E+01  3.7460E+00  4.5725E+01  2.2590E+01
             1.1715E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -689.686798446140        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  8.8874E-01  3.0953E+00  6.6275E+01  4.4659E+00  2.4434E+00  2.3131E+00  1.7530E+01  6.4882E-01  4.4647E+00  1.0240E+00
             1.2454E+01
 PARAMETER: -1.7947E-02  1.2299E+00  4.2938E+00  1.5965E+00  9.9337E-01  9.3857E-01  2.9639E+00 -3.3260E-01  1.5962E+00  1.2368E-01
             2.6220E+00
 GRADIENT:  -7.7352E+01  2.2715E+01 -2.8785E-01  4.4779E+01  1.5320E+01  4.6346E+01  2.9825E+01 -1.6065E-02  4.7446E+01  1.9259E+01
             1.3847E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -811.605412742153        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.4844E+00  1.2420E+00  6.1423E+00  1.3515E+00  1.7019E+00  2.6475E+00  5.3917E+00  4.2518E-01  1.4366E+00  4.5642E-01
             1.2904E+01
 PARAMETER:  4.9500E-01  3.1673E-01  1.9152E+00  4.0120E-01  6.3174E-01  1.0736E+00  1.7849E+00 -7.5524E-01  4.6230E-01 -6.8435E-01
             2.6575E+00
 GRADIENT:   3.5227E+01  9.1277E-01 -1.7899E+00 -8.1844E+00 -1.8089E+01  2.3289E+01  1.6346E+01  1.3137E-01  1.0661E+01  4.0350E+00
             1.9834E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -835.142022734968        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.2324E+00  9.4392E-01  2.0240E+01  1.3980E+00  2.0839E+00  2.4988E+00  5.5644E+00  2.2896E-01  1.4713E+00  1.9921E-01
             1.1058E+01
 PARAMETER:  3.0892E-01  4.2288E-02  3.1077E+00  4.3505E-01  8.3426E-01  1.0158E+00  1.8164E+00 -1.3742E+00  4.8612E-01 -1.5134E+00
             2.5032E+00
 GRADIENT:   6.2489E-01 -3.4928E+00  1.4867E-01  3.3177E-01 -2.0329E+00  9.4669E-01  3.4478E+00  3.6417E-03  9.7231E-01  7.3572E-01
             5.3154E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -835.703674740370        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.2368E+00  1.4476E+00  1.3268E+01  1.1044E+00  2.0928E+00  2.4937E+00  4.7359E+00  1.9039E-01  1.1968E+00  1.7273E-01
             1.1008E+01
 PARAMETER:  3.1255E-01  4.6993E-01  2.6853E+00  1.9926E-01  8.3851E-01  1.0138E+00  1.6552E+00 -1.5587E+00  2.7962E-01 -1.6560E+00
             2.4986E+00
 GRADIENT:   2.4239E+00  1.3773E+00  3.6442E-01  2.0231E-01  1.0664E-01 -6.2126E-02  1.3833E+00  3.3203E-03  1.4702E+00  5.8314E-01
            -3.6339E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -835.745031815634        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  1.2257E+00  1.5149E+00  1.1694E+01  1.0381E+00  2.0827E+00  2.4903E+00  4.5915E+00  1.6432E-01  1.0648E+00  1.4108E-01
             1.1032E+01
 PARAMETER:  3.0351E-01  5.1537E-01  2.5591E+00  1.3743E-01  8.3369E-01  1.0124E+00  1.6242E+00 -1.7060E+00  1.6283E-01 -1.8584E+00
             2.5008E+00
 GRADIENT:  -7.6745E-01 -1.6907E-01  4.4147E-01 -2.2585E+00  1.4646E-01 -3.6527E-01 -1.8045E-01  2.9901E-03  6.9648E-01  3.9556E-01
             2.4067E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -836.027943176797        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      515
 NPARAMETR:  1.2350E+00  1.4758E+00  9.9552E+00  1.0662E+00  2.0340E+00  2.4923E+00  4.6935E+00  1.3049E-01  1.0593E+00  9.7532E-02
             1.1024E+01
 PARAMETER:  3.1107E-01  4.8922E-01  2.3981E+00  1.6413E-01  8.1002E-01  1.0132E+00  1.6462E+00 -1.9365E+00  1.5762E-01 -2.2276E+00
             2.5001E+00
 GRADIENT:   1.8330E+00  1.0600E+00  4.1299E-01  7.0519E-01 -1.9453E+00  1.3304E-01  1.0102E+00  2.9156E-03 -8.9802E-03  1.9020E-01
            -2.3377E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -836.040887132884        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      587
 NPARAMETR:  1.2302E+00  1.4843E+00  8.7767E+00  1.0500E+00  2.0177E+00  2.4910E+00  4.6540E+00  1.0890E-01  1.0003E+00  7.3362E-02
             1.1032E+01
 PARAMETER:  3.0718E-01  4.9494E-01  2.2721E+00  1.4881E-01  8.0197E-01  1.0127E+00  1.6377E+00 -2.1173E+00  1.0030E-01 -2.5124E+00
             2.5008E+00
 GRADIENT:   4.0711E-01  2.8162E-01  6.0265E-02  1.2853E+00 -1.2013E-01  7.7208E-02 -8.5921E-02  2.7104E-03 -6.0505E-01  1.0897E-01
            -9.2941E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -836.040940547235        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      662
 NPARAMETR:  1.2298E+00  1.4850E+00  8.6907E+00  1.0492E+00  2.0156E+00  2.4908E+00  4.6510E+00  1.0829E-01  1.0022E+00  7.1619E-02
             1.1031E+01
 PARAMETER:  3.0688E-01  4.9540E-01  2.2622E+00  1.4800E-01  8.0091E-01  1.0126E+00  1.6371E+00 -2.1230E+00  1.0217E-01 -2.5364E+00
             2.5007E+00
 GRADIENT:   3.2470E-01  2.3852E-01  3.4901E-02  1.1546E+00 -7.6973E-02  5.4976E-02 -7.5473E-02  2.7293E-03 -5.4197E-01  1.0396E-01
            -8.8701E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -836.202317555450        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  1.2331E+00  1.3548E+00  9.3635E+00  1.1238E+00  2.0098E+00  2.5139E+00  4.9606E+00  1.0782E-01  1.0860E+00  6.6834E-02
             1.1068E+01
 PARAMETER:  3.0951E-01  4.0368E-01  2.3368E+00  2.1672E-01  7.9803E-01  1.0218E+00  1.7015E+00 -2.1273E+00  1.8254E-01 -2.6055E+00
             2.5041E+00
 GRADIENT:  -7.7168E-01 -4.5357E-01 -2.7695E-01 -1.7196E-01  5.4526E-01  5.4572E-02  3.0287E-01  2.6770E-03 -3.3401E-02  8.9179E-02
             9.5438E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -836.259151763794        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      997
 NPARAMETR:  1.2358E+00  1.3670E+00  1.0213E+01  1.1241E+00  2.0299E+00  2.5141E+00  4.9449E+00  5.6304E-02  1.0954E+00  1.0000E-02
             1.1066E+01
 PARAMETER:  3.1173E-01  4.1258E-01  2.4237E+00  2.1696E-01  8.0801E-01  1.0219E+00  1.6984E+00 -2.7770E+00  1.9114E-01 -4.6554E+00
             2.5039E+00
 GRADIENT:  -4.5392E-02 -1.6323E-02  3.6417E-03  1.9254E-02 -2.8227E-02  3.1347E-02 -3.7333E-02  5.9317E-04 -3.4800E-02  0.0000E+00
             2.2618E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -836.259453690373        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1174
 NPARAMETR:  1.2360E+00  1.3663E+00  1.0242E+01  1.1249E+00  2.0304E+00  2.5139E+00  4.9466E+00  1.9418E-02  1.0981E+00  1.0000E-02
             1.1066E+01
 PARAMETER:  3.1188E-01  4.1211E-01  2.4265E+00  2.1768E-01  8.0825E-01  1.0218E+00  1.6987E+00 -3.8415E+00  1.9355E-01 -7.7061E+00
             2.5039E+00
 GRADIENT:   5.8733E-03  1.2807E-04  3.0644E-03 -2.1860E-03 -1.0594E-02  9.6625E-04 -2.0626E-03  7.0101E-05 -1.4592E-04  0.0000E+00
             2.6088E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -836.259480668547        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1357
 NPARAMETR:  1.2360E+00  1.3663E+00  1.0234E+01  1.1249E+00  2.0304E+00  2.5141E+00  4.9467E+00  1.0000E-02  1.0978E+00  1.0000E-02
             1.1066E+01
 PARAMETER:  3.1187E-01  4.1213E-01  2.4257E+00  2.1766E-01  8.0821E-01  1.0219E+00  1.6987E+00 -4.6691E+00  1.9333E-01 -1.0070E+01
             2.5039E+00
 GRADIENT:   2.5198E-03  2.1386E-03 -9.1637E-05  5.6318E-03  4.6321E-03  2.0159E-02  4.5730E-03  0.0000E+00 -3.2782E-03  0.0000E+00
            -8.1911E-03

0ITERATION NO.:   68    OBJECTIVE VALUE:  -836.259480872768        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     1456
 NPARAMETR:  1.2360E+00  1.3664E+00  1.0234E+01  1.1250E+00  2.0303E+00  2.5141E+00  4.9465E+00  1.0000E-02  1.0978E+00  1.0000E-02
             1.1066E+01
 PARAMETER:  3.1187E-01  4.1210E-01  2.4257E+00  2.1764E-01  8.0820E-01  1.0219E+00  1.6988E+00 -4.6691E+00  1.9354E-01 -1.0070E+01
             2.5039E+00
 GRADIENT:  -2.8748E-04 -2.2360E-03 -1.2299E-05 -1.4683E-02  4.1919E-03 -8.3997E-04  6.6094E-03  0.0000E+00  2.5676E-03  0.0000E+00
             1.7928E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1456
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1565E-02  2.1932E-02 -7.8513E-06 -6.0502E-02  2.4750E-06
 SE:             2.8833E-02  2.5330E-02  1.0027E-05  1.2076E-02  1.0060E-04
 N:                     100         100         100         100         100

 P VAL.:         6.8835E-01  3.8656E-01  4.3360E-01  5.4488E-07  9.8037E-01

 ETASHRINKSD(%)  3.4053E+00  1.5142E+01  9.9966E+01  5.9544E+01  9.9663E+01
 ETASHRINKVR(%)  6.6947E+00  2.7992E+01  1.0000E+02  8.3633E+01  9.9999E+01
 EBVSHRINKSD(%)  3.2460E+00  1.0189E+01  9.9952E+01  6.5222E+01  9.9546E+01
 EBVSHRINKVR(%)  6.3866E+00  1.9340E+01  1.0000E+02  8.7905E+01  9.9998E+01
 RELATIVEINF(%)  9.3389E+01  3.6434E+01  4.5341E-06  5.5625E+00  4.0822E-04
 EPSSHRINKSD(%)  5.2202E+00
 EPSSHRINKVR(%)  1.0168E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -836.25948087276754     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       817.82987889564322     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    39.49
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    16.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -836.259       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.24E+00  1.37E+00  1.02E+01  1.12E+00  2.03E+00  2.51E+00  4.95E+00  1.00E-02  1.10E+00  1.00E-02  1.11E+01
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.54E+02
 
 TH 2
+       -7.53E+00  6.84E+00
 
 TH 3
+       -9.20E-02  1.79E-01  5.07E-02
 
 TH 4
+       -6.06E+01  2.77E+01 -1.76E-01  1.35E+02
 
 TH 5
+        5.73E+00 -9.56E+00 -2.16E+00 -1.36E+00  9.24E+01
 
 TH 6
+       -4.00E+01  3.28E+00  5.53E-02  1.94E+01 -3.23E+00  2.95E+01
 
 TH 7
+        7.85E+00 -2.99E+00 -5.38E-02 -1.35E+01  3.16E+00 -2.05E+00  1.48E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.86E+01 -6.70E+00 -9.33E-02 -3.08E+01  5.94E+00 -6.58E+00  3.30E+00  0.00E+00  7.57E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.43E+00 -1.39E+00 -8.67E-04 -5.46E+00  4.75E-01  1.32E+00  4.93E-01  0.00E+00  1.06E+00  0.00E+00  7.44E-01
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.05E+02
 
 TH 2
+       -4.77E-01  2.03E+01
 
 TH 3
+        2.37E-02  1.03E-01  3.80E-02
 
 TH 4
+       -3.33E+00  2.45E+01 -1.90E-01  1.13E+02
 
 TH 5
+       -2.01E+00 -6.50E+00 -1.19E+00 -9.08E-01  5.15E+01
 
 TH 6
+        7.55E-01 -9.15E-02  9.98E-03  8.97E-01 -1.05E+00  2.70E+01
 
 TH 7
+        3.93E-01  2.66E+00 -3.67E-02 -1.10E+01  1.18E+00 -2.43E-01  4.81E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        5.48E-01 -2.11E+00 -9.49E-02 -2.23E+01  2.80E+00 -2.35E-01  2.63E+00  0.00E+00  1.29E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.85E+00 -2.34E+00 -1.38E-02 -8.45E+00  8.61E-01  8.46E-01  5.71E-01  0.00E+00  2.23E+00  0.00E+00  7.32E+00
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.08E+02
 
 TH 2
+        3.53E+01  1.99E+01
 
 TH 3
+        1.14E-01  7.47E-02  1.50E-02
 
 TH 4
+        3.92E+01  2.78E+01  7.74E-03  1.24E+02
 
 TH 5
+       -1.00E+01 -3.73E+00 -5.95E-01 -5.10E+00  2.91E+01
 
 TH 6
+        3.45E+01  1.07E+01 -2.56E-02 -4.82E+00 -2.92E+00  3.60E+01
 
 TH 7
+        4.01E+00  3.10E+00 -3.36E-02 -1.27E+01  2.50E+00  5.79E+00  6.78E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -2.34E+00 -2.70E+00  8.64E-03 -2.91E+01  1.66E+00  1.22E+00  2.90E+00  0.00E+00  1.36E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.08E+01 -1.70E+01 -1.41E-01 -5.90E+01  1.10E+01 -4.40E+00  5.31E+00  0.00E+00  1.54E+01  0.00E+00  1.93E+02
 
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
 #CPUT: Total CPU Time in Seconds,       55.906
Stop Time:
Sat Sep 18 07:39:59 CDT 2021