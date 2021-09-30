Wed Sep 29 15:43:29 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat28.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m28.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1635.72246263813        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1346E+02 -8.4379E+01 -5.0528E+01 -6.2760E+01  9.9338E+01  3.9606E+01  2.5221E+00  3.0798E+00 -1.2517E+01  2.1165E+01
            -1.9351E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1648.73253244809        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.9022E-01  1.0284E+00  1.0898E+00  1.0762E+00  9.6664E-01  9.4777E-01  9.4595E-01  9.9831E-01  1.0769E+00  8.1217E-01
             1.1141E+00
 PARAMETER:  9.0174E-02  1.2799E-01  1.8602E-01  1.7347E-01  6.6074E-02  4.6361E-02  4.4438E-02  9.8311E-02  1.7409E-01 -1.0804E-01
             2.0808E-01
 GRADIENT:   1.8687E+01 -1.5092E-01 -1.1833E+00  3.9644E+00  2.1891E+01 -1.0251E+01  6.1995E+00 -5.1343E+00  5.4080E+00 -9.0325E-01
             2.0453E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1650.08349587667        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.9156E-01  9.3644E-01  1.1389E+00  1.1446E+00  9.3065E-01  9.7346E-01  8.2486E-01  1.0765E+00  1.0399E+00  7.5482E-01
             1.0822E+00
 PARAMETER:  9.1528E-02  3.4332E-02  2.3006E-01  2.3502E-01  2.8127E-02  7.3105E-02 -9.2540E-02  1.7371E-01  1.3910E-01 -1.8127E-01
             1.7900E-01
 GRADIENT:   2.2853E+01  1.6090E+01  8.8831E+00  1.8063E+01 -3.0839E+00  5.6401E-01  1.9141E-01 -4.8884E+00  1.0029E+00 -7.8385E+00
             7.2603E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1651.11815570808        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.7743E-01  8.5810E-01  1.2495E+00  1.1806E+00  9.5079E-01  9.7632E-01  6.3381E-01  1.2238E+00  1.0265E+00  8.5258E-01
             1.0457E+00
 PARAMETER:  7.7176E-02 -5.3035E-02  3.2276E-01  2.6598E-01  4.9534E-02  7.6039E-02 -3.5601E-01  3.0195E-01  1.2618E-01 -5.9485E-02
             1.4464E-01
 GRADIENT:  -7.1932E+00  2.4539E+00 -6.9308E-01 -2.7487E+00 -4.0046E+00  2.2597E+00  1.5987E-01  7.9839E-01 -2.8101E+00  2.6898E+00
            -3.2753E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1651.66187973869        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  9.7804E-01  5.9762E-01  1.3704E+00  1.3568E+00  9.0823E-01  9.6861E-01  4.1537E-01  1.2301E+00  9.2539E-01  8.2307E-01
             1.0536E+00
 PARAMETER:  7.7797E-02 -4.1481E-01  4.1513E-01  4.0515E-01  3.7412E-03  6.8109E-02 -7.7858E-01  3.0709E-01  2.2459E-02 -9.4710E-02
             1.5217E-01
 GRADIENT:  -1.1040E-02  6.8585E+00  2.1541E+00  1.3308E+01 -3.4331E+00 -1.9348E-02 -9.9057E-02 -6.2864E-01 -2.8401E+00 -2.9887E-01
            -1.0883E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1651.83902974526        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.7557E-01  4.3750E-01  1.3695E+00  1.4552E+00  8.6296E-01  9.6850E-01  2.1119E-01  1.2067E+00  8.6578E-01  8.0257E-01
             1.0536E+00
 PARAMETER:  7.5265E-02 -7.2667E-01  4.1447E-01  4.7514E-01 -4.7385E-02  6.7991E-02 -1.4550E+00  2.8787E-01 -4.4127E-02 -1.1994E-01
             1.5219E-01
 GRADIENT:  -1.5011E+00  4.1997E+00  1.4487E+00  1.1729E+01 -3.0231E+00  3.5520E-01 -1.0814E-02 -3.7731E-01 -1.7869E+00  5.6582E-01
            -9.1238E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1651.92262218437        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  9.7446E-01  3.1619E-01  1.3458E+00  1.5266E+00  8.2132E-01  9.6665E-01  8.6118E-02  1.1916E+00  8.2337E-01  7.7128E-01
             1.0564E+00
 PARAMETER:  7.4124E-02 -1.0514E+00  3.9699E-01  5.2307E-01 -9.6840E-02  6.6082E-02 -2.3520E+00  2.7531E-01 -9.4347E-02 -1.5970E-01
             1.5484E-01
 GRADIENT:  -2.4437E-01  2.6266E+00  2.2538E+00  8.0114E+00 -4.9076E+00 -5.6736E-02  1.4069E-04 -1.3640E-01 -1.5585E-01  4.1159E-01
             1.3183E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1651.96634977630        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1242
 NPARAMETR:  9.7487E-01  3.0920E-01  1.3449E+00  1.5232E+00  8.2153E-01  9.6683E-01  9.1232E-02  1.1936E+00  8.2015E-01  7.6945E-01
             1.0559E+00
 PARAMETER:  7.4550E-02 -1.0738E+00  3.9634E-01  5.2080E-01 -9.6592E-02  6.6265E-02 -2.2943E+00  2.7698E-01 -9.8264E-02 -1.6208E-01
             1.5435E-01
 GRADIENT:   1.1956E+00  5.3452E-02 -6.0433E-02 -8.2364E+00  9.9491E-01  6.4565E-02  5.6211E-04  2.4165E-02 -3.5656E-01  5.8420E-02
            -2.5704E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1651.96734841124        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  9.7483E-01  3.0878E-01  1.3444E+00  1.5242E+00  8.2078E-01  9.6679E-01  9.7732E-02  1.1935E+00  8.2069E-01  7.6866E-01
             1.0559E+00
 PARAMETER:  7.4512E-02 -1.0751E+00  3.9598E-01  5.2146E-01 -9.7500E-02  6.6229E-02 -2.2255E+00  2.7686E-01 -9.7604E-02 -1.6311E-01
             1.5437E-01
 GRADIENT:   1.1006E+00  3.2093E-01  3.8488E-01 -6.5420E+00 -4.5311E-03  4.7454E-02  5.8126E-04  2.8315E-02 -5.1700E-02  5.6298E-02
            -1.7965E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1651.96793661292        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1607
 NPARAMETR:  9.7482E-01  3.0799E-01  1.3436E+00  1.5246E+00  8.2022E-01  9.6679E-01  1.0448E-01  1.1928E+00  8.2041E-01  7.6826E-01
             1.0559E+00
 PARAMETER:  7.4502E-02 -1.0777E+00  3.9538E-01  5.2174E-01 -9.8185E-02  6.6226E-02 -2.1588E+00  2.7627E-01 -9.7951E-02 -1.6363E-01
             1.5438E-01
 GRADIENT:   1.1012E+00  3.3862E-01  4.7077E-01 -6.5458E+00 -1.7521E-01  4.7635E-02  5.6960E-04  2.1706E-02 -4.9517E-02  5.7353E-02
            -1.5429E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1651.96856615670        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1789
 NPARAMETR:  9.7481E-01  3.0711E-01  1.3428E+00  1.5251E+00  8.1969E-01  9.6678E-01  1.1147E-01  1.1921E+00  8.2008E-01  7.6789E-01
             1.0559E+00
 PARAMETER:  7.4489E-02 -1.0806E+00  3.9474E-01  5.2206E-01 -9.8834E-02  6.6221E-02 -2.0940E+00  2.7568E-01 -9.8353E-02 -1.6411E-01
             1.5439E-01
 GRADIENT:   1.1003E+00  3.4362E-01  4.7511E-01 -6.5485E+00 -2.0547E-01  4.7869E-02  5.5061E-04  1.9861E-02 -5.0912E-02  5.7281E-02
            -1.5979E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1651.96924815942        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1971
 NPARAMETR:  9.7480E-01  3.0612E-01  1.3419E+00  1.5256E+00  8.1917E-01  9.6678E-01  1.1869E-01  1.1914E+00  8.1972E-01  7.6750E-01
             1.0559E+00
 PARAMETER:  7.4476E-02 -1.0838E+00  3.9410E-01  5.2241E-01 -9.9466E-02  6.6215E-02 -2.0312E+00  2.7514E-01 -9.8787E-02 -1.6461E-01
             1.5439E-01
 GRADIENT:   1.1006E+00  3.3159E-01  4.2881E-01 -6.6128E+00 -1.4121E-01  4.7188E-02  5.2948E-04  2.2500E-02 -4.5854E-02  5.3288E-02
            -1.5949E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1651.96996787570        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2157             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7480E-01  3.0524E-01  1.3403E+00  1.5256E+00  8.1883E-01  9.6678E-01  1.3117E-01  1.1906E+00  8.1967E-01  7.6694E-01
             1.0559E+00
 PARAMETER:  7.4481E-02 -1.0866E+00  3.9291E-01  5.2239E-01 -9.9873E-02  6.6218E-02 -1.9313E+00  2.7445E-01 -9.8849E-02 -1.6535E-01
             1.5441E-01
 GRADIENT:   3.2954E+02  2.8728E+01  7.9887E+00  5.5501E+02  7.7722E+00  2.7294E+01  7.9573E-02  1.0424E+00  7.6009E+00  7.4600E-01
             1.2333E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1651.97023207708        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2340
 NPARAMETR:  9.7480E-01  3.0474E-01  1.3393E+00  1.5257E+00  8.1854E-01  9.6678E-01  1.4160E-01  1.1900E+00  8.1957E-01  7.6666E-01
             1.0559E+00
 PARAMETER:  7.4481E-02 -1.0883E+00  3.9218E-01  5.2244E-01 -1.0024E-01  6.6219E-02 -1.8548E+00  2.7391E-01 -9.8970E-02 -1.6571E-01
             1.5442E-01
 GRADIENT:   1.1714E+00  1.1790E-02 -2.6837E-01 -8.0794E+00  1.1867E+00  5.2951E-02  6.1682E-04  6.9937E-02  1.2399E-01 -2.3709E-02
             6.9456E-03

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1651.97081581083        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:     2509
 NPARAMETR:  9.7480E-01  3.0462E-01  1.3389E+00  1.5259E+00  8.1815E-01  9.6678E-01  1.4964E-01  1.1893E+00  8.1941E-01  7.6648E-01
             1.0559E+00
 PARAMETER:  7.4474E-02 -1.0887E+00  3.9182E-01  5.2258E-01 -1.0071E-01  6.6217E-02 -1.7995E+00  2.7336E-01 -9.9167E-02 -1.6595E-01
             1.5442E-01
 GRADIENT:   1.1520E+00  1.0422E-01 -5.4941E-02 -7.6953E+00  7.6344E-01  5.1387E-02  4.9532E-04  5.0262E-02  8.0360E-02 -5.9953E-03
            -1.3608E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2509
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.6714E-04 -1.5902E-03 -2.7019E-02 -3.8070E-03 -3.1902E-02
 SE:             2.9834E-02  8.6741E-04  1.8819E-02  2.9226E-02  1.9656E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9018E-01  6.6756E-02  1.5108E-01  8.9636E-01  1.0459E-01

 ETASHRINKSD(%)  5.1736E-02  9.7094E+01  3.6952E+01  2.0904E+00  3.4149E+01
 ETASHRINKVR(%)  1.0345E-01  9.9916E+01  6.0250E+01  4.1371E+00  5.6637E+01
 EBVSHRINKSD(%)  4.7301E-01  9.7364E+01  3.8781E+01  2.5768E+00  3.2785E+01
 EBVSHRINKVR(%)  9.4379E-01  9.9931E+01  6.2522E+01  5.0872E+00  5.4821E+01
 RELATIVEINF(%)  9.7658E+01  4.3316E-03  6.8984E+00  8.1570E+00  4.8994E+00
 EPSSHRINKSD(%)  4.4413E+01
 EPSSHRINKVR(%)  6.9101E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1651.9708158108306     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -916.81998924709239     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    31.63
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1651.971       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  3.05E-01  1.34E+00  1.53E+00  8.18E-01  9.67E-01  1.50E-01  1.19E+00  8.19E-01  7.66E-01  1.06E+00
 


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
+        1.24E+03
 
 TH 2
+       -2.74E+01  3.91E+02
 
 TH 3
+        1.87E+00  8.79E+01  1.71E+02
 
 TH 4
+       -1.09E+01  4.29E+02 -1.53E+01  6.75E+02
 
 TH 5
+        2.97E+00 -3.68E+02 -3.97E+02 -8.00E+01  1.30E+03
 
 TH 6
+        1.13E-01 -2.22E+00  6.44E-01 -2.33E+00 -1.03E+00  2.09E+02
 
 TH 7
+        2.98E-02 -8.51E-01 -1.65E-02 -4.57E-01  3.42E-01 -2.52E-02 -4.54E-02
 
 TH 8
+        2.77E-01  1.48E+00 -3.31E+01 -2.67E+00 -1.28E+01  2.10E-01  4.68E-02  3.83E+01
 
 TH 9
+        2.41E+00 -9.98E+01  4.89E+00  2.88E-01  3.24E+00 -1.09E+00  1.04E+00 -1.97E-01  2.68E+02
 
 TH10
+        3.16E-01  9.61E+00  1.68E-01 -4.12E-01 -1.06E+02  1.84E-02  2.12E-01  1.92E+01  1.85E+00  9.51E+01
 
 TH11
+       -7.88E+00 -7.00E+00 -4.06E+00 -7.03E+00 -1.27E+01  2.56E+00  1.02E-01  7.01E+00  1.09E+01  1.65E+01  1.90E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       37.094
Stop Time:
Wed Sep 29 15:44:07 CDT 2021
