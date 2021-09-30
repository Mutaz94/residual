Wed Sep 29 16:06:12 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat74.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m74.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1663.22333416684        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2519E+02 -1.7785E+01 -9.8882E+00 -3.9199E+00  2.6836E+01  5.6149E+01 -3.3355E+00  7.5090E+00 -4.5921E+00  8.7933E+00
            -8.3640E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1666.39888859580        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.8867E-01  1.0202E+00  1.0159E+00  1.0337E+00  9.9478E-01  9.4190E-01  1.0244E+00  9.6597E-01  1.0337E+00  9.5946E-01
             1.0304E+00
 PARAMETER:  8.8609E-02  1.2002E-01  1.1580E-01  1.3317E-01  9.4769E-02  4.0140E-02  1.2416E-01  6.5374E-02  1.3316E-01  5.8614E-02
             1.2996E-01
 GRADIENT:  -1.8171E+01 -3.0599E+00 -4.3818E-01 -4.0683E+00  5.0612E+00 -3.4840E+00 -2.3634E+00  4.4379E+00 -4.2004E-03  2.4672E+00
             1.7872E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1668.77884201465        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  9.9370E-01  8.8729E-01  8.1969E-01  1.1113E+00  8.2660E-01  9.5619E-01  1.2427E+00  6.0987E-01  9.5276E-01  7.6839E-01
             1.0196E+00
 PARAMETER:  9.3681E-02 -1.9588E-02 -9.8831E-02  2.0549E-01 -9.0429E-02  5.5197E-02  3.1731E-01 -3.9452E-01  5.1610E-02 -1.6346E-01
             1.1942E-01
 GRADIENT:  -7.8723E+00  7.5043E+00 -5.2991E+00  1.5998E+01  8.7820E+00  1.9687E+00  3.0635E-01  1.6876E+00 -3.4290E-01 -2.5257E+00
            -2.1118E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1669.38167995154        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.9731E-01  7.6558E-01  7.9452E-01  1.1782E+00  7.5986E-01  9.5002E-01  1.3854E+00  4.2418E-01  9.0356E-01  7.6345E-01
             1.0255E+00
 PARAMETER:  9.7305E-02 -1.6712E-01 -1.3002E-01  2.6398E-01 -1.7462E-01  4.8731E-02  4.2601E-01 -7.5760E-01 -1.4133E-03 -1.6991E-01
             1.2521E-01
 GRADIENT:   1.9298E+00  1.0232E+01  5.9382E+00  1.1779E+01 -9.0165E+00 -3.0635E-01 -1.2545E-01 -3.9869E-01 -1.3842E+00 -1.4694E+00
            -4.1592E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1669.62844530425        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.9369E-01  5.9903E-01  8.3602E-01  1.2767E+00  7.2843E-01  9.4897E-01  1.6288E+00  4.0274E-01  8.6411E-01  7.9480E-01
             1.0244E+00
 PARAMETER:  9.3671E-02 -4.1244E-01 -7.9107E-02  3.4428E-01 -2.1686E-01  4.7619E-02  5.8786E-01 -8.0945E-01 -4.6055E-02 -1.2966E-01
             1.2413E-01
 GRADIENT:  -1.7163E+00  5.6297E+00  5.8076E+00  9.6228E+00 -6.5956E+00  4.5267E-02 -5.1023E-01 -1.0761E+00  1.7673E-01 -2.8386E-01
            -1.3933E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1670.02523677944        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.8966E-01  3.9192E-01  9.1069E-01  1.4028E+00  7.0792E-01  9.4462E-01  2.1633E+00  6.0189E-01  8.1190E-01  7.9344E-01
             1.0245E+00
 PARAMETER:  8.9609E-02 -8.3669E-01  6.4481E-03  4.3849E-01 -2.4542E-01  4.3023E-02  8.7165E-01 -4.0767E-01 -1.0838E-01 -1.3137E-01
             1.2423E-01
 GRADIENT:  -1.5840E+00  3.9413E+00  1.9920E+00  9.9282E+00 -5.0274E+00 -2.6027E-01 -1.1087E-01  4.7380E-01 -1.3948E+00  8.8718E-01
             4.9695E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1670.12523560700        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1059
 NPARAMETR:  9.8818E-01  2.8582E-01  9.2491E-01  1.4618E+00  6.8831E-01  9.4304E-01  2.6140E+00  6.2222E-01  7.9361E-01  7.8973E-01
             1.0254E+00
 PARAMETER:  8.8108E-02 -1.1524E+00  2.1936E-02  4.7966E-01 -2.7352E-01  4.1350E-02  1.0609E+00 -3.7446E-01 -1.3116E-01 -1.3607E-01
             1.2505E-01
 GRADIENT:   5.3167E-01  2.9379E+00  4.4399E+00  6.8662E+00 -6.8600E+00 -1.1239E-01  4.4191E-01 -1.9453E-01 -1.1596E+00 -5.2983E-01
            -1.2523E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1670.19988414214        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  9.8735E-01  2.4292E-01  9.3395E-01  1.4789E+00  6.8638E-01  9.4252E-01  2.8156E+00  6.4189E-01  7.9024E-01  7.9591E-01
             1.0253E+00
 PARAMETER:  8.7270E-02 -1.3150E+00  3.1667E-02  4.9129E-01 -2.7632E-01  4.0802E-02  1.1352E+00 -3.4333E-01 -1.3542E-01 -1.2827E-01
             1.2498E-01
 GRADIENT:   1.1606E+00 -1.0955E-01 -1.6638E+00 -8.3640E+00  2.7562E+00  5.4852E-02 -5.1050E-01  1.6962E-01  2.0983E-01 -2.3220E-02
             3.0388E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1670.20633272280        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1424             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8740E-01  2.4327E-01  9.3453E-01  1.4781E+00  6.8556E-01  9.4256E-01  2.8387E+00  6.3672E-01  7.9018E-01  7.9633E-01
             1.0246E+00
 PARAMETER:  8.7319E-02 -1.3136E+00  3.2291E-02  4.9077E-01 -2.7752E-01  4.0845E-02  1.1433E+00 -3.5143E-01 -1.3549E-01 -1.2774E-01
             1.2430E-01
 GRADIENT:   3.7511E+02  3.6776E+01  5.2609E+00  6.7557E+02  2.6077E+01  3.2566E+01  2.7013E+01  3.9335E-01  1.4304E+01  5.8504E-01
             8.5250E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1670.20706960410        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1602
 NPARAMETR:  9.8739E-01  2.4284E-01  9.3395E-01  1.4782E+00  6.8523E-01  9.4256E-01  2.8407E+00  6.3596E-01  7.9018E-01  7.9622E-01
             1.0246E+00
 PARAMETER:  8.7312E-02 -1.3153E+00  3.1663E-02  4.9086E-01 -2.7799E-01  4.0841E-02  1.1441E+00 -3.5262E-01 -1.3549E-01 -1.2788E-01
             1.2429E-01
 GRADIENT:   1.3168E+00  4.8279E-01  1.2430E+00 -1.0267E+01 -5.7540E-01  7.1431E-02  4.5228E-01 -1.1721E-01  5.3276E-02 -1.5434E-01
            -1.4705E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1670.20816938184        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1785             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8738E-01  2.4207E-01  9.3263E-01  1.4784E+00  6.8499E-01  9.4255E-01  2.8436E+00  6.3785E-01  7.9014E-01  7.9687E-01
             1.0248E+00
 PARAMETER:  8.7304E-02 -1.3185E+00  3.0249E-02  4.9097E-01 -2.7835E-01  4.0837E-02  1.1451E+00 -3.4965E-01 -1.3555E-01 -1.2707E-01
             1.2449E-01
 GRADIENT:   3.7487E+02  3.6470E+01  3.4407E+00  6.7571E+02  2.8097E+01  3.2546E+01  2.7002E+01  6.0427E-01  1.4333E+01  8.5581E-01
             1.0861E+00

0ITERATION NO.:   54    OBJECTIVE VALUE:  -1670.20849868821        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:     1916
 NPARAMETR:  9.8738E-01  2.4206E-01  9.3289E-01  1.4785E+00  6.8469E-01  9.4255E-01  2.8449E+00  6.3563E-01  7.9011E-01  7.9612E-01
             1.0246E+00
 PARAMETER:  8.7302E-02 -1.3186E+00  3.0527E-02  4.9103E-01 -2.7879E-01  4.0832E-02  1.1455E+00 -3.5315E-01 -1.3558E-01 -1.2800E-01
             1.2433E-01
 GRADIENT:   8.9594E-03  1.1893E-01  4.6481E-01 -1.2454E-01  7.8686E-03  6.3541E-05 -4.7468E-02 -4.5089E-02  5.0663E-03 -5.8138E-02
            -9.1159E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1916
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.2829E-04  2.3898E-02 -2.0998E-02 -1.5780E-02 -1.3099E-02
 SE:             2.9817E-02  1.4532E-02  1.3695E-02  2.6957E-02  2.1686E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8319E-01  1.0006E-01  1.2521E-01  5.5830E-01  5.4583E-01

 ETASHRINKSD(%)  1.0980E-01  5.1317E+01  5.4120E+01  9.6898E+00  2.7348E+01
 ETASHRINKVR(%)  2.1949E-01  7.6299E+01  7.8950E+01  1.8441E+01  4.7217E+01
 EBVSHRINKSD(%)  5.0803E-01  5.8502E+01  5.5082E+01  8.2421E+00  2.3929E+01
 EBVSHRINKVR(%)  1.0135E+00  8.2779E+01  7.9823E+01  1.5805E+01  4.2132E+01
 RELATIVEINF(%)  9.7812E+01  2.6621E+00  2.2849E+00  1.7930E+01  5.3137E+00
 EPSSHRINKSD(%)  4.4283E+01
 EPSSHRINKVR(%)  6.8957E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1670.2084986882091     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -935.05767212447097     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.64
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1670.208       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.87E-01  2.42E-01  9.33E-01  1.48E+00  6.85E-01  9.43E-01  2.84E+00  6.36E-01  7.90E-01  7.96E-01  1.02E+00
 


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
+        1.27E+03
 
 TH 2
+       -3.03E+01  5.19E+02
 
 TH 3
+        8.68E+00  1.67E+02  6.68E+02
 
 TH 4
+       -6.49E+00  3.31E+02 -9.55E+01  7.07E+02
 
 TH 5
+        2.37E+00 -4.43E+02 -1.10E+03  1.20E+01  2.21E+03
 
 TH 6
+       -7.00E-03 -5.05E+00  1.74E+00 -2.19E+00 -1.07E+00  2.20E+02
 
 TH 7
+        6.47E-01  3.71E+01 -4.69E+00 -7.19E+00  8.31E+00  1.09E-02  6.85E+00
 
 TH 8
+        1.15E-01 -5.68E-01 -6.09E+01 -4.78E+00  1.99E+01  2.20E-01  5.66E-02  3.49E+01
 
 TH 9
+        2.73E+00 -4.64E+01  1.91E+01  1.44E+01 -2.54E+01 -8.11E-01 -3.73E+00  1.15E+00  2.55E+02
 
 TH10
+       -1.98E-01  1.66E+01 -2.51E+01 -1.53E+01 -8.45E+01  2.18E-01  1.96E-01  3.59E+01  6.03E+00  1.03E+02
 
 TH11
+       -8.70E+00 -4.12E+00 -2.50E+01 -8.45E+00  3.86E+00  2.54E+00  9.76E-02  1.49E+01  9.29E+00  2.11E+01  2.01E+02
 
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
 #CPUT: Total CPU Time in Seconds,       34.547
Stop Time:
Wed Sep 29 16:06:48 CDT 2021
