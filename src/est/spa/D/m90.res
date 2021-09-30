Wed Sep 29 20:24:55 CDT 2021
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
$DATA ../../../../data/spa/D/dat90.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m90.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   27551.5754136805        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.0308E+03  5.8160E+02 -3.4429E+00  5.5706E+02 -6.5475E+00 -2.5166E+03 -1.2553E+03 -4.9971E+01 -1.7807E+03 -4.9266E+02
            -5.1653E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -425.796442102610        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1059E+00  1.0160E+00  9.2157E-01  1.2475E+00  1.3122E+00  1.5779E+00  9.9935E-01  9.7191E-01  8.7920E-01  9.3217E-01
             1.5114E+01
 PARAMETER:  2.0069E-01  1.1583E-01  1.8321E-02  3.2113E-01  3.7171E-01  5.5613E-01  9.9348E-02  7.1504E-02 -2.8744E-02  2.9763E-02
             2.8156E+00
 GRADIENT:  -5.3092E+01  1.2138E+01 -1.5974E-01  1.2169E+01 -6.6407E+00  1.5482E+01  1.5940E+00  2.8290E+00  6.6861E+00  1.9962E+00
            -7.7902E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -439.525210966796        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.2100E+00  7.5379E-01  9.2887E-01  1.4424E+00  2.1456E+00  1.3602E+00  6.2600E-01  2.1158E-01  3.8562E-01  1.6521E+00
             1.6331E+01
 PARAMETER:  2.9060E-01 -1.8264E-01  2.6211E-02  4.6633E-01  8.6342E-01  4.0764E-01 -3.6841E-01 -1.4532E+00 -8.5291E-01  6.0208E-01
             2.8930E+00
 GRADIENT:   7.7759E+00  1.1325E+01 -6.9398E-01  1.5903E+01 -4.5026E+00 -1.2492E+01  3.0848E-01  1.4082E-01  2.0519E+00  3.4126E-01
             4.3917E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -458.825401060893        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  1.1954E+00  2.8709E-01  7.1214E-01  1.7135E+00  4.8304E+00  1.4732E+00  6.7465E-01  1.6646E-02  4.7304E-02  7.4066E+00
             1.7416E+01
 PARAMETER:  2.7846E-01 -1.1480E+00 -2.3948E-01  6.3852E-01  1.6749E+00  4.8746E-01 -2.9356E-01 -3.9956E+00 -2.9512E+00  2.1024E+00
             2.9574E+00
 GRADIENT:  -4.5867E+00  9.3346E+00 -9.0336E-01  3.4728E+01 -3.2787E+00  3.9359E+00  1.0458E-01  6.2432E-04  1.0991E-01 -1.1654E+00
             4.5822E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -483.476815910271        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  7.5328E-01  3.1595E-02  1.5950E-01  9.2197E-01  1.2284E+01  1.2891E+00  6.5819E+00  1.0000E-02  2.7691E-02  2.6161E+00
             1.2924E+01
 PARAMETER: -1.8332E-01 -3.3547E+00 -1.7357E+00  1.8760E-02  2.6083E+00  3.5395E-01  1.9843E+00 -1.0321E+01 -3.4866E+00  1.0617E+00
             2.6591E+00
 GRADIENT:  -3.5164E+01  1.4878E+00  2.9335E+01  4.1986E+01 -2.1563E-01 -4.8377E+01  1.6501E-01  0.0000E+00  4.1851E-02 -1.6218E-02
            -1.2858E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -490.496803829900        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  5.1708E-01  1.0000E-02  4.6486E-02  5.0095E-01  1.2676E+01  1.3042E+00  3.6751E+00  1.0000E-02  1.0000E-02  9.4018E-01
             1.1932E+01
 PARAMETER: -5.5956E-01 -6.0354E+00 -2.9686E+00 -5.9125E-01  2.6397E+00  3.6561E-01  1.4016E+00 -1.5578E+01 -5.7290E+00  3.8311E-02
             2.5792E+00
 GRADIENT:  -3.6873E+01  0.0000E+00 -6.0133E+01  1.9563E+02  6.9290E-02 -6.8338E+01  1.4916E-04  0.0000E+00  0.0000E+00 -1.0282E-03
            -1.8059E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -490.632446139396        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      470
 NPARAMETR:  4.8745E-01  1.0000E-02  3.9351E-02  4.5064E-01  1.2499E+01  1.3018E+00  2.8027E+00  1.0000E-02  1.0000E-02  8.0373E-01
             1.1897E+01
 PARAMETER: -6.1856E-01 -6.4792E+00 -3.1352E+00 -6.9708E-01  2.6256E+00  3.6377E-01  1.1306E+00 -1.6313E+01 -6.1395E+00 -1.1850E-01
             2.5763E+00
 GRADIENT:  -6.3009E+01  0.0000E+00 -1.0333E+02  1.9848E+02  8.4341E-02 -7.0857E+01 -1.5036E-03  0.0000E+00  0.0000E+00 -7.0570E-04
            -2.0541E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -529.381731401982        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      648
 NPARAMETR:  5.1759E-01  1.0000E-02  3.0085E-02  3.5642E-01  6.5799E+00  1.4776E+00  3.7151E-02  1.0000E-02  1.0000E-02  5.3019E-01
             1.5240E+01
 PARAMETER: -5.5858E-01 -8.6566E+00 -3.4037E+00 -9.3165E-01  1.9840E+00  4.9045E-01 -3.1928E+00 -1.8380E+01 -9.4349E+00 -5.3451E-01
             2.8239E+00
 GRADIENT:   8.2830E+00  0.0000E+00 -2.1684E+01  2.8348E+01  9.8515E-01 -4.1533E+00  1.4144E-05  0.0000E+00  0.0000E+00  2.7161E-01
            -8.0611E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -530.154475045054        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      824
 NPARAMETR:  4.8142E-01  1.0000E-02  2.5556E-02  3.1143E-01  6.4227E+00  1.4803E+00  2.6872E-02  1.0000E-02  1.0000E-02  4.2346E-01
             1.5093E+01
 PARAMETER: -6.3102E-01 -9.1819E+00 -3.5669E+00 -1.0666E+00  1.9598E+00  4.9223E-01 -3.5167E+00 -1.9177E+01 -9.8489E+00 -7.5930E-01
             2.8142E+00
 GRADIENT:   1.2303E+00  0.0000E+00 -5.4272E+00  6.7352E+00 -2.0476E+00 -6.1583E-01  2.4554E-05  0.0000E+00  0.0000E+00  3.4941E-01
             1.0730E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -530.405367308506        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1000            RESET HESSIAN, TYPE II
 NPARAMETR:  4.6825E-01  1.0000E-02  2.4145E-02  2.9510E-01  7.1450E+00  1.4755E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.2825E-01
             1.5023E+01
 PARAMETER: -6.5876E-01 -9.4025E+00 -3.6237E+00 -1.1205E+00  2.0664E+00  4.8903E-01 -4.6999E+00 -1.9618E+01 -9.9897E+00 -1.3773E+00
             2.8096E+00
 GRADIENT:   3.0757E+01  0.0000E+00  3.5274E+01  1.8021E+01  8.1316E-01  3.7115E+00  0.0000E+00  0.0000E+00  0.0000E+00  3.0797E-02
             2.1623E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -530.458034331014        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1176
 NPARAMETR:  4.6862E-01  1.0000E-02  2.4092E-02  2.9577E-01  6.5976E+00  1.4791E+00  1.0000E-02  1.0000E-02  1.0000E-02  5.8155E-02
             1.5020E+01
 PARAMETER: -6.5796E-01 -9.4025E+00 -3.6259E+00 -1.1182E+00  1.9867E+00  4.9141E-01 -4.6999E+00 -1.9618E+01 -9.9897E+00 -2.7446E+00
             2.8094E+00
 GRADIENT:   2.7181E-01  0.0000E+00 -6.1299E-01  4.1849E-01 -7.7527E-02  2.3236E-01  0.0000E+00  0.0000E+00  0.0000E+00  5.8870E-03
            -1.3566E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -530.458496716521        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1353
 NPARAMETR:  4.6859E-01  1.0000E-02  2.4122E-02  2.9579E-01  6.6297E+00  1.4776E+00  1.0000E-02  1.0000E-02  1.0000E-02  3.4942E-02
             1.5022E+01
 PARAMETER: -6.5803E-01 -9.4025E+00 -3.6246E+00 -1.1181E+00  1.9916E+00  4.9039E-01 -4.6999E+00 -1.9618E+01 -9.9897E+00 -3.2541E+00
             2.8095E+00
 GRADIENT:   6.4990E-05  0.0000E+00 -1.0261E-02 -1.8395E-01 -2.8421E-02 -1.1780E-02  0.0000E+00  0.0000E+00  0.0000E+00  1.9939E-03
             1.0670E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -530.462376507085        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     1551
 NPARAMETR:  4.6858E-01  1.0000E-02  2.4051E-02  2.9551E-01  6.6096E+00  1.4779E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.5016E+01
 PARAMETER: -6.5805E-01 -9.4025E+00 -3.6276E+00 -1.1190E+00  1.9885E+00  4.9065E-01 -4.6999E+00 -1.9618E+01 -9.9897E+00 -6.1996E+00
             2.8091E+00
 GRADIENT:   8.4895E-01  0.0000E+00 -1.5762E+00  1.3978E+00  9.4342E-02 -2.7570E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -5.6718E-01

0ITERATION NO.:   61    OBJECTIVE VALUE:  -530.462376507085        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1573
 NPARAMETR:  4.6858E-01  1.0000E-02  2.4051E-02  2.9551E-01  6.6096E+00  1.4779E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.5016E+01
 PARAMETER: -6.5805E-01 -9.4025E+00 -3.6276E+00 -1.1190E+00  1.9885E+00  4.9065E-01 -4.6999E+00 -1.9618E+01 -9.9897E+00 -6.1996E+00
             2.8091E+00
 GRADIENT:   8.4895E-01  0.0000E+00 -1.5762E+00  1.3978E+00  9.4342E-02 -2.7570E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -5.6718E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1573
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1179E-03  4.8886E-06  9.3250E-05 -2.0013E-04  3.2683E-06
 SE:             2.8325E-02  3.7657E-06  2.1214E-04  2.5643E-04  2.9595E-05
 N:                     100         100         100         100         100

 P VAL.:         9.4040E-01  1.9422E-01  6.6025E-01  4.3513E-01  9.1207E-01

 ETASHRINKSD(%)  5.1092E+00  9.9987E+01  9.9289E+01  9.9141E+01  9.9901E+01
 ETASHRINKVR(%)  9.9574E+00  1.0000E+02  9.9995E+01  9.9993E+01  1.0000E+02
 EBVSHRINKSD(%)  5.3331E+00  9.9981E+01  9.9175E+01  9.8973E+01  9.9866E+01
 EBVSHRINKVR(%)  1.0382E+01  1.0000E+02  9.9993E+01  9.9989E+01  1.0000E+02
 RELATIVEINF(%)  3.1885E+00  4.3544E-07  2.7054E-05  4.2119E-05  2.8255E-05
 EPSSHRINKSD(%)  4.7068E+00
 EPSSHRINKVR(%)  9.1920E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -530.46237650708520     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       204.68845005665298     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.00
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -530.462       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.69E-01  1.00E-02  2.41E-02  2.96E-01  6.61E+00  1.48E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.50E+01
 


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
+        1.27E+02
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -9.91E+03  0.00E+00  7.72E+05
 
 TH 4
+        9.54E+02  0.00E+00 -7.43E+04  7.15E+03
 
 TH 5
+        3.98E+00  0.00E+00 -3.10E+02  2.99E+01  1.25E-01
 
 TH 6
+       -9.05E+00  0.00E+00  7.05E+02 -6.78E+01 -2.83E-01  6.43E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.34E+00  0.00E+00  2.60E+02 -2.50E+01 -1.05E-01  2.37E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  8.76E-02
 
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
+        2.04E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.10E+04  0.00E+00  8.49E+05
 
 TH 4
+       -4.21E+02  0.00E+00 -8.16E+04  9.11E+03
 
 TH 5
+        5.14E+00  0.00E+00 -3.41E+02  3.38E+01  3.59E-01
 
 TH 6
+       -8.79E+00  0.00E+00  7.73E+02 -9.24E+01 -4.21E-02  6.86E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.20E+01  0.00E+00  2.87E+02 -1.49E+01 -1.40E-01  5.46E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  1.55E+00
 
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
+        2.08E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.57E+04  0.00E+00  9.34E+05
 
 TH 4
+       -1.40E+02  0.00E+00 -8.44E+04  9.02E+03
 
 TH 5
+        7.11E+00  0.00E+00 -4.36E+02  4.00E+01  2.39E-01
 
 TH 6
+        1.02E+02  0.00E+00 -2.17E+03  1.20E+02  1.55E+00  7.29E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.88E+01  0.00E+00  3.94E+02 -2.68E+01 -2.16E-01  7.88E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  8.83E+00
 
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
 #CPUT: Total CPU Time in Seconds,       27.784
Stop Time:
Wed Sep 29 20:25:25 CDT 2021
