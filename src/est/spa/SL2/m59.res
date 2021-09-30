Wed Sep 29 15:59:40 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat59.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1683.52141084084        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4427E+02 -1.0649E+01 -2.8158E+01  2.7072E+01  9.5089E+01  3.5494E+01  5.1010E+00  3.7663E+00 -1.6241E+01 -6.9352E+00
             1.8828E-01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1686.91762222572        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.1522E+00  9.6632E-01  9.6780E-01  1.1358E+00  8.6103E-01  1.1449E+00  9.4089E-01  9.4816E-01  1.1409E+00  9.7012E-01
             9.7401E-01
 PARAMETER:  2.4172E-01  6.5744E-02  6.7266E-02  2.2735E-01 -4.9623E-02  2.3530E-01  3.9070E-02  4.6765E-02  2.3178E-01  6.9666E-02
             7.3671E-02
 GRADIENT:   1.3578E+02  7.1389E+01  2.7288E+01  8.8490E+01 -5.8436E+01  8.5548E+00  2.4346E+00  3.0768E+00  1.3166E+01  7.6340E+00
            -9.6112E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1690.63321921113        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      368
 NPARAMETR:  1.1562E+00  9.4285E-01  7.6318E-01  1.1054E+00  7.8135E-01  1.1569E+00  8.1824E-01  5.1424E-01  1.1564E+00  8.6852E-01
             9.7097E-01
 PARAMETER:  2.4514E-01  4.1149E-02 -1.7025E-01  2.0023E-01 -1.4673E-01  2.4578E-01 -1.0060E-01 -5.6506E-01  2.4534E-01 -4.0961E-02
             7.0539E-02
 GRADIENT:   1.3591E+02  3.3804E+01  1.1827E+00  6.4206E+01 -7.8507E+00  1.1385E+01 -4.0096E+00 -8.2198E-01  1.7876E+01 -4.7891E+00
            -1.2698E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1699.78001423458        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      544
 NPARAMETR:  1.0615E+00  6.7706E-01  7.9017E-01  1.2157E+00  6.9918E-01  1.1056E+00  1.1053E+00  4.0024E-01  9.5587E-01  8.7824E-01
             9.9304E-01
 PARAMETER:  1.5971E-01 -2.9000E-01 -1.3551E-01  2.9529E-01 -2.5785E-01  2.0036E-01  2.0010E-01 -8.1570E-01  5.4866E-02 -2.9832E-02
             9.3014E-02
 GRADIENT:  -1.0835E+01  8.1621E+00  1.0983E+01 -2.4957E+00 -1.7819E+01  4.6682E+00 -1.0131E+00 -7.2348E-01  4.6718E-01  6.4320E-01
             4.7083E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1700.93679661626        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      720
 NPARAMETR:  1.0688E+00  3.9086E-01  8.8863E-01  1.3978E+00  6.7289E-01  1.0758E+00  1.5163E+00  6.0544E-01  8.6322E-01  8.8956E-01
             9.8389E-01
 PARAMETER:  1.6656E-01 -8.3940E-01 -1.8076E-02  4.3488E-01 -2.9617E-01  1.7310E-01  5.1626E-01 -4.0181E-01 -4.7085E-02 -1.7033E-02
             8.3763E-02
 GRADIENT:   1.2511E+01  5.7754E+00  3.4880E+00  1.0830E+01 -8.2852E+00 -4.0690E+00  5.8036E-02  7.5383E-01 -9.9685E-01  1.5095E+00
            -7.5980E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1701.06395311558        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      896
 NPARAMETR:  1.0602E+00  2.9960E-01  9.1554E-01  1.4550E+00  6.6522E-01  1.0835E+00  1.7454E+00  6.2169E-01  8.3806E-01  8.9923E-01
             9.8532E-01
 PARAMETER:  1.5850E-01 -1.1053E+00  1.1757E-02  4.7501E-01 -3.0763E-01  1.8021E-01  6.5699E-01 -3.7531E-01 -7.6664E-02 -6.2121E-03
             8.5208E-02
 GRADIENT:   9.7369E-01  5.2713E+00  5.5238E+00  1.6469E+01 -8.6913E+00 -3.6065E-01  1.1733E-01 -8.0058E-02 -1.2713E+00  6.5564E-01
            -3.6845E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1701.22323765819        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1078
 NPARAMETR:  1.0602E+00  2.2222E-01  9.2369E-01  1.4745E+00  6.6095E-01  1.0854E+00  1.9172E+00  6.4617E-01  8.2630E-01  9.0196E-01
             9.8586E-01
 PARAMETER:  1.5849E-01 -1.4041E+00  2.0620E-02  4.8830E-01 -3.1408E-01  1.8199E-01  7.5087E-01 -3.3669E-01 -9.0793E-02 -3.1869E-03
             8.5760E-02
 GRADIENT:   4.8894E+00 -2.0691E+00 -7.8643E+00 -3.2629E+01  1.6643E+01  1.0140E+00  3.9852E-03  3.3644E-01  1.1363E+00 -3.2886E-01
             7.9434E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1701.33731884940        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1259
 NPARAMETR:  1.0602E+00  2.2509E-01  9.2301E-01  1.4805E+00  6.5714E-01  1.0845E+00  1.9453E+00  6.4477E-01  8.2384E-01  8.9990E-01
             9.8484E-01
 PARAMETER:  1.5842E-01 -1.3912E+00  1.9888E-02  4.9240E-01 -3.1986E-01  1.8109E-01  7.6540E-01 -3.3886E-01 -9.3773E-02 -5.4698E-03
             8.4719E-02
 GRADIENT:   4.4828E+00  1.4248E-01 -1.3319E+00 -1.6878E+01  5.0099E+00  6.1188E-01  2.9764E-02  1.3919E-01  2.1632E-01  1.3006E-02
             1.4492E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1701.34699322384        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1442
 NPARAMETR:  1.0601E+00  2.2259E-01  9.2184E-01  1.4808E+00  6.5529E-01  1.0845E+00  1.9559E+00  6.4254E-01  8.2332E-01  8.9962E-01
             9.8471E-01
 PARAMETER:  1.5841E-01 -1.4024E+00  1.8618E-02  4.9261E-01 -3.2267E-01  1.8110E-01  7.7085E-01 -3.4233E-01 -9.4413E-02 -5.7805E-03
             8.4587E-02
 GRADIENT:   4.5740E+00  1.4924E-01  2.5035E-01 -1.8608E+01  2.8743E+00  6.3080E-01  2.4045E-02  7.4836E-02  2.4485E-01  7.0342E-02
             8.7443E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1701.35297699751        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1626             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0601E+00  2.2270E-01  9.2007E-01  1.4819E+00  6.5282E-01  1.0844E+00  1.9694E+00  6.3625E-01  8.2267E-01  8.9864E-01
             9.8440E-01
 PARAMETER:  1.5835E-01 -1.4019E+00  1.6696E-02  4.9330E-01 -3.2645E-01  1.8105E-01  7.7775E-01 -3.5216E-01 -9.5197E-02 -6.8722E-03
             8.4276E-02
 GRADIENT:   7.5058E+02  3.6888E+01  8.5544E+00  9.4341E+02  3.8581E+01  1.1437E+02  4.6946E+00  4.9985E-01  1.4484E+01  1.0045E+00
             6.0195E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1701.35866995151        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1805
 NPARAMETR:  1.0587E+00  2.1783E-01  9.1828E-01  1.4851E+00  6.5237E-01  1.0839E+00  1.9791E+00  6.3813E-01  8.2222E-01  8.9861E-01
             9.8454E-01
 PARAMETER:  1.5700E-01 -1.4240E+00  1.4752E-02  4.9545E-01 -3.2714E-01  1.8058E-01  7.8263E-01 -3.4921E-01 -9.5749E-02 -6.9086E-03
             8.4416E-02
 GRADIENT:   1.9904E+00  5.4797E-01  1.1254E-01 -1.4276E+01  2.1362E+00  4.4355E-01  4.4569E-03  2.3270E-02  2.5591E-01  1.3786E-02
             2.6055E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1701.36846304542        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1985             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0600E+00  2.1575E-01  9.1635E-01  1.4842E+00  6.5036E-01  1.0843E+00  2.0048E+00  6.3363E-01  8.2124E-01  8.9701E-01
             9.8429E-01
 PARAMETER:  1.5825E-01 -1.4337E+00  1.2638E-02  4.9488E-01 -3.3023E-01  1.8097E-01  7.9554E-01 -3.5629E-01 -9.6939E-02 -8.6877E-03
             8.4169E-02
 GRADIENT:   7.4949E+02  3.5406E+01  6.8796E+00  9.4958E+02  4.1619E+01  1.1413E+02  4.6639E+00  5.3822E-01  1.4576E+01  8.0229E-01
             6.4947E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1701.37147965815        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2166
 NPARAMETR:  1.0600E+00  2.1548E-01  9.1496E-01  1.4845E+00  6.4947E-01  1.0843E+00  2.0105E+00  6.3164E-01  8.2100E-01  8.9649E-01
             9.8421E-01
 PARAMETER:  1.5823E-01 -1.4349E+00  1.1130E-02  4.9511E-01 -3.3160E-01  1.8095E-01  7.9838E-01 -3.5943E-01 -9.7236E-02 -9.2674E-03
             8.4080E-02
 GRADIENT:   4.4310E+00  4.9749E-01  2.0607E+00 -1.6790E+01 -1.2806E-01  6.0571E-01  1.8547E-02 -1.5210E-01  6.2616E-02 -2.5800E-01
            -1.9873E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1701.37474306795        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2347
 NPARAMETR:  1.0590E+00  2.1392E-01  9.1320E-01  1.4860E+00  6.4864E-01  1.0837E+00  2.0128E+00  6.3137E-01  8.2080E-01  8.9669E-01
             9.8427E-01
 PARAMETER:  1.5737E-01 -1.4421E+00  9.1971E-03  4.9610E-01 -3.3288E-01  1.8037E-01  7.9955E-01 -3.5986E-01 -9.7481E-02 -9.0505E-03
             8.4144E-02
 GRADIENT:   2.8046E+00  5.7497E-01  9.2087E-01 -1.5002E+01  7.5889E-01  3.7695E-01  4.4827E-03 -5.3634E-02  8.6713E-02 -9.8628E-02
            -8.4635E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1701.38038533290        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2534             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0599E+00  2.1187E-01  9.1066E-01  1.4856E+00  6.4757E-01  1.0843E+00  2.0344E+00  6.3138E-01  8.2022E-01  8.9668E-01
             9.8437E-01
 PARAMETER:  1.5818E-01 -1.4518E+00  6.4168E-03  4.9583E-01 -3.3453E-01  1.8091E-01  8.1019E-01 -3.5985E-01 -9.8183E-02 -9.0533E-03
             8.4245E-02
 GRADIENT:   7.4812E+02  3.4637E+01  4.6079E+00  9.5373E+02  4.4497E+01  1.1387E+02  4.7135E+00  7.8645E-01  1.4545E+01  1.1673E+00
             9.1263E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1701.38276802328        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2717
 NPARAMETR:  1.0599E+00  2.1126E-01  9.0929E-01  1.4857E+00  6.4681E-01  1.0843E+00  2.0402E+00  6.3040E-01  8.2011E-01  8.9644E-01
             9.8433E-01
 PARAMETER:  1.5818E-01 -1.4546E+00  4.9082E-03  4.9588E-01 -3.3570E-01  1.8091E-01  8.1304E-01 -3.6140E-01 -9.8312E-02 -9.3236E-03
             8.4206E-02
 GRADIENT:   4.4473E+00  2.6379E-01 -6.8602E-01 -1.7464E+01  2.5285E+00  6.0753E-01  2.8071E-02  1.4367E-01  7.9955E-02  1.8741E-01
             1.3448E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1701.38563290516        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2903             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0599E+00  2.1104E-01  9.0868E-01  1.4860E+00  6.4532E-01  1.0843E+00  2.0487E+00  6.2438E-01  8.1986E-01  8.9510E-01
             9.8404E-01
 PARAMETER:  1.5816E-01 -1.4557E+00  4.2327E-03  4.9609E-01 -3.3801E-01  1.8090E-01  8.1719E-01 -3.7099E-01 -9.8624E-02 -1.0815E-02
             8.3907E-02
 GRADIENT:   7.4819E+02  3.4779E+01  7.2259E+00  9.5605E+02  4.1788E+01  1.1387E+02  4.7729E+00  5.3407E-01  1.4549E+01  8.3683E-01
             6.0646E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1701.38835221489        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3084
 NPARAMETR:  1.0599E+00  2.1039E-01  9.0737E-01  1.4860E+00  6.4504E-01  1.0843E+00  2.0523E+00  6.2498E-01  8.1980E-01  8.9517E-01
             9.8412E-01
 PARAMETER:  1.5816E-01 -1.4588E+00  2.7978E-03  4.9608E-01 -3.3845E-01  1.8090E-01  8.1894E-01 -3.7004E-01 -9.8701E-02 -1.0740E-02
             8.3992E-02
 GRADIENT:   4.4231E+00  4.1306E-01  8.6194E-01 -1.7113E+01  5.4796E-01  6.0432E-01  2.6404E-02 -3.3765E-02  6.4542E-02 -6.0868E-02
            -6.1857E-02

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1701.39093932903        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3268             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0599E+00  2.0925E-01  9.0536E-01  1.4862E+00  6.4422E-01  1.0843E+00  2.0607E+00  6.2479E-01  8.1958E-01  8.9512E-01
             9.8419E-01
 PARAMETER:  1.5815E-01 -1.4642E+00  5.7315E-04  4.9620E-01 -3.3972E-01  1.8089E-01  8.2305E-01 -3.7034E-01 -9.8961E-02 -1.0802E-02
             8.4065E-02
 GRADIENT:   7.4748E+02  3.4257E+01  4.9118E+00  9.5610E+02  4.4658E+01  1.1372E+02  4.7853E+00  7.6793E-01  1.4568E+01  1.1363E+00
             8.7375E-01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1701.39248191563        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     3451
 NPARAMETR:  1.0599E+00  2.0873E-01  9.0447E-01  1.4863E+00  6.4365E-01  1.0842E+00  2.0654E+00  6.2356E-01  8.1946E-01  8.9482E-01
             9.8416E-01
 PARAMETER:  1.5815E-01 -1.4667E+00 -4.0348E-04  4.9628E-01 -3.4060E-01  1.8089E-01  8.2530E-01 -3.7231E-01 -9.9107E-02 -1.1135E-02
             8.4032E-02
 GRADIENT:   4.4300E+00  3.1477E-01 -2.1279E-01 -1.7456E+01  1.5733E+00  6.0451E-01  2.8836E-02  7.0508E-02  7.2580E-02  7.6591E-02
             6.1015E-02

0ITERATION NO.:   96    OBJECTIVE VALUE:  -1701.39248191563        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     3475
 NPARAMETR:  1.0599E+00  2.0873E-01  9.0447E-01  1.4863E+00  6.4365E-01  1.0842E+00  2.0654E+00  6.2356E-01  8.1946E-01  8.9482E-01
             9.8416E-01
 PARAMETER:  1.5815E-01 -1.4667E+00 -4.0348E-04  4.9628E-01 -3.4060E-01  1.8089E-01  8.2530E-01 -3.7231E-01 -9.9107E-02 -1.1135E-02
             8.4032E-02
 GRADIENT:   1.5471E-02 -9.3612E-03 -2.1034E-01 -3.1727E-01  1.7475E+00  2.4308E-03 -6.7978E-03  4.5070E-02  3.8549E-02  7.5356E-02
             6.1389E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     3475
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0765E-04 -2.1451E-03 -1.7922E-02 -3.5574E-03 -1.9553E-02
 SE:             2.9873E-02  6.9713E-03  1.3344E-02  2.8745E-02  2.4082E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9712E-01  7.5831E-01  1.7927E-01  9.0151E-01  4.1683E-01

 ETASHRINKSD(%)  1.0000E-10  7.6645E+01  5.5295E+01  3.7005E+00  1.9322E+01
 ETASHRINKVR(%)  1.0000E-10  9.4546E+01  8.0015E+01  7.2640E+00  3.4911E+01
 EBVSHRINKSD(%)  3.5076E-01  7.7195E+01  5.7565E+01  3.8513E+00  1.7435E+01
 EBVSHRINKVR(%)  7.0029E-01  9.4799E+01  8.1993E+01  7.5544E+00  3.1830E+01
 RELATIVEINF(%)  9.5287E+01  2.5323E-01  2.2540E+00  6.7925E+00  4.5185E+00
 EPSSHRINKSD(%)  4.5222E+01
 EPSSHRINKVR(%)  6.9994E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1701.3924819156323     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -966.24165535189411     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    47.04
 Elapsed covariance  time in seconds:     5.85
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1701.392       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  2.09E-01  9.04E-01  1.49E+00  6.44E-01  1.08E+00  2.07E+00  6.24E-01  8.19E-01  8.95E-01  9.84E-01
 


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
 
         3.68E-02  4.50E-01  1.68E-01  2.35E-01  1.32E-01  7.00E-02  2.55E+00  2.89E-01  1.16E-01  1.12E-01  6.99E-02
 


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
+        1.36E-03
 
 TH 2
+        5.93E-03  2.03E-01
 
 TH 3
+        7.72E-04  3.74E-03  2.82E-02
 
 TH 4
+       -2.96E-03 -1.04E-01  2.41E-03  5.50E-02
 
 TH 5
+        1.64E-03  4.46E-02  1.50E-02 -2.06E-02  1.74E-02
 
 TH 6
+        2.82E-04  5.06E-03 -5.66E-04 -2.83E-03  9.08E-04  4.90E-03
 
 TH 7
+       -3.41E-02 -1.13E+00 -2.31E-02  5.72E-01 -2.49E-01 -2.91E-02  6.49E+00
 
 TH 8
+       -5.66E-04 -2.01E-02  3.31E-02  1.52E-02  1.19E-02 -1.74E-03  1.23E-01  8.35E-02
 
 TH 9
+        1.20E-03  4.24E-02 -2.01E-03 -2.20E-02  8.13E-03  1.52E-03 -2.28E-01 -8.99E-03  1.33E-02
 
 TH10
+        6.62E-04 -1.27E-03  6.88E-03  1.29E-03  3.92E-03 -6.87E-04  2.72E-03 -1.02E-03 -6.96E-04  1.24E-02
 
 TH11
+        3.27E-04  4.86E-03 -1.67E-04 -2.70E-03  1.10E-03  2.26E-04 -2.74E-02 -5.23E-03  1.24E-03  1.14E-03  4.88E-03
 
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
+        3.68E-02
 
 TH 2
+        3.57E-01  4.50E-01
 
 TH 3
+        1.25E-01  4.95E-02  1.68E-01
 
 TH 4
+       -3.43E-01 -9.81E-01  6.13E-02  2.35E-01
 
 TH 5
+        3.39E-01  7.51E-01  6.77E-01 -6.65E-01  1.32E-01
 
 TH 6
+        1.09E-01  1.60E-01 -4.82E-02 -1.72E-01  9.84E-02  7.00E-02
 
 TH 7
+       -3.64E-01 -9.83E-01 -5.40E-02  9.57E-01 -7.41E-01 -1.63E-01  2.55E+00
 
 TH 8
+       -5.32E-02 -1.55E-01  6.81E-01  2.24E-01  3.11E-01 -8.61E-02  1.67E-01  2.89E-01
 
 TH 9
+        2.82E-01  8.15E-01 -1.04E-01 -8.12E-01  5.34E-01  1.88E-01 -7.73E-01 -2.69E-01  1.16E-01
 
 TH10
+        1.61E-01 -2.52E-02  3.67E-01  4.91E-02  2.67E-01 -8.80E-02  9.57E-03 -3.18E-02 -5.40E-02  1.12E-01
 
 TH11
+        1.27E-01  1.54E-01 -1.42E-02 -1.65E-01  1.20E-01  4.63E-02 -1.54E-01 -2.59E-01  1.54E-01  1.46E-01  6.99E-02
 
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
+        8.90E+02
 
 TH 2
+       -3.93E+00  6.78E+02
 
 TH 3
+       -5.73E+01  1.73E+02  7.16E+02
 
 TH 4
+        2.00E+01  5.58E+02 -1.04E+02  8.18E+02
 
 TH 5
+        7.58E+01 -5.72E+02 -1.22E+03 -1.06E+02  2.57E+03
 
 TH 6
+       -3.13E+01  5.50E+01  2.92E+01  4.15E+01 -8.65E+01  2.20E+02
 
 TH 7
+        4.27E+00  4.30E+01 -1.93E+00  1.87E+01  2.21E-01  2.64E+00  5.63E+00
 
 TH 8
+        3.35E+00  7.69E-01 -3.77E+01  1.20E+01 -1.89E+01  4.87E+00 -1.85E+00  3.37E+01
 
 TH 9
+       -1.10E+01 -1.30E+02  7.64E+01 -5.82E+01 -1.14E+02 -2.21E+01 -1.23E+01  1.26E+01  2.76E+02
 
 TH10
+       -4.30E+01  8.05E+01  2.46E+01  5.49E+01 -1.92E+02  2.48E+01  1.36E+00  2.74E+01  4.98E+00  1.36E+02
 
 TH11
+       -2.18E+01  2.37E+01 -2.59E+00  3.34E+01 -5.77E+01  5.21E-01 -6.16E-01  2.45E+01  4.19E-01  3.11E-01  2.37E+02
 
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
 #CPUT: Total CPU Time in Seconds,       52.947
Stop Time:
Wed Sep 29 16:00:34 CDT 2021
