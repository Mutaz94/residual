Sat Sep 18 09:43:18 CDT 2021
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
$DATA ../../../../data/spa/A2/dat23.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1141.00469932398        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4897E+00  6.2587E+01  3.2570E+01  6.2604E+01  9.7176E+01  2.2934E+01 -1.9554E+01 -2.8444E+01 -5.1975E+01 -2.9437E+01
            -9.4255E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1449.55826489834        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0543E+00  9.4612E-01  9.3704E-01  1.0287E+00  8.9251E-01  8.7658E-01  9.8031E-01  1.0440E+00  1.0825E+00  8.3415E-01
             2.5218E+00
 PARAMETER:  1.5291E-01  4.4618E-02  3.4969E-02  1.2834E-01 -1.3722E-02 -3.1726E-02  8.0110E-02  1.4303E-01  1.7932E-01 -8.1340E-02
             1.0250E+00
 GRADIENT:   6.2164E+01  1.7786E+01  7.2802E+00  1.8856E+01 -1.6153E+01 -1.7285E+01  4.9989E+00  8.4528E-01  7.1997E+00  1.7773E+01
             3.7891E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1455.11051362405        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0609E+00  1.0064E+00  5.4307E-01  9.6713E-01  7.1591E-01  9.4641E-01  1.0369E+00  1.0422E+00  9.9647E-01  4.5163E-01
             2.4324E+00
 PARAMETER:  1.5909E-01  1.0642E-01 -5.1051E-01  6.6574E-02 -2.3420E-01  4.4923E-02  1.3619E-01  1.4137E-01  9.6462E-02 -6.9490E-01
             9.8887E-01
 GRADIENT:   6.1845E+01  1.0800E+01 -2.6581E+01  5.4161E+01  3.2108E+01  7.5533E+00  5.4811E+00  7.8520E+00 -2.6203E+00  7.5851E+00
             3.0120E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1461.94387688767        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0232E+00  7.7686E-01  3.0869E-01  9.7398E-01  4.4657E-01  9.3780E-01  1.2197E+00  4.6720E-01  8.7804E-01  2.7896E-01
             2.1582E+00
 PARAMETER:  1.2289E-01 -1.5249E-01 -1.0754E+00  7.3639E-02 -7.0615E-01  3.5782E-02  2.9860E-01 -6.6099E-01 -3.0063E-02 -1.1767E+00
             8.6927E-01
 GRADIENT:  -1.5355E+01  4.5002E+01  2.8450E+01  1.1766E+01 -5.1049E+01  1.5238E+00  6.8564E+00 -2.3753E+00 -7.5823E+00  1.0163E+00
            -3.3672E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1464.18694152540        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  1.0242E+00  7.3705E-01  2.1640E-01  8.9767E-01  3.8217E-01  9.4444E-01  1.0851E+00  6.9506E-01  9.4037E-01  1.5706E-01
             2.0939E+00
 PARAMETER:  1.2388E-01 -2.0510E-01 -1.4306E+00 -7.9474E-03 -8.6188E-01  4.2834E-02  1.8166E-01 -2.6376E-01  3.8513E-02 -1.7511E+00
             8.3903E-01
 GRADIENT:   9.1953E+00 -4.6118E+00 -4.7095E+00 -1.3938E+01  4.4759E+00  3.3327E+00  2.1233E+00 -1.0106E+00  4.2369E+00  8.4455E-01
             5.4149E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1464.97807834531        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      422
 NPARAMETR:  1.0257E+00  6.9989E-01  2.3839E-01  9.3849E-01  3.8316E-01  9.4018E-01  1.1365E+00  7.7082E-01  9.1281E-01  1.4823E-01
             2.0716E+00
 PARAMETER:  1.2538E-01 -2.5684E-01 -1.3339E+00  3.6520E-02 -8.5931E-01  3.8319E-02  2.2793E-01 -1.6030E-01  8.7695E-03 -1.8090E+00
             8.2830E-01
 GRADIENT:  -6.2729E+00 -2.2003E+00 -1.8571E+00 -3.6221E+00 -2.4525E+00  8.2762E-01  5.5332E-01  2.5336E-01  4.2412E-01  6.3900E-01
             4.9781E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1465.55703533894        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      598
 NPARAMETR:  1.0238E+00  8.3193E-01  2.4420E-01  8.8928E-01  4.3383E-01  9.3280E-01  1.0314E+00  8.0992E-01  9.2958E-01  6.6036E-02
             2.1024E+00
 PARAMETER:  1.2357E-01 -8.4008E-02 -1.3098E+00 -1.7339E-02 -7.3510E-01  3.0439E-02  1.3096E-01 -1.1081E-01  2.6975E-02 -2.6175E+00
             8.4310E-01
 GRADIENT:  -5.8970E+00 -7.5698E-01 -7.6440E-01  1.1323E+00  1.6064E+00  9.0418E-02 -4.0686E-01  2.5957E-01 -7.5467E-01  1.9579E-01
            -2.3592E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1465.71960271259        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      773
 NPARAMETR:  1.0200E+00  1.0246E+00  2.2965E-01  7.9537E-01  4.9763E-01  9.2745E-01  9.0262E-01  8.8291E-01  9.8800E-01  1.0000E-02
             2.1416E+00
 PARAMETER:  1.1985E-01  1.2432E-01 -1.3712E+00 -1.2895E-01 -5.9790E-01  2.4680E-02 -2.4545E-03 -2.4531E-02  8.7923E-02 -5.2129E+00
             8.6155E-01
 GRADIENT:  -6.8499E+00  1.3736E+01  5.6380E+00  3.1196E+00 -1.6320E+01  7.7048E-01 -2.1102E+00 -6.5622E-01 -7.4825E-01  0.0000E+00
            -2.2039E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1468.70193581963        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      954
 NPARAMETR:  1.0131E+00  1.4820E+00  1.8613E-01  5.7912E-01  7.0863E-01  9.1414E-01  8.0079E-01  1.8565E+00  1.1329E+00  1.0000E-02
             2.1579E+00
 PARAMETER:  1.1302E-01  4.9342E-01 -1.5813E+00 -4.4624E-01 -2.4442E-01  1.0225E-02 -1.2215E-01  7.1870E-01  2.2481E-01 -1.8572E+01
             8.6915E-01
 GRADIENT:  -1.1939E+02  1.8609E+01 -5.6976E+01  1.9560E+02  1.7625E+02  8.8029E+00  9.3601E+00  8.9265E+00  5.8728E+00  0.0000E+00
            -6.2807E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1474.97272489781        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1132
 NPARAMETR:  1.0143E+00  1.7436E+00  1.3079E-01  4.0197E-01  8.3798E-01  9.0423E-01  6.9937E-01  1.9020E+00  1.5514E+00  1.0000E-02
             2.1859E+00
 PARAMETER:  1.1420E-01  6.5594E-01 -1.9341E+00 -8.1137E-01 -7.6765E-02 -6.6639E-04 -2.5758E-01  7.4290E-01  5.3914E-01 -3.2651E+01
             8.8204E-01
 GRADIENT:  -1.3210E+01 -2.6848E+01 -7.4742E+00  2.1250E+01  3.1467E+01 -1.3475E+00 -2.3889E+00 -4.5953E-01  2.5868E+00  0.0000E+00
             4.6483E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1477.06000355988        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1311
 NPARAMETR:  1.0180E+00  2.0011E+00  8.2240E-02  2.5150E-01  9.8668E-01  9.0752E-01  6.7816E-01  2.1051E+00  2.0781E+00  1.0000E-02
             2.2536E+00
 PARAMETER:  1.1781E-01  7.9368E-01 -2.3981E+00 -1.2803E+00  8.6592E-02  2.9651E-03 -2.8837E-01  8.4435E-01  8.3147E-01 -5.1073E+01
             9.1251E-01
 GRADIENT:  -9.6925E+00 -5.4472E+00 -3.3067E+00  7.6526E+00  1.2013E+01  5.8678E-01  7.9545E-01  2.4026E+00  1.1810E+00  0.0000E+00
             1.1795E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1477.24747726422        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1479
 NPARAMETR:  1.0188E+00  2.0166E+00  7.8309E-02  2.3058E-01  9.9463E-01  9.0513E-01  6.7527E-01  1.6238E+00  2.1338E+00  1.0000E-02
             2.2592E+00
 PARAMETER:  1.1858E-01  8.0143E-01 -2.4471E+00 -1.3672E+00  9.4619E-02  3.1793E-04 -2.9265E-01  5.8476E-01  8.5790E-01 -5.2678E+01
             9.1502E-01
 GRADIENT:   2.9147E+00  1.6121E+01  5.3892E+00 -4.5778E+00  3.7683E+00 -2.8083E-01  3.8417E-01 -1.3138E+00 -3.8831E+00  0.0000E+00
             1.8915E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1477.25862722702        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1608
 NPARAMETR:  1.0187E+00  2.0160E+00  7.8238E-02  2.3073E-01  9.9467E-01  9.0768E-01  6.7519E-01  1.6261E+00  2.1345E+00  1.0000E-02
             2.2529E+00
 PARAMETER:  1.1854E-01  8.0114E-01 -2.4480E+00 -1.3665E+00  9.4656E-02  3.1319E-03 -2.9275E-01  5.8616E-01  8.5822E-01 -5.2678E+01
             9.1222E-01
 GRADIENT:   3.1288E+00  1.5378E+01  5.1751E+00 -4.3451E+00  4.7511E+00  7.2389E-01  2.4525E-01 -1.2766E+00 -3.9050E+00  0.0000E+00
             2.9375E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1477.34955127072        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1743
 NPARAMETR:  1.0213E+00  2.0204E+00  7.2600E-02  2.3629E-01  9.9134E-01  9.0734E-01  6.7544E-01  1.8253E+00  2.2049E+00  1.0000E-02
             2.2542E+00
 PARAMETER:  1.2111E-01  8.0329E-01 -2.5228E+00 -1.3427E+00  9.1298E-02  2.7661E-03 -2.9240E-01  7.0176E-01  8.9069E-01 -5.2678E+01
             9.1281E-01
 GRADIENT:   1.1355E+01  1.9955E+01 -2.5079E+00  9.3267E+00  7.9236E+00  9.0625E-01  1.2613E+00  1.8815E+00  3.0715E+00  0.0000E+00
             8.7994E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1477.74869681623        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1925
 NPARAMETR:  1.0194E+00  2.0287E+00  5.9541E-02  2.1776E-01  9.8094E-01  9.0836E-01  6.7152E-01  9.6692E-01  2.2966E+00  1.0000E-02
             2.2591E+00
 PARAMETER:  1.1923E-01  8.0742E-01 -2.7211E+00 -1.4244E+00  8.0757E-02  3.8852E-03 -2.9822E-01  6.6365E-02  9.3143E-01 -5.2678E+01
             9.1498E-01
 GRADIENT:   6.3234E-01 -7.6616E+00 -8.4060E-01  1.0816E+00 -4.3962E+00  6.0053E-02 -4.5099E-01 -6.0363E-02 -1.3641E+00  0.0000E+00
            -1.1743E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1477.97669081099        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2112
 NPARAMETR:  1.0201E+00  2.0616E+00  5.4485E-02  2.0414E-01  1.0016E+00  9.0952E-01  6.7259E-01  7.4762E-01  2.4851E+00  1.0000E-02
             2.2762E+00
 PARAMETER:  1.1986E-01  8.2346E-01 -2.8098E+00 -1.4889E+00  1.0165E-01  5.1575E-03 -2.9662E-01 -1.9087E-01  1.0103E+00 -5.2678E+01
             9.2253E-01
 GRADIENT:   7.6974E-01  1.7777E-01 -1.2235E+00  4.9573E+00 -4.7478E+00  3.1445E-01  1.3748E+00  1.6070E-02  2.0443E+00  0.0000E+00
             1.7076E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1477.98663133357        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     2272
 NPARAMETR:  1.0201E+00  2.0607E+00  5.4564E-02  2.0399E-01  1.0018E+00  9.0951E-01  6.6865E-01  7.4751E-01  2.4838E+00  1.0000E-02
             2.2773E+00
 PARAMETER:  1.1992E-01  8.2303E-01 -2.8084E+00 -1.4897E+00  1.0179E-01  5.1544E-03 -3.0249E-01 -1.9100E-01  1.0098E+00 -5.2678E+01
             9.2300E-01
 GRADIENT:   1.1453E+01  2.4584E+01 -6.4272E-01  6.3999E+00 -4.2171E+00  9.5421E-01  4.5866E-01  9.1659E-03  2.4607E+00  0.0000E+00
             2.4957E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1478.05337718272        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:     2391
 NPARAMETR:  1.0197E+00  2.0607E+00  5.5067E-02  2.0092E-01  1.0037E+00  9.0898E-01  6.6865E-01  7.4769E-01  2.4617E+00  1.0000E-02
             2.2732E+00
 PARAMETER:  1.1953E-01  8.2306E-01 -2.7992E+00 -1.5049E+00  1.0372E-01  4.5629E-03 -3.0249E-01 -1.9076E-01  1.0009E+00 -5.2678E+01
             9.2118E-01
 GRADIENT:   1.0310E+01  2.1753E+01  6.9652E-01  2.8977E+00 -4.8360E+00  7.6791E-01  2.1487E-01 -8.7148E-02  3.2137E-01  0.0000E+00
             1.2915E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1478.05776532058        NO. OF FUNC. EVALS.: 125
 CUMULATIVE NO. OF FUNC. EVALS.:     2516
 NPARAMETR:  1.0198E+00  2.0624E+00  5.5221E-02  2.0122E-01  1.0036E+00  9.0716E-01  6.6884E-01  8.1663E-01  2.4642E+00  1.0000E-02
             2.2711E+00
 PARAMETER:  1.1965E-01  8.2388E-01 -2.7964E+00 -1.5034E+00  1.0362E-01  2.5681E-03 -3.0221E-01 -1.0257E-01  1.0019E+00 -5.2678E+01
             9.2026E-01
 GRADIENT:   1.0551E+01  2.5357E+01  5.5473E-01  3.3524E+00 -6.3934E+00  8.0722E-02  2.7345E-01 -2.4984E-02  7.6783E-01  0.0000E+00
             8.8964E-01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1478.05854070718        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:     2673
 NPARAMETR:  1.0198E+00  2.0624E+00  5.5221E-02  2.0122E-01  1.0036E+00  9.0854E-01  6.6931E-01  8.3432E-01  2.4642E+00  1.0000E-02
             2.2711E+00
 PARAMETER:  1.1965E-01  8.2388E-01 -2.7964E+00 -1.5034E+00  1.0362E-01  4.0889E-03 -3.0151E-01 -8.1133E-02  1.0019E+00 -5.2678E+01
             9.2026E-01
 GRADIENT:  -2.2282E-02 -1.1873E+00  3.0891E-03  1.5967E+00 -6.6937E+00  1.6458E-02 -6.0323E-03 -2.1137E-04  3.1545E-01  0.0000E+00
             2.6097E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1478.08151984015        NO. OF FUNC. EVALS.: 124
 CUMULATIVE NO. OF FUNC. EVALS.:     2797
 NPARAMETR:  1.0198E+00  2.0628E+00  5.5210E-02  2.0011E-01  1.0064E+00  9.0847E-01  6.6933E-01  8.3728E-01  2.4610E+00  1.0000E-02
             2.2705E+00
 PARAMETER:  1.1961E-01  8.2407E-01 -2.7966E+00 -1.5089E+00  1.0642E-01  4.0066E-03 -3.0148E-01 -7.7597E-02  1.0006E+00 -5.2678E+01
             9.2000E-01
 GRADIENT:   1.0296E+01  2.1496E+01  5.4050E-01  2.9363E+00 -3.6539E+00  6.4426E-01  4.7059E-01 -2.7842E-02  1.9160E-01  0.0000E+00
             6.2621E-01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1478.08201084604        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     2926
 NPARAMETR:  1.0199E+00  2.0637E+00  5.5287E-02  2.0026E-01  1.0064E+00  9.0805E-01  6.6943E-01  8.4267E-01  2.4622E+00  1.0000E-02
             2.2695E+00
 PARAMETER:  1.1967E-01  8.2449E-01 -2.7952E+00 -1.5081E+00  1.0637E-01  3.5418E-03 -3.0133E-01 -7.1178E-02  1.0011E+00 -5.2678E+01
             9.1954E-01
 GRADIENT:   1.0387E+01  2.3434E+01  5.9661E-01  3.0973E+00 -4.2602E+00  4.5491E-01  4.8729E-01 -2.6062E-02  2.8844E-01  0.0000E+00
             3.4909E-01

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1478.08201177755        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:     3020
 NPARAMETR:  1.0199E+00  2.0637E+00  5.5287E-02  2.0026E-01  1.0064E+00  9.0778E-01  6.6943E-01  8.4539E-01  2.4622E+00  1.0000E-02
             2.2695E+00
 PARAMETER:  1.1967E-01  8.2448E-01 -2.7952E+00 -1.5081E+00  1.0637E-01  3.2470E-03 -3.0133E-01 -6.7952E-02  1.0011E+00 -5.2678E+01
             9.1954E-01
 GRADIENT:  -2.2092E-01 -3.0619E+00  1.2960E-01  1.3172E+00 -4.4631E+00 -2.9942E-01  2.3376E-02 -2.3622E-02 -2.3449E-01  0.0000E+00
            -3.8332E-01

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1478.08436534356        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3208
 NPARAMETR:  1.0199E+00  2.0658E+00  5.5285E-02  2.0016E-01  1.0064E+00  9.0853E-01  6.6943E-01  8.6379E-01  2.4624E+00  1.0000E-02
             2.2696E+00
 PARAMETER:  1.1967E-01  8.2551E-01 -2.7953E+00 -1.5086E+00  1.0638E-01  4.0692E-03 -3.0133E-01 -4.6425E-02  1.0011E+00 -5.2678E+01
             9.1959E-01
 GRADIENT:  -3.8679E-01  6.5981E-01  1.6857E-01  1.4311E+00 -6.0650E+00  5.8345E-03  3.1217E-02 -2.0687E-03 -2.3648E-01  0.0000E+00
            -4.1094E-01

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1478.08448599005        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     3388
 NPARAMETR:  1.0199E+00  2.0660E+00  5.5282E-02  2.0012E-01  1.0064E+00  9.0842E-01  6.6943E-01  8.7709E-01  2.4624E+00  1.0000E-02
             2.2696E+00
 PARAMETER:  1.1967E-01  8.2561E-01 -2.7953E+00 -1.5088E+00  1.0638E-01  3.9551E-03 -3.0133E-01 -3.1141E-02  1.0011E+00 -5.2678E+01
             9.1961E-01
 GRADIENT:  -3.8589E-01  9.3271E-01  1.2111E-01  1.4489E+00 -6.3289E+00 -1.6724E-02  3.9601E-02  1.7331E-02 -1.8761E-01  0.0000E+00
            -3.7565E-01

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1478.09478128500        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3569
 NPARAMETR:  1.0199E+00  2.0670E+00  5.5051E-02  1.9765E-01  1.0067E+00  9.0827E-01  6.6942E-01  8.6764E-01  2.4665E+00  1.0000E-02
             2.2725E+00
 PARAMETER:  1.1971E-01  8.2610E-01 -2.7995E+00 -1.5213E+00  1.0663E-01  3.7919E-03 -3.0135E-01 -4.1974E-02  1.0028E+00 -5.2678E+01
             9.2088E-01
 GRADIENT:  -1.7719E-01 -1.1898E-01  7.3599E-01 -4.9405E-01 -9.1942E+00  2.1865E-03  7.7857E-02 -3.9825E-04 -7.4467E-01  0.0000E+00
             4.2482E-01

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1478.09658131055        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3753
 NPARAMETR:  1.0199E+00  2.0685E+00  5.4879E-02  1.9764E-01  1.0067E+00  9.0774E-01  6.6942E-01  8.9025E-01  2.4686E+00  1.0000E-02
             2.2722E+00
 PARAMETER:  1.1971E-01  8.2681E-01 -2.8026E+00 -1.5213E+00  1.0670E-01  3.2057E-03 -3.0135E-01 -1.6258E-02  1.0037E+00 -5.2678E+01
             9.2076E-01
 GRADIENT:  -1.8236E-01  2.0413E+00  4.8480E-01 -6.1802E-02 -9.9487E+00 -1.8692E-01  9.6163E-02  4.7363E-02 -5.8589E-01  0.0000E+00
             2.6735E-01

0ITERATION NO.:  135    OBJECTIVE VALUE:  -1478.11856867687        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     3931
 NPARAMETR:  1.0200E+00  2.0733E+00  5.2648E-02  1.9415E-01  1.0078E+00  9.0757E-01  6.6937E-01  7.8946E-01  2.4980E+00  1.0000E-02
             2.2731E+00
 PARAMETER:  1.1982E-01  8.2916E-01 -2.8441E+00 -1.5391E+00  1.0779E-01  3.0122E-03 -3.0142E-01 -1.3641E-01  1.0155E+00 -5.2678E+01
             9.2116E-01
 GRADIENT:   8.5679E-01  2.4215E+00 -5.1320E-01  1.7800E-01 -1.1901E+01 -2.0356E-01  2.2003E-01  4.7521E-02 -8.3684E-01  0.0000E+00
            -3.9984E-01

0ITERATION NO.:  140    OBJECTIVE VALUE:  -1478.12189761445        NO. OF FUNC. EVALS.: 206
 CUMULATIVE NO. OF FUNC. EVALS.:     4137             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0200E+00  2.0729E+00  5.2678E-02  1.9405E-01  1.0080E+00  9.0762E-01  6.6880E-01  7.8809E-01  2.4975E+00  1.0000E-02
             2.2737E+00
 PARAMETER:  1.1985E-01  8.2894E-01 -2.8436E+00 -1.5396E+00  1.0801E-01  3.0681E-03 -3.0228E-01 -1.3814E-01  1.0153E+00 -5.2678E+01
             9.2141E-01
 GRADIENT:   1.1525E+01  2.7985E+01 -3.6372E-03  1.7875E+00 -1.1266E+01  4.6772E-01  4.9581E-01  4.3388E-02 -3.5763E-01  0.0000E+00
             4.6469E-01

0ITERATION NO.:  145    OBJECTIVE VALUE:  -1478.12830895584        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     4332             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0200E+00  2.0729E+00  5.2715E-02  1.9406E-01  1.0086E+00  9.0775E-01  6.6880E-01  7.8642E-01  2.4975E+00  1.0000E-02
             2.2736E+00
 PARAMETER:  1.1983E-01  8.2896E-01 -2.8429E+00 -1.5396E+00  1.0855E-01  3.2118E-03 -3.0227E-01 -1.4026E-01  1.0153E+00 -5.2678E+01
             9.2138E-01
 GRADIENT:   1.1400E+01  2.7465E+01  1.2790E-03  1.8797E+00 -1.0500E+01  5.0855E-01  5.0568E-01  3.6552E-02 -3.9278E-01  0.0000E+00
             4.2467E-01

0ITERATION NO.:  148    OBJECTIVE VALUE:  -1478.12831629176        NO. OF FUNC. EVALS.: 106
 CUMULATIVE NO. OF FUNC. EVALS.:     4438
 NPARAMETR:  1.0201E+00  2.0729E+00  5.2859E-02  1.9406E-01  1.0085E+00  9.0785E-01  6.6860E-01  7.8642E-01  2.4975E+00  1.0000E-02
             2.2736E+00
 PARAMETER:  1.1983E-01  8.2896E-01 -2.8429E+00 -1.5396E+00  1.0855E-01  3.2275E-03 -3.0227E-01 -1.4040E-01  1.0153E+00 -5.2678E+01
             9.2138E-01
 GRADIENT:  -5.1186E+04 -3.7258E+00 -1.0751E+03 -5.5431E+00  5.6495E+04 -3.0668E+04  1.9227E-02 -4.3694E+04 -1.8437E+01  0.0000E+00
            -1.2818E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     4438
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.3519E-04 -2.0641E-02  3.5126E-03  2.9608E-02 -3.4166E-04
 SE:             2.9320E-02  2.6280E-02  4.2297E-03  2.0243E-02  2.2892E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8816E-01  4.3220E-01  4.0627E-01  1.4357E-01  1.3556E-01

 ETASHRINKSD(%)  1.7742E+00  1.1959E+01  8.5830E+01  3.2184E+01  9.9233E+01
 ETASHRINKVR(%)  3.5169E+00  2.2488E+01  9.7992E+01  5.4009E+01  9.9994E+01
 EBVSHRINKSD(%)  2.1265E+00  1.2608E+01  8.6373E+01  3.0090E+01  9.9170E+01
 EBVSHRINKVR(%)  4.2077E+00  2.3626E+01  9.8143E+01  5.1126E+01  9.9993E+01
 RELATIVEINF(%)  9.3365E+01  2.0209E+01  1.1288E+00  1.2670E+01  1.6407E-03
 EPSSHRINKSD(%)  3.1933E+01
 EPSSHRINKVR(%)  5.3669E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1478.1283162917578     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -742.97748972801958     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    59.57
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.65
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1478.128       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.07E+00  5.27E-02  1.94E-01  1.01E+00  9.08E-01  6.69E-01  7.86E-01  2.50E+00  1.00E-02  2.27E+00
 


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
+        1.03E+08
 
 TH 2
+       -4.65E+01  1.04E+06
 
 TH 3
+       -2.77E+03  4.51E+02  6.78E+07
 
 TH 4
+       -4.20E+07  1.91E+02 -3.44E+07  3.44E+07
 
 TH 5
+        4.30E+03 -3.15E+02  2.76E+03  5.67E+02  1.28E+08
 
 TH 6
+       -3.51E+03 -6.68E+00 -2.87E+03 -6.54E+00  3.92E+03  1.86E+08
 
 TH 7
+       -3.79E+03 -1.63E+00 -3.14E+03  1.49E+01  4.26E+03 -5.11E+03  2.69E+02
 
 TH 8
+        3.30E+04 -9.30E-01  2.69E+04  5.46E+01  1.27E+08 -3.89E+03 -4.20E+03  1.26E+08
 
 TH 9
+        5.65E+00  3.52E+05 -2.03E+02  4.46E+01 -1.29E+01  3.39E+00  2.84E+00  1.83E+01  4.77E+05
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.66E+01 -1.37E+01  1.66E+02 -3.94E+00 -1.15E+01  1.76E+00  1.72E+01 -2.18E+00 -2.89E+05  0.00E+00  6.99E+05
 
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
 #CPUT: Total CPU Time in Seconds,       66.266
Stop Time:
Sat Sep 18 09:44:26 CDT 2021