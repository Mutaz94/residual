Sat Sep 18 11:37:59 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat33.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m33.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1614.01745933491        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.6281E+02 -1.5862E+01  2.4483E+00  2.2867E+00  2.8963E+00  1.5494E+01 -8.4249E+00 -3.0500E+00  2.7632E+01 -9.0123E+00
            -3.5672E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1622.56339733992        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.6527E-01  1.1432E+00  9.5994E-01  9.1188E-01  1.0848E+00  9.2499E-01  1.1851E+00  1.0259E+00  7.1905E-01  1.0668E+00
             1.1116E+00
 PARAMETER:  6.4653E-02  2.3379E-01  5.9119E-02  7.7553E-03  1.8142E-01  2.2022E-02  2.6984E-01  1.2555E-01 -2.2982E-01  1.6466E-01
             2.0581E-01
 GRADIENT:   8.1109E+01  3.2257E+00 -5.3479E+00  3.4263E+00  2.4218E+01 -8.4797E+00  2.1337E+00 -1.3650E+00 -7.9799E+00 -1.5421E+00
             8.1731E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1623.12689824948        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.5609E-01  1.0015E+00  1.0517E+00  1.0198E+00  1.0346E+00  9.3264E-01  1.3728E+00  1.0226E+00  6.9673E-01  1.0503E+00
             1.1146E+00
 PARAMETER:  5.5102E-02  1.0152E-01  1.5043E-01  1.1958E-01  1.3401E-01  3.0261E-02  4.1684E-01  1.2232E-01 -2.6136E-01  1.4905E-01
             2.0851E-01
 GRADIENT:   5.8597E+01  2.2604E+01  2.5287E-01  2.8636E+01  6.5108E+00 -4.0081E+00  9.1966E+00 -1.3768E+00 -4.8893E+00  4.8446E-01
             1.0819E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1624.13872842603        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  9.3414E-01  1.0362E+00  8.1261E-01  9.6715E-01  9.2933E-01  9.3963E-01  1.2337E+00  6.7406E-01  7.6099E-01  9.6472E-01
             1.0827E+00
 PARAMETER:  3.1873E-02  1.3555E-01 -1.0751E-01  6.6603E-02  2.6713E-02  3.7730E-02  3.1005E-01 -2.9443E-01 -1.7313E-01  6.4078E-02
             1.7945E-01
 GRADIENT:  -2.4548E+00 -5.9695E-01 -3.1250E+00  3.4333E+00  4.2558E+00 -1.7599E+00  7.2281E-02  4.5713E-01 -5.6775E-01  7.5114E-01
             1.8804E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1624.16677346189        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  9.3484E-01  1.0466E+00  7.6464E-01  9.5514E-01  9.0355E-01  9.4423E-01  1.2218E+00  5.8232E-01  7.7018E-01  9.3887E-01
             1.0779E+00
 PARAMETER:  3.2625E-02  1.4557E-01 -1.6835E-01  5.4099E-02 -1.4233E-03  4.2619E-02  3.0030E-01 -4.4074E-01 -1.6113E-01  3.6925E-02
             1.7497E-01
 GRADIENT:  -1.1089E+00 -1.2831E+00 -8.2452E-01 -1.0761E+00  2.7339E-02  1.9074E-02  4.8703E-02  4.5493E-01  2.5768E-01  3.3621E-01
             2.6780E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1624.16994759147        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  9.3556E-01  1.0542E+00  7.2375E-01  9.4673E-01  8.8238E-01  9.4583E-01  1.2152E+00  4.8141E-01  7.7324E-01  9.2102E-01
             1.0763E+00
 PARAMETER:  3.3387E-02  1.5274E-01 -2.2331E-01  4.5257E-02 -2.5138E-02  4.4306E-02  2.9488E-01 -6.3104E-01 -1.5717E-01  1.7728E-02
             1.7355E-01
 GRADIENT:  -1.2688E-01 -1.3520E+00 -1.0089E+00 -1.2741E+00 -1.6157E-01  5.2297E-01  1.6102E-01  4.0501E-01  4.6453E-01  3.7037E-01
            -1.1581E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1624.17451736599        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  9.3611E-01  1.0594E+00  6.9307E-01  9.4071E-01  8.6582E-01  9.4646E-01  1.2104E+00  3.7577E-01  7.7467E-01  9.0765E-01
             1.0757E+00
 PARAMETER:  3.3975E-02  1.5767E-01 -2.6663E-01  3.8878E-02 -4.4076E-02  4.4969E-02  2.9098E-01 -8.7877E-01 -1.5531E-01  3.1076E-03
             1.7299E-01
 GRADIENT:   5.5813E-01 -9.6382E-01 -7.6209E-01 -1.0033E+00 -2.2695E-01  6.5371E-01  1.6418E-01  2.4540E-01  4.2652E-01  2.4719E-01
            -3.2050E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1624.17540973995        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      534
 NPARAMETR:  9.3620E-01  1.0607E+00  6.8382E-01  9.3910E-01  8.6071E-01  9.4623E-01  1.2092E+00  3.3013E-01  7.7465E-01  9.0415E-01
             1.0760E+00
 PARAMETER:  3.4076E-02  1.5893E-01 -2.8007E-01  3.7165E-02 -5.0001E-02  4.4732E-02  2.8996E-01 -1.0083E+00 -1.5534E-01 -7.5769E-04
             1.7322E-01
 GRADIENT:  -3.2724E+01 -5.4848E+00 -1.1294E+00 -5.8870E+00 -9.7044E-01 -2.6863E+00 -1.0644E+00  1.5280E-01 -2.2431E-01  1.1150E-01
            -4.0377E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1624.46423159122        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      711
 NPARAMETR:  9.4858E-01  1.0880E+00  7.2462E-01  9.3150E-01  9.0018E-01  9.5175E-01  1.1953E+00  4.4340E-01  7.8439E-01  9.3875E-01
             1.0790E+00
 PARAMETER:  4.7211E-02  1.8433E-01 -2.2210E-01  2.9037E-02 -5.1560E-03  5.0547E-02  2.7837E-01 -7.1329E-01 -1.4285E-01  3.6799E-02
             1.7603E-01
 GRADIENT:   2.7411E-01  9.2704E-03  8.4840E-02  4.7822E-02 -1.9087E-01  1.3428E-01 -2.1819E-02  1.5504E-03 -5.5559E-02  2.6917E-02
            -6.2900E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1624.46663013784        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      887
 NPARAMETR:  9.4886E-01  1.1184E+00  6.9023E-01  9.1036E-01  8.9480E-01  9.5199E-01  1.1688E+00  3.4787E-01  7.9528E-01  9.3141E-01
             1.0791E+00
 PARAMETER:  4.7503E-02  2.1190E-01 -2.7073E-01  6.0861E-03 -1.1156E-02  5.0796E-02  2.5602E-01 -9.5592E-01 -1.2906E-01  2.8946E-02
             1.7612E-01
 GRADIENT:   9.2814E-02 -4.0137E-02 -2.4104E-01  1.4703E-01  2.3118E-02  6.1501E-02  2.8429E-02  2.1841E-02  4.2881E-02  1.1081E-01
             1.6725E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1624.46699142100        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.4892E-01  1.1265E+00  6.7964E-01  9.0449E-01  8.9248E-01  9.5195E-01  1.1620E+00  3.0032E-01  7.9820E-01  9.2884E-01
             1.0792E+00
 PARAMETER:  4.7570E-02  2.1911E-01 -2.8619E-01 -3.8072E-04 -1.3752E-02  5.0758E-02  2.5013E-01 -1.1029E+00 -1.2539E-01  2.6185E-02
             1.7625E-01
 GRADIENT:   4.2761E-03 -1.5884E-02 -2.4757E-02 -3.1191E-03  9.2199E-03 -4.4094E-03  4.1151E-03  1.6133E-03  5.5799E-03  1.0097E-02
             9.4470E-03

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1624.46699390774        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  9.4892E-01  1.1262E+00  6.7956E-01  9.0463E-01  8.9230E-01  9.5197E-01  1.1622E+00  2.9871E-01  7.9810E-01  9.2875E-01
             1.0792E+00
 PARAMETER:  4.7568E-02  2.1889E-01 -2.8631E-01 -2.2461E-04 -1.3957E-02  5.0775E-02  2.5031E-01 -1.1083E+00 -1.2552E-01  2.6086E-02
             1.7623E-01
 GRADIENT:  -2.6788E-03 -2.6229E-03 -7.2444E-04  4.8733E-04  2.7263E-03  1.7939E-03  3.3050E-05 -1.1226E-04 -1.5991E-04 -8.7980E-05
            -1.2144E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1154
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.4826E-05 -3.6132E-03 -1.1780E-02 -2.4899E-03 -1.7321E-02
 SE:             2.9801E-02  2.3581E-02  4.8781E-03  2.1807E-02  2.2539E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9800E-01  8.7822E-01  1.5742E-02  9.0910E-01  4.4220E-01

 ETASHRINKSD(%)  1.6130E-01  2.1001E+01  8.3658E+01  2.6943E+01  2.4491E+01
 ETASHRINKVR(%)  3.2234E-01  3.7592E+01  9.7329E+01  4.6627E+01  4.2984E+01
 EBVSHRINKSD(%)  5.2835E-01  2.0709E+01  8.5578E+01  2.7775E+01  2.3086E+01
 EBVSHRINKVR(%)  1.0539E+00  3.7129E+01  9.7920E+01  4.7836E+01  4.0842E+01
 RELATIVEINF(%)  9.8662E+01  3.7207E+00  1.9890E-01  2.9049E+00  6.2538E+00
 EPSSHRINKSD(%)  4.3219E+01
 EPSSHRINKVR(%)  6.7759E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1624.4669939077355     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -889.31616734399734     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.51
 Elapsed covariance  time in seconds:     5.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1624.467       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.49E-01  1.13E+00  6.80E-01  9.05E-01  8.92E-01  9.52E-01  1.16E+00  2.99E-01  7.98E-01  9.29E-01  1.08E+00
 


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
 
         2.77E-02  4.58E-01  3.53E-01  2.94E-01  2.12E-01  5.22E-02  3.40E-01  1.28E+00  2.15E-01  2.81E-01  7.44E-02
 


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
+        7.68E-04
 
 TH 2
+        2.02E-03  2.10E-01
 
 TH 3
+       -1.86E-03 -9.26E-02  1.25E-01
 
 TH 4
+       -1.34E-03 -1.33E-01  6.74E-02  8.67E-02
 
 TH 5
+       -7.97E-05  4.96E-02  2.99E-02 -2.68E-02  4.49E-02
 
 TH 6
+       -6.35E-05 -1.36E-03  4.36E-03  1.07E-03  2.22E-03  2.72E-03
 
 TH 7
+       -1.46E-03 -1.49E-01  5.98E-02  9.40E-02 -3.88E-02  1.12E-03  1.16E-01
 
 TH 8
+       -6.42E-03 -1.40E-01  3.98E-01  1.23E-01  1.71E-01  1.64E-02  7.62E-02  1.63E+00
 
 TH 9
+        7.53E-04  8.67E-02 -3.86E-02 -5.64E-02  2.09E-02 -1.40E-04 -6.19E-02 -7.88E-02  4.61E-02
 
 TH10
+       -1.60E-03 -8.73E-03  7.07E-02  1.21E-02  4.06E-02  3.55E-03 -7.19E-04  2.41E-01  5.01E-04  7.91E-02
 
 TH11
+        1.70E-04 -2.41E-03  2.14E-03  1.83E-03 -7.89E-05 -2.15E-04  8.41E-04  1.99E-03 -1.52E-03 -3.11E-04  5.54E-03
 
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
+        2.77E-02
 
 TH 2
+        1.59E-01  4.58E-01
 
 TH 3
+       -1.90E-01 -5.73E-01  3.53E-01
 
 TH 4
+       -1.64E-01 -9.89E-01  6.48E-01  2.94E-01
 
 TH 5
+       -1.36E-02  5.11E-01  4.00E-01 -4.29E-01  2.12E-01
 
 TH 6
+       -4.39E-02 -5.68E-02  2.37E-01  6.97E-02  2.00E-01  5.22E-02
 
 TH 7
+       -1.54E-01 -9.53E-01  4.97E-01  9.38E-01 -5.37E-01  6.28E-02  3.40E-01
 
 TH 8
+       -1.82E-01 -2.40E-01  8.83E-01  3.29E-01  6.33E-01  2.46E-01  1.75E-01  1.28E+00
 
 TH 9
+        1.26E-01  8.81E-01 -5.09E-01 -8.92E-01  4.58E-01 -1.24E-02 -8.47E-01 -2.88E-01  2.15E-01
 
 TH10
+       -2.05E-01 -6.78E-02  7.11E-01  1.46E-01  6.81E-01  2.42E-01 -7.51E-03  6.70E-01  8.29E-03  2.81E-01
 
 TH11
+        8.25E-02 -7.06E-02  8.13E-02  8.37E-02 -5.00E-03 -5.55E-02  3.32E-02  2.10E-02 -9.52E-02 -1.48E-02  7.44E-02
 
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
+        1.50E+03
 
 TH 2
+       -2.82E+01  4.73E+02
 
 TH 3
+       -3.97E+01  2.11E+02  8.98E+02
 
 TH 4
+       -9.42E+01  4.29E+02 -6.20E+02  1.47E+03
 
 TH 5
+       -1.32E+02 -3.07E+02 -8.81E+02  6.34E+02  1.26E+03
 
 TH 6
+       -2.03E+01  3.90E+01  4.88E+01  1.58E+01 -6.33E+01  4.09E+02
 
 TH 7
+        3.18E+01  5.89E+01 -1.36E+01 -1.63E+01 -7.81E+00 -2.00E+01  1.03E+02
 
 TH 8
+        2.24E+01 -1.28E+01 -5.97E+01  2.46E+01  1.94E+01 -5.76E+00  3.96E+00  9.44E+00
 
 TH 9
+        1.90E+01  9.16E+00 -1.25E+02  2.02E+02  7.01E+01 -1.92E+01  7.23E+00  1.67E+01  1.54E+02
 
 TH10
+        7.76E+01 -7.19E+00 -5.29E+01 -2.68E+01 -4.98E+01 -1.05E+01  1.57E+01  1.01E+01 -4.06E+00  6.02E+01
 
 TH11
+       -1.76E+01 -2.23E+01 -7.29E+01  5.74E-01  2.70E+01  7.76E+00  2.01E+01  9.84E+00  1.99E+01  1.89E+01  2.00E+02
 
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
 #CPUT: Total CPU Time in Seconds,       17.291
Stop Time:
Sat Sep 18 11:38:18 CDT 2021