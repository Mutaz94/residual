Wed Sep 29 16:39:36 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat54.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m54.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1652.54201001076        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3542E+02  7.3030E+01 -5.7464E+01  1.9313E+02  4.3748E+01  5.0668E+01 -9.9113E+00  1.4110E+01 -6.1192E+00  1.0024E+01
            -7.9718E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1670.44736787137        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0183E+00  1.1311E+00  1.3831E+00  9.0978E-01  1.1339E+00  1.1167E+00  1.1135E+00  8.6580E-01  1.1215E+00  8.8895E-01
             1.2837E+00
 PARAMETER:  1.1815E-01  2.2318E-01  4.2433E-01  5.4509E-03  2.2563E-01  2.1037E-01  2.0749E-01 -4.4101E-02  2.1466E-01 -1.7716E-02
             3.4978E-01
 GRADIENT:  -4.8418E+01  3.3786E+01  3.9070E+00  3.4279E+01 -4.5682E+00  1.4602E+01  7.2872E+00  1.5773E+00  7.1734E-01 -1.3987E+01
             2.7910E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1672.65960175487        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.0116E+00  1.0862E+00  1.5605E+00  9.2859E-01  1.1763E+00  1.1169E+00  8.8148E-01  6.3845E-01  1.2005E+00  9.9425E-01
             1.2556E+00
 PARAMETER:  1.1152E-01  1.8270E-01  5.4500E-01  2.5908E-02  2.6236E-01  2.1052E-01 -2.6151E-02 -3.4870E-01  2.8274E-01  9.4237E-02
             3.2764E-01
 GRADIENT:  -5.9156E+01  1.6157E+01  5.5243E+00  2.7968E+01  5.0121E+00  1.4290E+01  1.6323E+00 -1.1110E+00  4.5501E+00 -1.3400E+01
             2.1121E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1677.45343363943        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      544
 NPARAMETR:  1.0500E+00  1.3296E+00  1.2623E+00  7.4298E-01  1.2228E+00  1.0634E+00  7.5403E-01  3.4613E-01  1.3870E+00  1.1221E+00
             1.1596E+00
 PARAMETER:  1.4882E-01  3.8485E-01  3.3297E-01 -1.9708E-01  3.0114E-01  1.6147E-01 -1.8233E-01 -9.6093E-01  4.2711E-01  2.1516E-01
             2.4808E-01
 GRADIENT:   7.8976E+00 -7.1106E+00 -1.1149E+00  4.6388E+00  9.8282E+00 -3.5755E+00  5.1979E-01 -5.6355E-02 -1.3268E+00 -6.2143E-03
            -6.1740E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1679.64858476798        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      722
 NPARAMETR:  1.0465E+00  1.7971E+00  9.8621E-01  4.5353E-01  1.3286E+00  1.0771E+00  6.5199E-01  1.5431E-01  2.0268E+00  1.1321E+00
             1.1874E+00
 PARAMETER:  1.4543E-01  6.8619E-01  8.6116E-02 -6.9069E-01  3.8416E-01  1.7425E-01 -3.2773E-01 -1.7688E+00  8.0648E-01  2.2404E-01
             2.7174E-01
 GRADIENT:  -2.9377E+00  3.8023E+01  7.4233E-01  2.0361E+01 -4.3362E+00  1.2079E+00 -2.2606E+00  6.5935E-02 -2.0478E+00 -8.8732E-01
             1.0704E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1680.65111660687        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      905
 NPARAMETR:  1.0502E+00  1.9445E+00  8.5366E-01  3.0865E-01  1.3767E+00  1.0760E+00  6.5251E-01  4.3486E-02  2.4982E+00  1.1441E+00
             1.1888E+00
 PARAMETER:  1.4896E-01  7.6503E-01 -5.8227E-02 -1.0755E+00  4.1967E-01  1.7321E-01 -3.2692E-01 -3.0353E+00  1.0156E+00  2.3466E-01
             2.7292E-01
 GRADIENT:   4.3011E+00 -5.0459E+01 -1.0192E+00 -6.1398E+00  3.0138E+00  9.3124E-01  2.5045E+00  6.4162E-03 -1.7380E+00  1.7586E-01
             2.2329E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1680.79817121047        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1082
 NPARAMETR:  1.0499E+00  1.9589E+00  8.6561E-01  3.1196E-01  1.3764E+00  1.0757E+00  6.3940E-01  1.4264E-02  2.5643E+00  1.1460E+00
             1.1843E+00
 PARAMETER:  1.4871E-01  7.7237E-01 -4.4324E-02 -1.0649E+00  4.1949E-01  1.7296E-01 -3.4722E-01 -4.1500E+00  1.0417E+00  2.3626E-01
             2.6918E-01
 GRADIENT:   3.5237E+00 -2.3503E+01 -3.4477E-01  1.5837E+00 -2.2852E-01  7.5278E-01  5.8569E-01  6.7365E-04  1.3352E+00 -2.6857E-01
            -3.1365E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1680.80549720732        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1265
 NPARAMETR:  1.0502E+00  1.9567E+00  8.6621E-01  3.1076E-01  1.3779E+00  1.0760E+00  6.3697E-01  1.0000E-02  2.5665E+00  1.1488E+00
             1.1852E+00
 PARAMETER:  1.4896E-01  7.7127E-01 -4.3630E-02 -1.0687E+00  4.2055E-01  1.7323E-01 -3.5103E-01 -5.0866E+00  1.0425E+00  2.3874E-01
             2.6993E-01
 GRADIENT:   4.0498E+00 -2.8878E+01 -5.9784E-01  4.3871E-01  1.0442E+00  8.7926E-01  3.3580E-01  0.0000E+00  1.1935E+00  4.1876E-02
             2.7506E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1680.80917002859        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1452
 NPARAMETR:  1.0502E+00  1.9562E+00  8.7207E-01  3.1057E-01  1.3775E+00  1.0760E+00  6.3638E-01  1.0000E-02  2.5607E+00  1.1490E+00
             1.1849E+00
 PARAMETER:  1.4897E-01  7.7099E-01 -3.6881E-02 -1.0694E+00  4.2024E-01  1.7327E-01 -3.5195E-01 -5.0866E+00  1.0403E+00  2.3893E-01
             2.6969E-01
 GRADIENT:   4.0915E+00 -2.8650E+01 -9.8962E-02 -1.0933E-01  1.3590E-01  9.0622E-01  3.0165E-01  0.0000E+00  6.1971E-01 -1.0627E-02
             4.1425E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1680.81089587390        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     1646             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0502E+00  1.9544E+00  8.7530E-01  3.1177E-01  1.3770E+00  1.0760E+00  6.3601E-01  1.0000E-02  2.5556E+00  1.1493E+00
             1.1848E+00
 PARAMETER:  1.4896E-01  7.7010E-01 -3.3188E-02 -1.0655E+00  4.1991E-01  1.7327E-01 -3.5255E-01 -5.0866E+00  1.0383E+00  2.3914E-01
             2.6958E-01
 GRADIENT:   6.0187E+02  1.1056E+03  1.7375E-01  8.8482E+01  1.5365E+01  1.0404E+02  2.8028E+01  0.0000E+00  5.0497E+01  1.3014E+00
             2.1342E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1680.81239103971        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     1835
 NPARAMETR:  1.0502E+00  1.9528E+00  8.7657E-01  3.1293E-01  1.3767E+00  1.0760E+00  6.3595E-01  1.0000E-02  2.5502E+00  1.1493E+00
             1.1848E+00
 PARAMETER:  1.4896E-01  7.6924E-01 -3.1736E-02 -1.0618E+00  4.1967E-01  1.7326E-01 -3.5264E-01 -5.0866E+00  1.0362E+00  2.3919E-01
             2.6955E-01
 GRADIENT:   4.0852E+00 -2.8154E+01  3.6078E-02 -7.1131E-02 -7.5502E-02  9.0787E-01  2.7528E-01  0.0000E+00  6.1782E-01  4.8184E-03
            -1.1150E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1680.81463626482        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2027             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0502E+00  1.9489E+00  8.7600E-01  3.1547E-01  1.3762E+00  1.0760E+00  6.3585E-01  1.0000E-02  2.5396E+00  1.1493E+00
             1.1849E+00
 PARAMETER:  1.4894E-01  7.6727E-01 -3.2394E-02 -1.0537E+00  4.1933E-01  1.7326E-01 -3.5280E-01 -5.0866E+00  1.0320E+00  2.3911E-01
             2.6965E-01
 GRADIENT:   6.0159E+02  1.0952E+03 -1.4151E-01  8.9137E+01  1.6137E+01  1.0398E+02  2.7775E+01  0.0000E+00  5.0403E+01  1.3448E+00
             2.3230E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1680.81575820763        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2216
 NPARAMETR:  1.0502E+00  1.9479E+00  8.7755E-01  3.1620E-01  1.3758E+00  1.0760E+00  6.3588E-01  1.0000E-02  2.5353E+00  1.1492E+00
             1.1847E+00
 PARAMETER:  1.4894E-01  7.6673E-01 -3.0626E-02 -1.0514E+00  4.1901E-01  1.7325E-01 -3.5274E-01 -5.0866E+00  1.0303E+00  2.3908E-01
             2.6951E-01
 GRADIENT:   4.0784E+00 -2.8586E+01 -1.9009E-01 -1.4029E-02  4.2156E-01  9.0156E-01  2.1999E-01  0.0000E+00  6.9107E-01  3.3620E-02
             8.8856E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1680.81679096241        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2406             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0502E+00  1.9468E+00  8.8101E-01  3.1705E-01  1.3750E+00  1.0760E+00  6.3614E-01  1.0000E-02  2.5295E+00  1.1489E+00
             1.1845E+00
 PARAMETER:  1.4894E-01  7.6621E-01 -2.6686E-02 -1.0487E+00  4.1843E-01  1.7326E-01 -3.5233E-01 -5.0866E+00  1.0280E+00  2.3883E-01
             2.6934E-01
 GRADIENT:   6.0200E+02  1.0931E+03  2.3044E-01  8.9420E+01  1.5141E+01  1.0405E+02  2.7784E+01  0.0000E+00  5.0038E+01  1.3008E+00
             2.0856E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1680.81708497895        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     2597
 NPARAMETR:  1.0502E+00  1.9462E+00  8.8214E-01  3.1750E-01  1.3748E+00  1.0760E+00  6.3615E-01  1.0000E-02  2.5273E+00  1.1489E+00
             1.1845E+00
 PARAMETER:  1.4894E-01  7.6588E-01 -2.5409E-02 -1.0473E+00  4.1830E-01  1.7326E-01 -3.5232E-01 -5.0866E+00  1.0272E+00  2.3881E-01
             2.6932E-01
 GRADIENT:   4.0902E+00 -2.7458E+01  1.5087E-01 -7.2578E-02 -4.1490E-01  9.0898E-01  2.9935E-01  0.0000E+00  4.7750E-01 -1.2950E-02
            -8.5163E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1680.81791706332        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2789             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9446E+00  8.8039E-01  3.1846E-01  1.3749E+00  1.0760E+00  6.3597E-01  1.0000E-02  2.5244E+00  1.1490E+00
             1.1847E+00
 PARAMETER:  1.4893E-01  7.6506E-01 -2.7390E-02 -1.0443E+00  4.1839E-01  1.7325E-01 -3.5260E-01 -5.0866E+00  1.0260E+00  2.3888E-01
             2.6945E-01
 GRADIENT:   6.0177E+02  1.0885E+03  6.4085E-04  8.9656E+01  1.5770E+01  1.0400E+02  2.7663E+01  0.0000E+00  5.0095E+01  1.3251E+00
             2.2329E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1680.81801328962        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     2980
 NPARAMETR:  1.0501E+00  1.9440E+00  8.7987E-01  3.1886E-01  1.3748E+00  1.0760E+00  6.3597E-01  1.0000E-02  2.5226E+00  1.1490E+00
             1.1847E+00
 PARAMETER:  1.4893E-01  7.6473E-01 -2.7976E-02 -1.0430E+00  4.1833E-01  1.7325E-01 -3.5261E-01 -5.0866E+00  1.0253E+00  2.3887E-01
             2.6946E-01
 GRADIENT:   4.0712E+00 -2.8464E+01 -2.1938E-01  1.6777E-02  4.7020E-01  9.0114E-01  2.1842E-01  0.0000E+00  6.8738E-01  3.2259E-02
             1.1062E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1680.81878869527        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     3172             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9432E+00  8.8415E-01  3.1958E-01  1.3741E+00  1.0760E+00  6.3614E-01  1.0000E-02  2.5176E+00  1.1488E+00
             1.1844E+00
 PARAMETER:  1.4893E-01  7.6432E-01 -2.3132E-02 -1.0407E+00  4.1778E-01  1.7326E-01 -3.5233E-01 -5.0866E+00  1.0233E+00  2.3875E-01
             2.6926E-01
 GRADIENT:   6.0201E+02  1.0871E+03  2.7520E-01  8.9859E+01  1.5066E+01  1.0405E+02  2.7670E+01  0.0000E+00  4.9855E+01  1.2986E+00
             2.0777E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1680.81914037388        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     3361
 NPARAMETR:  1.0501E+00  1.9427E+00  8.8328E-01  3.1987E-01  1.3741E+00  1.0760E+00  6.3611E-01  1.0000E-02  2.5168E+00  1.1488E+00
             1.1845E+00
 PARAMETER:  1.4893E-01  7.6406E-01 -2.4111E-02 -1.0399E+00  4.1783E-01  1.7326E-01 -3.5238E-01 -5.0866E+00  1.0230E+00  2.3874E-01
             2.6931E-01
 GRADIENT:   4.0842E+00 -2.7700E+01  2.1911E-02 -2.7681E-02 -9.8906E-02  9.0670E-01  2.7007E-01  0.0000E+00  5.4135E-01  3.4723E-03
            -1.4262E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1680.81968131880        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     3551             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9414E+00  8.8358E-01  3.2069E-01  1.3739E+00  1.0760E+00  6.3610E-01  1.0000E-02  2.5131E+00  1.1488E+00
             1.1845E+00
 PARAMETER:  1.4892E-01  7.6343E-01 -2.3770E-02 -1.0373E+00  4.1765E-01  1.7325E-01 -3.5241E-01 -5.0866E+00  1.0215E+00  2.3871E-01
             2.6930E-01
 GRADIENT:   6.0189E+02  1.0836E+03  1.0820E-01  9.0046E+01  1.5459E+01  1.0402E+02  2.7580E+01  0.0000E+00  4.9857E+01  1.3164E+00
             2.1660E+00

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1680.82002514480        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     3742
 NPARAMETR:  1.0501E+00  1.9400E+00  8.8307E-01  3.2159E-01  1.3737E+00  1.0760E+00  6.3616E-01  1.0000E-02  2.5092E+00  1.1486E+00
             1.1845E+00
 PARAMETER:  1.4892E-01  7.6270E-01 -2.4354E-02 -1.0345E+00  4.1751E-01  1.7325E-01 -3.5231E-01 -5.0866E+00  1.0200E+00  2.3858E-01
             2.6934E-01
 GRADIENT:   4.0755E+00 -2.8135E+01 -1.6218E-01  1.4655E-02  3.1147E-01  9.0345E-01  2.4218E-01  0.0000E+00  6.2906E-01  1.3809E-02
             8.0130E-02

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1680.82066642447        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     3934             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9389E+00  8.8602E-01  3.2243E-01  1.3733E+00  1.0760E+00  6.3608E-01  1.0000E-02  2.5048E+00  1.1488E+00
             1.1844E+00
 PARAMETER:  1.4892E-01  7.6213E-01 -2.1018E-02 -1.0319E+00  4.1719E-01  1.7325E-01 -3.5243E-01 -5.0866E+00  1.0182E+00  2.3868E-01
             2.6923E-01
 GRADIENT:   6.0192E+02  1.0796E+03  1.6481E-01  9.0346E+01  1.5348E+01  1.0403E+02  2.7505E+01  0.0000E+00  4.9718E+01  1.3154E+00
             2.1467E+00

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1680.82081786634        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     4119
 NPARAMETR:  1.0501E+00  1.9383E+00  8.8697E-01  3.2289E-01  1.3729E+00  1.0760E+00  6.3620E-01  1.0000E-02  2.5021E+00  1.1486E+00
             1.1843E+00
 PARAMETER:  1.4891E-01  7.6183E-01 -1.9946E-02 -1.0304E+00  4.1694E-01  1.7325E-01 -3.5224E-01 -5.0866E+00  1.0171E+00  2.3855E-01
             2.6916E-01
 GRADIENT:   4.0856E+00 -2.7224E+01  9.5782E-02 -1.1333E-02 -3.0634E-01  9.0771E-01  2.7742E-01  0.0000E+00  4.7019E-01 -3.8617E-04
            -5.7121E-02

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1680.82102800640        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     4309             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9378E+00  8.8613E-01  3.2320E-01  1.3730E+00  1.0760E+00  6.3617E-01  1.0000E-02  2.5012E+00  1.1486E+00
             1.1844E+00
 PARAMETER:  1.4891E-01  7.6155E-01 -2.0897E-02 -1.0295E+00  4.1698E-01  1.7325E-01 -3.5229E-01 -5.0866E+00  1.0168E+00  2.3854E-01
             2.6922E-01
 GRADIENT:   6.0191E+02  1.0776E+03  1.1574E-01  9.0479E+01  1.5420E+01  1.0402E+02  2.7460E+01  0.0000E+00  4.9665E+01  1.3130E+00
             2.1617E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1680.82133139645        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     4500
 NPARAMETR:  1.0501E+00  1.9367E+00  8.8664E-01  3.2393E-01  1.3726E+00  1.0760E+00  6.3627E-01  1.0000E-02  2.4975E+00  1.1485E+00
             1.1843E+00
 PARAMETER:  1.4891E-01  7.6101E-01 -2.0318E-02 -1.0272E+00  4.1672E-01  1.7325E-01 -3.5214E-01 -5.0866E+00  1.0153E+00  2.3842E-01
             2.6917E-01
 GRADIENT:   4.0821E+00 -2.7504E+01 -2.6218E-02  1.2553E-02 -6.3271E-02  9.0543E-01  2.6215E-01  0.0000E+00  5.2229E-01  6.2214E-03
            -5.2542E-03

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1680.82153505445        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     4694             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9358E+00  8.8850E-01  3.2464E-01  1.3723E+00  1.0760E+00  6.3624E-01  1.0000E-02  2.4941E+00  1.1485E+00
             1.1843E+00
 PARAMETER:  1.4891E-01  7.6051E-01 -1.8219E-02 -1.0250E+00  4.1649E-01  1.7325E-01 -3.5217E-01 -5.0866E+00  1.0139E+00  2.3844E-01
             2.6911E-01
 GRADIENT:   6.0200E+02  1.0746E+03  2.1585E-01  9.0736E+01  1.5158E+01  1.0404E+02  2.7412E+01  0.0000E+00  4.9509E+01  1.3028E+00
             2.1038E+00

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1680.82156511547        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     4877
 NPARAMETR:  1.0501E+00  1.9356E+00  8.8884E-01  3.2481E-01  1.3722E+00  1.0760E+00  6.3626E-01  1.0000E-02  2.4932E+00  1.1485E+00
             1.1842E+00
 PARAMETER:  1.4891E-01  7.6039E-01 -1.7839E-02 -1.0245E+00  4.1643E-01  1.7325E-01 -3.5215E-01 -5.0866E+00  1.0136E+00  2.3842E-01
             2.6910E-01
 GRADIENT:   4.0851E+00 -2.7084E+01  9.4629E-02  8.9723E-03 -3.1110E-01  9.0736E-01  2.7750E-01  0.0000E+00  4.6032E-01 -2.9724E-03
            -5.7313E-02

0ITERATION NO.:  135    OBJECTIVE VALUE:  -1680.82195542785        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     5071             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0501E+00  1.9338E+00  8.8872E-01  3.2599E-01  1.3719E+00  1.0760E+00  6.3633E-01  1.0000E-02  2.4879E+00  1.1483E+00
             1.1842E+00
 PARAMETER:  1.4890E-01  7.5947E-01 -1.7974E-02 -1.0209E+00  4.1616E-01  1.7325E-01 -3.5204E-01 -5.0866E+00  1.0114E+00  2.3829E-01
             2.6910E-01
 GRADIENT:   6.0196E+02  1.0709E+03  1.2012E-01  9.0959E+01  1.5330E+01  1.0403E+02  2.7329E+01  0.0000E+00  4.9430E+01  1.3085E+00
             2.1431E+00

0ITERATION NO.:  140    OBJECTIVE VALUE:  -1680.82204319562        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     5262
 NPARAMETR:  1.0501E+00  1.9329E+00  8.8941E-01  3.2650E-01  1.3719E+00  1.0760E+00  6.3614E-01  1.0000E-02  2.4861E+00  1.1485E+00
             1.1843E+00
 PARAMETER:  1.4890E-01  7.5904E-01 -1.7198E-02 -1.0193E+00  4.1617E-01  1.7325E-01 -3.5233E-01 -5.0866E+00  1.0107E+00  2.3846E-01
             2.6915E-01
 GRADIENT:   4.0803E+00 -2.7463E+01 -3.9556E-02  2.9986E-02  5.4036E-02  9.0435E-01  2.4170E-01  0.0000E+00  5.2807E-01  1.8542E-02
             3.7966E-02

0ITERATION NO.:  141    OBJECTIVE VALUE:  -1680.82204319562        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     5290
 NPARAMETR:  1.0501E+00  1.9330E+00  8.9030E-01  3.2659E-01  1.3716E+00  1.0760E+00  6.3631E-01  1.0000E-02  2.4851E+00  1.1483E+00
             1.1841E+00
 PARAMETER:  1.4890E-01  7.5904E-01 -1.7198E-02 -1.0193E+00  4.1617E-01  1.7325E-01 -3.5233E-01 -5.0866E+00  1.0107E+00  2.3846E-01
             2.6915E-01
 GRADIENT:   6.4128E-04 -5.4588E-02 -2.1414E-02 -3.3395E-02  1.4214E-01 -9.6471E-04 -1.8291E-02  0.0000E+00  3.9164E-02  1.3938E-02
             4.0914E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     5290
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.3009E-04 -4.7885E-02 -8.0211E-05  3.3419E-02 -3.8655E-02
 SE:             2.9819E-02  1.9673E-02  4.8712E-05  2.2137E-02  2.3383E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9384E-01  1.4933E-02  9.9632E-02  1.3113E-01  9.8306E-02

 ETASHRINKSD(%)  1.0256E-01  3.4092E+01  9.9837E+01  2.5840E+01  2.1664E+01
 ETASHRINKVR(%)  2.0500E-01  5.6561E+01  1.0000E+02  4.5003E+01  3.8634E+01
 EBVSHRINKSD(%)  5.2301E-01  3.0185E+01  9.9823E+01  2.8625E+01  2.0174E+01
 EBVSHRINKVR(%)  1.0433E+00  5.1259E+01  1.0000E+02  4.9057E+01  3.6279E+01
 RELATIVEINF(%)  9.8888E+01  7.3735E+00  1.7887E-04  8.3786E+00  4.0231E+01
 EPSSHRINKSD(%)  4.0865E+01
 EPSSHRINKVR(%)  6.5030E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1680.8220431956204     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -945.67121663188220     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    85.27
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1680.822       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.93E+00  8.89E-01  3.26E-01  1.37E+00  1.08E+00  6.36E-01  1.00E-02  2.49E+00  1.15E+00  1.18E+00
 


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
+        8.95E+02
 
 TH 2
+       -6.65E+01  3.62E+02
 
 TH 3
+       -4.40E+00  1.28E+01  1.58E+01
 
 TH 4
+       -6.84E+01  4.63E+02 -3.92E+01  9.50E+02
 
 TH 5
+        6.98E+01 -1.01E+02 -5.36E+01  5.60E+01  2.56E+02
 
 TH 6
+        1.46E+01 -9.73E+00  9.84E+00 -3.76E+01  1.46E+01  1.66E+02
 
 TH 7
+        1.62E+00 -8.95E+01  9.69E+00 -3.44E+01 -3.60E+01  4.60E+00  1.43E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -2.50E-01 -3.41E+00 -4.26E+00  4.34E+01  1.16E+01 -3.18E+00  2.53E+01  0.00E+00  8.27E+00
 
 TH10
+       -2.63E+01  1.15E+01  1.58E+00  7.35E+00 -4.07E+01 -2.24E+01  7.58E+00  0.00E+00  9.01E-01  1.79E+01
 
 TH11
+       -5.82E+01  1.46E+01 -2.88E+01  7.04E+01  2.81E+00 -4.37E+01 -4.10E+01  0.00E+00  1.41E+00  4.44E+01  2.05E+02
 
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
+        8.61E+02
 
 TH 2
+       -1.02E+01  3.89E+02
 
 TH 3
+        8.57E-01  3.58E+01  4.58E+01
 
 TH 4
+       -1.22E+01  4.29E+02 -3.24E+01  9.02E+02
 
 TH 5
+       -5.04E+00 -8.21E+01 -4.17E+01  3.55E+01  2.88E+02
 
 TH 6
+       -5.93E-02 -1.10E+00  5.15E-01 -3.48E+00 -9.66E-01  1.69E+02
 
 TH 7
+        2.48E+00 -4.45E+01  1.63E+01 -2.72E+01 -2.32E+01 -6.52E-01  1.43E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        4.18E-01 -1.32E+01 -4.90E+00  4.69E+01  2.55E+00 -2.89E-01  1.40E+01  0.00E+00  1.33E+01
 
 TH10
+       -4.75E-01 -4.78E+00 -7.07E+00 -6.30E+00 -4.25E+01  2.59E-01  9.55E+00  0.00E+00  9.01E-01  6.42E+01
 
 TH11
+       -7.23E+00 -2.10E+01 -9.49E+00 -3.78E+00  4.21E+00  2.47E+00  6.56E+00  0.00E+00  1.73E+00  2.20E+01  1.68E+02
 
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
+        8.61E+02
 
 TH 2
+        6.15E+01  3.81E+02
 
 TH 3
+        1.97E+01  2.72E+01  2.52E+01
 
 TH 4
+        1.94E+01  4.21E+02 -2.97E+01  8.83E+02
 
 TH 5
+       -7.15E+01 -1.11E+02 -4.08E+01  2.72E+01  2.94E+02
 
 TH 6
+       -5.67E+00  1.16E+01  1.56E+00  1.92E+01 -1.54E+01  1.75E+02
 
 TH 7
+        3.38E+01 -3.82E+01  1.50E+01 -2.82E+01 -4.42E+01  1.02E+01  1.34E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -6.93E+00 -1.36E+01 -4.81E+00  4.26E+01  7.11E+00  3.79E-01  1.20E+01  0.00E+00  1.18E+01
 
 TH10
+       -6.77E+00  2.12E+01 -2.07E+00  1.23E+01 -3.46E+01 -8.80E+00  1.68E+01  0.00E+00 -1.67E+00  5.72E+01
 
 TH11
+        4.53E+01 -6.03E+01 -8.75E+00 -5.99E+01 -1.44E+01  4.98E+01  3.97E+01  0.00E+00  1.90E+00  1.45E+01  1.59E+02
 
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
 #CPUT: Total CPU Time in Seconds,       92.206
Stop Time:
Wed Sep 29 16:41:09 CDT 2021
