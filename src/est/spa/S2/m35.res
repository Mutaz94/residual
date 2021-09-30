Wed Sep 29 17:20:15 CDT 2021
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
$DATA ../../../../data/spa/S2/dat35.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
 RAW OUTPUT FILE (FILE): m35.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1697.81647087872        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4370E+02 -4.6964E+00 -5.4514E+01  7.5936E+01  1.0005E+02  6.8969E+01  6.5284E-01  1.0862E+01  2.4672E+00 -1.1705E+01
             1.0724E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1706.14842321953        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0480E+00  1.0276E+00  1.1398E+00  1.0286E+00  9.9231E-01  9.2762E-01  9.9414E-01  8.8545E-01  1.0429E+00  1.0614E+00
             1.0051E+00
 PARAMETER:  1.4687E-01  1.2719E-01  2.3082E-01  1.2815E-01  9.2279E-02  2.4869E-02  9.4121E-02 -2.1658E-02  1.4199E-01  1.5955E-01
             1.0514E-01
 GRADIENT:  -1.6906E+01  3.1788E+01  3.0395E+00  3.8419E+01 -1.1278E+01 -1.1076E+01  2.2737E+00  2.9698E+00  2.2765E+00 -6.4776E+00
             6.7640E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1707.25319007642        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0481E+00  9.7737E-01  1.1921E+00  1.0513E+00  9.9932E-01  9.3562E-01  9.1191E-01  7.7297E-01  1.0446E+00  1.1454E+00
             1.0001E+00
 PARAMETER:  1.4698E-01  7.7112E-02  2.7575E-01  1.5001E-01  9.9320E-02  3.3453E-02  7.7866E-03 -1.5751E-01  1.4365E-01  2.3573E-01
             1.0008E-01
 GRADIENT:  -1.4557E+01  2.2157E+01  5.5978E+00  2.6720E+01 -1.3707E+01 -7.1507E+00  1.9349E-01 -6.2427E-01  2.1208E+00  8.9008E-02
             1.0988E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1707.99272191501        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      548
 NPARAMETR:  1.0531E+00  7.7277E-01  1.3355E+00  1.1735E+00  9.8357E-01  9.5385E-01  9.7171E-01  8.6185E-01  9.4563E-01  1.1567E+00
             9.9726E-01
 PARAMETER:  1.5177E-01 -1.5778E-01  3.8927E-01  2.6002E-01  8.3432E-02  5.2751E-02  7.1306E-02 -4.8675E-02  4.4094E-02  2.4555E-01
             9.7256E-02
 GRADIENT:   3.1293E+00  9.0768E+00  3.0758E+00  1.1888E+01 -4.9777E+00  1.5660E+00 -4.0177E-01 -3.0370E-01 -2.6396E+00 -7.1356E-01
            -7.7953E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1708.24348140248        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  1.0486E+00  5.5672E-01  1.4534E+00  1.3143E+00  9.5262E-01  9.4569E-01  9.6471E-01  9.2882E-01  8.8663E-01  1.1721E+00
             9.9770E-01
 PARAMETER:  1.4744E-01 -4.8570E-01  4.7393E-01  3.7333E-01  5.1460E-02  4.4163E-02  6.4068E-02  2.6163E-02 -2.0331E-02  2.5878E-01
             9.7694E-02
 GRADIENT:  -1.6560E+00  7.9695E+00  2.8278E+00  1.8490E+01 -6.9608E+00 -8.0246E-01 -4.0704E-01 -3.3129E-01 -2.1037E-01  7.0161E-01
            -1.3820E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1708.43539732640        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  1.0467E+00  4.0589E-01  1.5561E+00  1.4077E+00  9.3961E-01  9.4493E-01  1.0186E+00  1.0129E+00  8.4003E-01  1.1745E+00
             9.9688E-01
 PARAMETER:  1.4560E-01 -8.0167E-01  5.4218E-01  4.4194E-01  3.7711E-02  4.3356E-02  1.1847E-01  1.1279E-01 -7.4313E-02  2.6083E-01
             9.6879E-02
 GRADIENT:  -1.1460E+00  4.5574E+00  4.0407E+00  1.0097E+01 -6.8437E+00 -3.6219E-01 -1.7010E-01 -4.3976E-01  5.5303E-01  4.8139E-01
            -4.3864E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1708.44546684623        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1079
 NPARAMETR:  1.0457E+00  3.1644E-01  1.5907E+00  1.4679E+00  9.2450E-01  9.4464E-01  1.1036E+00  1.0484E+00  8.0757E-01  1.1636E+00
             9.9691E-01
 PARAMETER:  1.4464E-01 -1.0506E+00  5.6420E-01  4.8381E-01  2.1502E-02  4.3054E-02  1.9860E-01  1.4731E-01 -1.1373E-01  2.5154E-01
             9.6905E-02
 GRADIENT:  -6.2111E-01  4.9247E+00  3.5354E+00  1.6731E+01 -6.6155E+00 -8.4665E-02 -2.0676E-01 -5.3655E-01 -1.3267E+00 -2.7338E-02
            -6.6036E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1708.47293836525        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1254
 NPARAMETR:  1.0449E+00  2.4716E-01  1.6171E+00  1.5126E+00  9.1438E-01  9.4447E-01  1.1981E+00  1.0786E+00  7.8455E-01  1.1553E+00
             9.9711E-01
 PARAMETER:  1.4390E-01 -1.2977E+00  5.8063E-01  5.1382E-01  1.0491E-02  4.2869E-02  2.8071E-01  1.7563E-01 -1.4264E-01  2.4434E-01
             9.7105E-02
 GRADIENT:  -4.4981E-02  4.2078E+00  2.3904E+00  1.7933E+01 -4.8974E+00  1.6081E-01 -1.7051E-01 -5.2550E-01 -2.4358E+00 -4.4730E-01
            -6.8048E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1708.60235634876        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1433             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0442E+00  1.7353E-01  1.6467E+00  1.5544E+00  9.0632E-01  9.4414E-01  2.3787E+00  1.1101E+00  7.6427E-01  1.1491E+00
             9.9756E-01
 PARAMETER:  1.4326E-01 -1.6514E+00  5.9875E-01  5.4110E-01  1.6342E-03  4.2519E-02  9.6653E-01  2.0448E-01 -1.6884E-01  2.3901E-01
             9.7553E-02
 GRADIENT:   6.6123E+02  2.8937E+01  1.0110E+01  1.0296E+03  6.9702E+00  4.8005E+01  5.1071E+00  8.2612E-03  1.8228E+01  2.4433E+00
             1.0327E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1708.72317019394        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1612
 NPARAMETR:  1.0440E+00  1.3955E-01  1.6520E+00  1.5670E+00  9.0287E-01  9.4289E-01  1.6067E+00  1.1261E+00  7.6122E-01  1.1548E+00
             9.9715E-01
 PARAMETER:  1.4302E-01 -1.8693E+00  6.0200E-01  5.4915E-01 -2.1761E-03  4.1196E-02  5.7421E-01  2.1878E-01 -1.7283E-01  2.4393E-01
             9.7149E-02
 GRADIENT:   2.1933E+00  3.5631E-01 -1.5082E+00 -1.5656E+01  3.4684E+00  3.8838E-02  2.5456E-02  1.9577E-01  1.5331E+00  4.3246E-01
             2.8421E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1708.75129324253        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1792
 NPARAMETR:  1.0428E+00  1.1862E-01  1.6599E+00  1.5785E+00  8.9646E-01  9.4237E-01  1.3442E+00  1.1311E+00  7.5370E-01  1.1496E+00
             9.9675E-01
 PARAMETER:  1.4195E-01 -2.0319E+00  6.0677E-01  5.5651E-01 -9.3037E-03  4.0640E-02  3.9583E-01  2.2322E-01 -1.8276E-01  2.3944E-01
             9.6741E-02
 GRADIENT:   3.1286E-01  3.8969E-01  5.6763E-01 -1.8977E+01  2.3748E-02 -6.2457E-02 -3.7034E-03 -8.9521E-02 -1.4994E-01  2.4267E-01
            -1.4110E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1708.75771817750        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1957
 NPARAMETR:  1.0453E+00  1.1299E-01  1.6583E+00  1.5807E+00  8.9468E-01  9.4305E-01  1.5500E+00  1.1330E+00  7.5310E-01  1.1475E+00
             9.9699E-01
 PARAMETER:  1.4426E-01 -2.0804E+00  6.0579E-01  5.5786E-01 -1.1288E-02  4.1364E-02  5.3824E-01  2.2488E-01 -1.8355E-01  2.3755E-01
             9.6981E-02
 GRADIENT:   6.4193E+00  1.9134E-01  4.1985E-01 -2.2362E+01  3.9194E-01  2.3765E-01  8.1591E-03  3.1355E-02  6.7974E-01  2.5191E-01
             1.0475E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1708.76629848534        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2139
 NPARAMETR:  1.0433E+00  1.0429E-01  1.6577E+00  1.5878E+00  8.9356E-01  9.4259E-01  1.4539E+00  1.1328E+00  7.5098E-01  1.1458E+00
             9.9706E-01
 PARAMETER:  1.4235E-01 -2.1605E+00  6.0543E-01  5.6237E-01 -1.2538E-02  4.0876E-02  4.7427E-01  2.2468E-01 -1.8638E-01  2.3612E-01
             9.7055E-02
 GRADIENT:   1.8992E+00  3.3353E-01 -5.1784E-01 -1.8259E+01  1.7879E+00  8.7799E-02  2.2230E-03 -2.9420E-02  5.3103E-01 -5.1751E-03
             2.8223E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1708.76813347466        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2323             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0443E+00  8.5319E-02  1.6641E+00  1.5938E+00  8.8944E-01  9.4257E-01  1.3888E+00  1.1382E+00  7.4678E-01  1.1454E+00
             9.9703E-01
 PARAMETER:  1.4334E-01 -2.3614E+00  6.0926E-01  5.6610E-01 -1.7158E-02  4.0857E-02  4.2846E-01  2.2946E-01 -1.9199E-01  2.3577E-01
             9.7030E-02
 GRADIENT:   6.6450E+02  8.3020E+00  9.9726E+00  1.1174E+03  8.2468E+00  4.7397E+01  2.2523E-01  4.2796E-01  1.8211E+01  2.7426E+00
             9.3876E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1708.78731697947        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2502
 NPARAMETR:  1.0425E+00  8.1236E-02  1.6636E+00  1.6025E+00  8.8848E-01  9.4231E-01  1.2048E+00  1.1397E+00  7.4489E-01  1.1439E+00
             9.9697E-01
 PARAMETER:  1.4162E-01 -2.4104E+00  6.0900E-01  5.7156E-01 -1.8239E-02  4.0581E-02  2.8632E-01  2.3079E-01 -1.9452E-01  2.3446E-01
             9.6963E-02
 GRADIENT:   9.6961E-01  3.3750E-01 -1.6044E-01 -1.8086E+01  5.6376E-01  8.7234E-02  6.1516E-04 -4.2397E-02  3.0242E-01  2.0481E-01
            -2.2713E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1708.78778696782        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2683
 NPARAMETR:  1.0421E+00  7.3910E-02  1.6657E+00  1.6086E+00  8.8714E-01  9.4218E-01  1.0626E+00  1.1421E+00  7.4294E-01  1.1429E+00
             9.9697E-01
 PARAMETER:  1.4121E-01 -2.5049E+00  6.1025E-01  5.7535E-01 -1.9749E-02  4.0436E-02  1.6072E-01  2.3285E-01 -1.9714E-01  2.3359E-01
             9.6969E-02
 GRADIENT:   1.9188E-01  4.1697E-01 -2.8363E-01 -1.4756E+01  3.6554E-01  5.8393E-02  8.1892E-06 -6.6817E-02  2.4129E-01  1.7705E-01
            -5.6459E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1708.78786032255        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2864
 NPARAMETR:  1.0419E+00  6.9748E-02  1.6674E+00  1.6118E+00  8.8653E-01  9.4210E-01  9.3870E-01  1.1440E+00  7.4184E-01  1.1425E+00
             9.9699E-01
 PARAMETER:  1.4104E-01 -2.5629E+00  6.1126E-01  5.7737E-01 -2.0437E-02  4.0360E-02  3.6744E-02  2.3456E-01 -1.9862E-01  2.3319E-01
             9.6989E-02
 GRADIENT:  -1.0483E-01  4.3527E-01 -3.5002E-01 -1.3432E+01  2.9217E-01  4.4400E-02  1.3236E-05 -6.6814E-02  2.1483E-01  1.6748E-01
            -6.2139E-02

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1708.78793708647        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     3042
 NPARAMETR:  1.0418E+00  6.6724E-02  1.6690E+00  1.6141E+00  8.8620E-01  9.4206E-01  8.1795E-01  1.1456E+00  7.4103E-01  1.1422E+00
             9.9701E-01
 PARAMETER:  1.4094E-01 -2.6072E+00  6.1222E-01  5.7881E-01 -2.0807E-02  4.0315E-02 -1.0095E-01  2.3596E-01 -1.9971E-01  2.3295E-01
             9.7003E-02
 GRADIENT:  -2.4280E-01  4.4110E-01 -3.8475E-01 -1.2611E+01  2.5792E-01  3.9204E-02  5.9730E-05 -7.2784E-02  1.9575E-01  1.5248E-01
            -6.7873E-02

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1708.80750495577        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3230
 NPARAMETR:  1.0429E+00  5.9350E-02  1.6709E+00  1.6132E+00  8.8596E-01  9.4216E-01  7.3474E-01  1.1475E+00  7.4043E-01  1.1416E+00
             9.9710E-01
 PARAMETER:  1.4204E-01 -2.7243E+00  6.1334E-01  5.7821E-01 -2.1081E-02  4.0419E-02 -2.0824E-01  2.3759E-01 -2.0052E-01  2.3242E-01
             9.7094E-02
 GRADIENT:   2.9871E+00  3.9553E-02 -5.0375E-01 -2.6233E+01  2.0798E+00  1.3449E-01  1.4320E-03 -5.1662E-02  9.7700E-01  4.9008E-02
             1.1804E-01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1708.81507470469        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     3412
 NPARAMETR:  1.0433E+00  4.5811E-02  1.6769E+00  1.6195E+00  8.8276E-01  9.4208E-01  6.8606E-01  1.1534E+00  7.3490E-01  1.1405E+00
             9.9696E-01
 PARAMETER:  1.4239E-01 -2.9832E+00  6.1696E-01  5.8213E-01 -2.4707E-02  4.0338E-02 -2.7679E-01  2.4273E-01 -2.0802E-01  2.3143E-01
             9.6951E-02
 GRADIENT:   4.4993E+00 -3.0300E-02  5.3531E-01 -3.2136E+01  4.6678E-01  1.7691E-01  7.8212E-04 -5.6142E-02  2.4168E-01  2.9705E-01
             4.5400E-02

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1708.82559710039        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     3591
 NPARAMETR:  1.0429E+00  4.4633E-02  1.6756E+00  1.6232E+00  8.8170E-01  9.4198E-01  6.7698E-01  1.1549E+00  7.3439E-01  1.1379E+00
             9.9699E-01
 PARAMETER:  1.4200E-01 -3.0093E+00  6.1615E-01  5.8441E-01 -2.5904E-02  4.0232E-02 -2.9012E-01  2.4397E-01 -2.0872E-01  2.2916E-01
             9.6990E-02
 GRADIENT:   3.4955E+00  1.0486E-01  3.3346E-01 -2.4863E+01 -5.0282E-02  1.2983E-01  4.9119E-04 -1.7143E-02  1.5448E-01  1.1575E-01
            -3.8191E-02

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1708.82854656290        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     3771
 NPARAMETR:  1.0433E+00  4.1449E-02  1.6743E+00  1.6251E+00  8.8103E-01  9.4196E-01  6.5762E-01  1.1553E+00  7.3347E-01  1.1369E+00
             9.9699E-01
 PARAMETER:  1.4237E-01 -3.0833E+00  6.1540E-01  5.8555E-01 -2.6664E-02  4.0205E-02 -3.1913E-01  2.4434E-01 -2.0996E-01  2.2828E-01
             9.6985E-02
 GRADIENT:   4.5596E+00  8.6978E-02 -4.5092E-02 -2.5144E+01  5.5871E-01  1.3022E-01  4.2712E-04  2.9564E-02  1.4900E-01  5.3071E-02
            -3.3337E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1708.83105828105        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     3953
 NPARAMETR:  1.0419E+00  3.8004E-02  1.6726E+00  1.6270E+00  8.8005E-01  9.4161E-01  6.3613E-01  1.1548E+00  7.3278E-01  1.1358E+00
             9.9707E-01
 PARAMETER:  1.4105E-01 -3.1701E+00  6.1435E-01  5.8675E-01 -2.7772E-02  3.9841E-02 -3.5234E-01  2.4394E-01 -2.1091E-01  2.2734E-01
             9.7064E-02
 GRADIENT:   1.3571E+00  7.1943E-02 -3.2093E-01 -2.5433E+01  1.0258E+00  1.5501E-03  3.8073E-04  4.9216E-02  2.7937E-01  4.2704E-03
             3.9539E-02

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1708.83406350841        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     4138             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0427E+00  3.6353E-02  1.6722E+00  1.6281E+00  8.7837E-01  9.4190E-01  6.1773E-01  1.1535E+00  7.3199E-01  1.1351E+00
             9.9703E-01
 PARAMETER:  1.4185E-01 -3.2145E+00  6.1416E-01  5.8742E-01 -2.9689E-02  4.0140E-02 -3.8170E-01  2.4282E-01 -2.1199E-01  2.2671E-01
             9.7028E-02
 GRADIENT:   6.5436E+02  1.9932E+00  1.0064E+01  1.2179E+03  7.0539E+00  4.7197E+01  7.8067E-03  4.9677E-01  1.9689E+01  2.3775E+00
             7.6520E-01

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1708.83596012143        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     4314
 NPARAMETR:  1.0417E+00  3.2965E-02  1.6711E+00  1.6299E+00  8.7823E-01  9.4154E-01  6.1517E-01  1.1537E+00  7.3137E-01  1.1345E+00
             9.9703E-01
 PARAMETER:  1.4090E-01 -3.3123E+00  6.1348E-01  5.8850E-01 -2.9844E-02  3.9765E-02 -3.8586E-01  2.4299E-01 -2.1283E-01  2.2617E-01
             9.7030E-02
 GRADIENT:   1.2183E+00  5.8574E-02 -2.2186E-01 -2.5946E+01  8.3403E-01 -4.7028E-03  2.8765E-04  1.5356E-02  2.9928E-01  6.8023E-03
             2.2882E-02

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1708.83901230230        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     4498             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0426E+00  3.1246E-02  1.6708E+00  1.6310E+00  8.7691E-01  9.4184E-01  5.8937E-01  1.1535E+00  7.3059E-01  1.1338E+00
             9.9704E-01
 PARAMETER:  1.4176E-01 -3.3659E+00  6.1328E-01  5.8918E-01 -3.1345E-02  4.0085E-02 -4.2869E-01  2.4278E-01 -2.1391E-01  2.2554E-01
             9.7031E-02
 GRADIENT:   6.5376E+02  1.5359E+00  9.9012E+00  1.2262E+03  7.3620E+00  4.7173E+01  5.9050E-03  5.1916E-01  1.9910E+01  2.3391E+00
             7.8029E-01

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1708.84010179724        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     4679             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0426E+00  2.9608E-02  1.6706E+00  1.6328E+00  8.7598E-01  9.4181E-01  5.7401E-01  1.1532E+00  7.2973E-01  1.1333E+00
             9.9698E-01
 PARAMETER:  1.4170E-01 -3.4197E+00  6.1316E-01  5.9027E-01 -3.2417E-02  4.0048E-02 -4.5511E-01  2.4254E-01 -2.1508E-01  2.2515E-01
             9.6979E-02
 GRADIENT:   6.5338E+02  1.4312E+00  1.0132E+01  1.2322E+03  6.6961E+00  4.7159E+01  5.3004E-03  4.9343E-01  1.9869E+01  2.3798E+00
             7.2301E-01

0ITERATION NO.:  135    OBJECTIVE VALUE:  -1708.84291125723        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     4842
 NPARAMETR:  1.0427E+00  2.5591E-02  1.6702E+00  1.6335E+00  8.7596E-01  9.4181E-01  5.7247E-01  1.1535E+00  7.2937E-01  1.1329E+00
             9.9703E-01
 PARAMETER:  1.4181E-01 -3.5655E+00  6.1295E-01  5.9072E-01 -3.2436E-02  4.0043E-02 -4.5780E-01  2.4282E-01 -2.1558E-01  2.2475E-01
             9.7028E-02
 GRADIENT:   4.0439E-01 -8.1465E-03 -2.3250E-02 -2.8959E+00  3.9136E-01  1.3160E-02  3.9335E-05 -5.5253E-03  2.8097E-01  2.4106E-02
             2.0022E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     4842
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.1929E-04 -5.2267E-04 -2.6156E-02 -5.8143E-03 -3.4278E-02
 SE:             2.9855E-02  2.6389E-04  1.5005E-02  2.9199E-02  2.2565E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9147E-01  4.7633E-02  8.1321E-02  8.4217E-01  1.2875E-01

 ETASHRINKSD(%)  1.0000E-10  9.9116E+01  4.9730E+01  2.1786E+00  2.4404E+01
 ETASHRINKVR(%)  1.0000E-10  9.9992E+01  7.4729E+01  4.3096E+00  4.2852E+01
 EBVSHRINKSD(%)  4.4268E-01  9.9185E+01  5.3403E+01  2.3934E+00  2.0297E+01
 EBVSHRINKVR(%)  8.8339E-01  9.9993E+01  7.8287E+01  4.7294E+00  3.6475E+01
 RELATIVEINF(%)  9.6901E+01  3.5290E-04  4.6479E+00  5.8941E+00  9.7016E+00
 EPSSHRINKSD(%)  4.4344E+01
 EPSSHRINKVR(%)  6.9024E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1708.8429112572326     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -973.69208469349439     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    62.43
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.69
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1708.843       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  2.56E-02  1.67E+00  1.63E+00  8.76E-01  9.42E-01  5.72E-01  1.15E+00  7.29E-01  1.13E+00  9.97E-01
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.14E+03
 
 TH 2
+       -2.88E+01  3.50E+02
 
 TH 3
+       -1.23E+00  2.60E+01  7.00E+01
 
 TH 4
+       -1.16E+01  4.63E+02 -2.81E+01  7.46E+02
 
 TH 5
+       -2.94E-02 -1.99E+02 -1.79E+02 -5.17E+01  7.29E+02
 
 TH 6
+       -8.56E-01 -3.29E+00  1.03E-01 -1.83E+00  2.69E-01  2.21E+02
 
 TH 7
+        7.91E-02 -7.90E-03  1.16E-02 -2.13E-02  4.30E-03  2.21E-02  5.96E-02
 
 TH 8
+        3.57E-01 -1.18E+00 -1.94E+01 -2.95E+00 -2.55E-01 -1.27E-01 -1.92E-02  2.22E+01
 
 TH 9
+        2.32E+00 -9.83E+01  5.75E+00  8.03E-01 -1.16E+00 -1.21E+00  7.25E-02 -1.55E-01  3.41E+02
 
 TH10
+        6.14E-01  5.48E+00 -3.76E+00 -1.87E+00 -7.07E+01  5.53E-01 -4.00E-02  1.27E+01  9.09E-01  6.33E+01
 
 TH11
+       -8.54E+00 -1.30E+01 -8.11E+00 -9.95E+00  6.42E+00  2.62E+00 -2.40E-02  5.11E+00  1.12E+01  1.48E+01  2.16E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       68.165
Stop Time:
Wed Sep 29 17:21:25 CDT 2021
