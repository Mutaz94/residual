Sat Sep 18 10:24:48 CDT 2021
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
$DATA ../../../../data/spa/A3/dat35.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -31.2639014156062        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -1.5442E+01  6.8352E+01  1.2090E+02 -8.9236E+01  1.7857E+02  1.9881E+01 -8.5107E+01 -4.3360E+01 -2.1648E+02 -2.2236E+02
            -2.7183E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1126.19580089944        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1351E+00  8.8093E-01  7.5146E-01  1.3616E+00  7.6017E-01  7.0063E-01  1.1187E+00  1.0173E+00  1.3989E+00  1.3859E+00
             7.2590E+00
 PARAMETER:  2.2676E-01 -2.6782E-02 -1.8573E-01  4.0866E-01 -1.7421E-01 -2.5577E-01  2.1215E-01  1.1719E-01  4.3570E-01  4.2636E-01
             2.0822E+00
 GRADIENT:  -2.0195E+01 -2.4311E+00 -2.5727E+01  4.1055E+01 -1.2215E+01 -1.3741E+01  1.1237E+01  8.9773E+00  5.3370E+01  4.0407E+01
             2.7973E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1156.72992342116        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.0729E+00  3.9682E-01  2.2190E-01  1.5068E+00  2.1190E-01  9.9761E-01  2.0082E+00  4.7473E-01  1.8206E+00  1.2456E+00
             4.6222E+00
 PARAMETER:  1.7035E-01 -8.2427E-01 -1.4055E+00  5.0999E-01 -1.4516E+00  9.7603E-02  7.9723E-01 -6.4501E-01  6.9916E-01  3.1960E-01
             1.6309E+00
 GRADIENT:  -5.9834E+01  7.4129E+01  6.1721E+01  1.4602E+02 -1.7298E+02  2.7224E+01  9.4499E+00  2.4623E+00  4.1493E+01  6.1718E+01
             1.4120E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1301.62697322093        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0220E+00  4.2329E-01  1.5392E-01  1.0831E+00  2.2812E-01  9.6241E-01  2.0638E-01  1.1600E+00  1.4998E+00  2.9093E-01
             3.1754E+00
 PARAMETER:  1.2178E-01 -7.5969E-01 -1.7713E+00  1.7979E-01 -1.3779E+00  6.1685E-02 -1.4780E+00  2.4843E-01  5.0531E-01 -1.1347E+00
             1.2554E+00
 GRADIENT:  -6.0845E+01  4.8760E+01  4.9588E+01  6.1462E+01 -9.6740E+01  1.0541E+01 -6.3980E-01 -6.5423E+00 -4.9397E+00 -2.7008E+00
             1.8292E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1310.09286119884        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.0386E+00  4.0945E-01  1.2192E-01  9.8556E-01  2.1249E-01  9.2137E-01  1.0517E-01  1.4509E+00  1.7231E+00  2.6315E-01
             2.8639E+00
 PARAMETER:  1.3786E-01 -7.9294E-01 -2.0044E+00  8.5456E-02 -1.4489E+00  1.8110E-02 -2.1522E+00  4.7221E-01  6.4412E-01 -1.2350E+00
             1.1522E+00
 GRADIENT:   1.6710E+01  9.3677E+00 -3.4671E-02  1.6454E+01  3.0349E+00 -3.0631E-01 -2.1028E-01 -3.2304E+00  5.1870E+00 -3.6189E+00
            -1.4036E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1310.90902526855        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0309E+00  3.7280E-01  1.1087E-01  9.3466E-01  1.9593E-01  9.2453E-01  6.0229E-02  1.3810E+00  1.7103E+00  3.9135E-01
             2.9459E+00
 PARAMETER:  1.3040E-01 -8.8671E-01 -2.0994E+00  3.2424E-02 -1.5300E+00  2.1528E-02 -2.7096E+00  4.2278E-01  6.3668E-01 -8.3815E-01
             1.1804E+00
 GRADIENT:  -8.3058E+00 -4.7674E+00  2.9168E+00 -7.0951E-02  3.4068E+00 -2.0272E-01 -2.0880E-03  2.4296E+00  6.5311E-01 -1.4855E+00
             5.2299E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1310.91242894519        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  1.0313E+00  3.7172E-01  1.0868E-01  9.2822E-01  1.9413E-01  9.2588E-01  5.5911E-02  1.3497E+00  1.7165E+00  4.1373E-01
             2.9450E+00
 PARAMETER:  1.3082E-01 -8.8961E-01 -2.1193E+00  2.5519E-02 -1.5392E+00  2.2993E-02 -2.7840E+00  3.9986E-01  6.4029E-01 -7.8254E-01
             1.1801E+00
 GRADIENT:  -6.1992E+00 -3.8105E+00  2.2607E+00 -6.9662E-01  2.6466E+00 -4.5554E-02  1.7881E-03  1.9577E+00  5.9337E-01 -1.0435E+00
             4.4832E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1311.54240473647        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      621
 NPARAMETR:  1.0347E+00  4.0563E-01  1.1645E-01  9.4483E-01  2.0695E-01  9.2590E-01  8.1635E-02  1.3197E+00  1.6695E+00  4.1159E-01
             2.9284E+00
 PARAMETER:  1.3410E-01 -8.0230E-01 -2.0503E+00  4.3250E-02 -1.4753E+00  2.3011E-02 -2.4055E+00  3.7738E-01  6.1255E-01 -7.8772E-01
             1.1745E+00
 GRADIENT:   6.6481E-01 -1.5426E-01  3.7990E-01 -7.8858E-01  9.4219E-01  3.8665E-01 -1.9022E-02 -1.2420E-01  4.7255E-01  7.1789E-02
             2.9475E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1311.55637257264        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      803
 NPARAMETR:  1.0324E+00  4.0899E-01  1.1651E-01  9.4606E-01  2.0799E-01  9.2462E-01  2.0934E-01  1.3486E+00  1.6559E+00  4.0387E-01
             2.9364E+00
 PARAMETER:  1.3184E-01 -7.9406E-01 -2.0498E+00  4.4555E-02 -1.4703E+00  2.1631E-02 -1.4638E+00  3.9907E-01  6.0432E-01 -8.0666E-01
             1.1772E+00
 GRADIENT:  -4.5021E+00 -1.6647E+00 -1.7843E+00 -1.0427E-01  4.4273E+00  2.0906E-01 -4.6213E-02  1.5214E+00 -1.1171E+00  8.1534E-01
             2.9781E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1311.65191280204        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      982
 NPARAMETR:  1.0346E+00  4.1293E-01  1.1860E-01  9.5095E-01  2.0991E-01  9.2423E-01  3.7351E-01  1.3394E+00  1.6603E+00  3.6763E-01
             2.9199E+00
 PARAMETER:  1.3402E-01 -7.8447E-01 -2.0320E+00  4.9706E-02 -1.4611E+00  2.1203E-02 -8.8482E-01  3.9225E-01  6.0701E-01 -9.0067E-01
             1.1715E+00
 GRADIENT:   6.3390E-01 -6.4384E-01 -4.5287E-02  7.6781E-02  1.0822E+00 -1.6032E-01 -4.7450E-03 -1.3789E-02  4.4472E-01  2.7527E-01
            -4.1810E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1311.66024212080        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1157
 NPARAMETR:  1.0343E+00  4.1624E-01  1.1955E-01  9.5275E-01  2.1127E-01  9.2441E-01  4.2134E-01  1.3502E+00  1.6543E+00  3.4620E-01
             2.9204E+00
 PARAMETER:  1.3375E-01 -7.7650E-01 -2.0241E+00  5.1595E-02 -1.4546E+00  2.1402E-02 -7.6431E-01  4.0023E-01  6.0339E-01 -9.6074E-01
             1.1717E+00
 GRADIENT:   4.6653E-03  7.8648E-04  1.8324E-04 -7.2949E-04 -1.1453E-03 -3.2830E-04 -8.8017E-05 -1.3609E-04  2.3677E-04 -2.5608E-04
            -2.0702E-03

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1311.66024212080        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1179
 NPARAMETR:  1.0343E+00  4.1624E-01  1.1955E-01  9.5275E-01  2.1127E-01  9.2441E-01  4.2134E-01  1.3502E+00  1.6543E+00  3.4620E-01
             2.9204E+00
 PARAMETER:  1.3375E-01 -7.7650E-01 -2.0241E+00  5.1595E-02 -1.4546E+00  2.1402E-02 -7.6431E-01  4.0023E-01  6.0339E-01 -9.6074E-01
             1.1717E+00
 GRADIENT:   4.6653E-03  7.8648E-04  1.8324E-04 -7.2949E-04 -1.1453E-03 -3.2830E-04 -8.8017E-05 -1.3609E-04  2.3677E-04 -2.5608E-04
            -2.0702E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1179
 NO. OF SIG. DIGITS IN FINAL EST.:  4.9

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.1846E-03 -1.1623E-02  2.3656E-02 -5.7845E-03  2.2160E-02
 SE:             2.8659E-02  7.6052E-03  1.9394E-02  2.6376E-02  1.3392E-02
 N:                     100         100         100         100         100

 P VAL.:         9.1152E-01  1.2644E-01  2.2255E-01  8.2641E-01  9.7981E-02

 ETASHRINKSD(%)  3.9873E+00  7.4522E+01  3.5028E+01  1.1637E+01  5.5135E+01
 ETASHRINKVR(%)  7.8157E+00  9.3509E+01  5.7786E+01  2.1919E+01  7.9871E+01
 EBVSHRINKSD(%)  3.8651E+00  7.3898E+01  3.5162E+01  9.3591E+00  5.6471E+01
 EBVSHRINKVR(%)  7.5808E+00  9.3187E+01  5.7961E+01  1.7842E+01  8.1052E+01
 RELATIVEINF(%)  8.8123E+01  5.5498E-01  9.4106E+00  6.0886E+01  9.3590E-01
 EPSSHRINKSD(%)  3.4420E+01
 EPSSHRINKVR(%)  5.6992E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1311.6602421208011     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -576.50941555706288     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.39
 Elapsed covariance  time in seconds:     6.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1311.660       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  4.16E-01  1.20E-01  9.53E-01  2.11E-01  9.24E-01  4.21E-01  1.35E+00  1.65E+00  3.46E-01  2.92E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         2.87E-02  5.09E-02  1.57E-02  6.06E-02  1.94E-02  6.69E-02  4.83E-01  2.67E-01  1.96E-01  2.18E-01  2.64E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        8.23E-04
 
 TH 2
+        6.30E-05  2.59E-03
 
 TH 3
+       -7.22E-05  4.16E-04  2.47E-04
 
 TH 4
+       -2.15E-04  1.12E-03  5.26E-04  3.67E-03
 
 TH 5
+       -2.03E-05  8.91E-04  2.33E-04  5.35E-04  3.77E-04
 
 TH 6
+       -1.14E-04  9.98E-04  1.06E-04  1.07E-03  3.68E-04  4.48E-03
 
 TH 7
+       -2.86E-03  9.22E-03  5.05E-03  7.77E-03  5.31E-03  1.86E-03  2.33E-01
 
 TH 8
+        6.23E-04  5.91E-03  3.85E-04  2.85E-03  1.91E-03  5.86E-03 -1.68E-02  7.12E-02
 
 TH 9
+        4.11E-04 -1.29E-03 -9.55E-04 -3.64E-03 -8.30E-04 -5.06E-04 -1.46E-02  5.25E-03  3.84E-02
 
 TH10
+        5.39E-04 -7.22E-03 -2.47E-03 -3.77E-03 -3.50E-03 -1.34E-03 -7.59E-02 -1.43E-02  9.59E-04  4.74E-02
 
 TH11
+        1.97E-03  1.35E-03  4.29E-04 -5.57E-03  5.24E-04 -2.83E-03  5.69E-03 -4.14E-03  1.36E-02 -1.40E-02  6.98E-02
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.87E-02
 
 TH 2
+        4.32E-02  5.09E-02
 
 TH 3
+       -1.60E-01  5.20E-01  1.57E-02
 
 TH 4
+       -1.24E-01  3.65E-01  5.53E-01  6.06E-02
 
 TH 5
+       -3.65E-02  9.01E-01  7.64E-01  4.55E-01  1.94E-02
 
 TH 6
+       -5.93E-02  2.93E-01  1.01E-01  2.63E-01  2.84E-01  6.69E-02
 
 TH 7
+       -2.07E-01  3.75E-01  6.66E-01  2.66E-01  5.66E-01  5.75E-02  4.83E-01
 
 TH 8
+        8.14E-02  4.35E-01  9.20E-02  1.77E-01  3.68E-01  3.29E-01 -1.31E-01  2.67E-01
 
 TH 9
+        7.31E-02 -1.29E-01 -3.10E-01 -3.06E-01 -2.18E-01 -3.86E-02 -1.55E-01  1.00E-01  1.96E-01
 
 TH10
+        8.63E-02 -6.51E-01 -7.24E-01 -2.86E-01 -8.28E-01 -9.22E-02 -7.22E-01 -2.46E-01  2.25E-02  2.18E-01
 
 TH11
+        2.60E-01  1.00E-01  1.03E-01 -3.48E-01  1.02E-01 -1.60E-01  4.46E-02 -5.87E-02  2.63E-01 -2.43E-01  2.64E-01
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.44E+03
 
 TH 2
+        2.68E+01  3.95E+03
 
 TH 3
+        8.66E+02  5.01E+03  2.39E+04
 
 TH 4
+       -7.07E+01 -2.23E+02 -1.77E+03  5.80E+02
 
 TH 5
+       -7.39E+02 -1.43E+04 -2.36E+04  6.11E+02  6.70E+04
 
 TH 6
+        5.55E+01  1.70E+02  5.64E+02 -7.02E+01 -1.26E+03  3.04E+02
 
 TH 7
+        6.23E+00 -2.85E+01 -1.75E+02  1.25E+01  1.64E+02 -1.12E+01  1.41E+01
 
 TH 8
+       -1.09E+01 -3.99E+01 -7.59E+00  9.55E-01  1.13E+01 -2.03E+01  8.01E+00  2.45E+01
 
 TH 9
+        9.05E+00 -4.94E+01  1.14E+02  1.64E+00  3.62E+02 -9.83E+00  1.08E+00 -3.79E+00  3.74E+01
 
 TH10
+       -3.53E+01 -2.81E+02 -2.33E+02  8.68E-02  1.88E+03 -5.97E+01  2.58E+01  1.58E+01  2.30E+01  1.54E+02
 
 TH11
+       -5.43E+01 -5.79E+01 -2.65E+02  5.48E+01  2.31E+02 -2.48E+00  5.04E+00  4.98E+00 -5.99E+00  1.66E+01  2.55E+01
 
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
 #CPUT: Total CPU Time in Seconds,       19.945
Stop Time:
Sat Sep 18 10:25:09 CDT 2021