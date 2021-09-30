Wed Sep 29 20:20:51 CDT 2021
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
$DATA ../../../../data/spa/D/dat80.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m80.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   21735.6120333266        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.2946E+02  4.3382E+02 -6.7311E+01  3.8062E+02  1.0667E+02 -2.0334E+03 -9.5405E+02 -2.6996E+01 -1.5166E+03 -4.2773E+02
            -4.1314E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -546.190094191278        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.3860E+00  1.1145E+00  8.8452E-01  1.5483E+00  1.4641E+00  1.7334E+00  9.9307E-01  9.4506E-01  7.9413E-01  9.3363E-01
             1.5330E+01
 PARAMETER:  4.2642E-01  2.0838E-01 -2.2707E-02  5.3719E-01  4.8127E-01  6.5007E-01  9.3049E-02  4.3498E-02 -1.3051E-01  3.1328E-02
             2.8298E+00
 GRADIENT:   2.8258E+01  1.7165E+01 -4.0483E+00  3.1158E+01 -2.4778E+00  5.2964E+01  7.7885E-01  4.0965E+00  3.6865E+00  8.6805E-01
             3.1103E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -561.516514885928        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.2663E+00  7.1308E-01  1.0851E+00  1.6368E+00  2.0001E+00  1.3332E+00  1.0034E+00  2.6115E-01  4.8919E-01  1.6387E+00
             1.5538E+01
 PARAMETER:  3.3607E-01 -2.3816E-01  1.8171E-01  5.9275E-01  7.9318E-01  3.8759E-01  1.0341E-01 -1.2427E+00 -6.1501E-01  5.9391E-01
             2.8433E+00
 GRADIENT:  -2.2732E+01  1.6580E+01  1.0578E+00  4.7947E+01 -3.1724E+00 -4.6571E-01  8.0811E-01  1.7664E-01  3.7289E+00  1.1253E-01
             5.4623E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -576.387902575540        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      237
 NPARAMETR:  1.1944E+00  4.4487E-01  9.0716E-01  1.5755E+00  4.9061E+00  1.3134E+00  9.3381E-01  2.9427E-02  2.5555E-01  7.8679E+00
             1.4382E+01
 PARAMETER:  2.7764E-01 -7.0997E-01  2.5620E-03  5.5456E-01  1.6905E+00  3.7264E-01  3.1516E-02 -3.4258E+00 -1.2643E+00  2.1628E+00
             2.7660E+00
 GRADIENT:   5.3396E+00  8.2032E+00  2.9435E+00  1.9304E+01  2.0048E-01  8.7343E+00  5.6155E-01  5.3804E-04  2.0033E+00 -1.9329E+00
             2.0345E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -583.425891422049        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      312
 NPARAMETR:  9.7288E-01  1.8556E-02  3.9264E-01  1.3409E+00  6.5467E+00  1.2027E+00  3.3197E-01  1.0000E-02  1.0000E-02  5.1389E+00
             1.2136E+01
 PARAMETER:  7.2510E-02 -3.8870E+00 -8.3486E-01  3.9330E-01  1.9790E+00  2.8460E-01 -1.0027E+00 -1.3724E+01 -5.3459E+00  1.7368E+00
             2.5962E+00
 GRADIENT:  -4.0162E-01  9.9262E-01 -1.0808E+01  8.1311E+01 -8.8180E+00 -3.7578E+01  1.3348E-04  0.0000E+00  0.0000E+00  1.9644E+01
            -1.0788E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -594.616798623879        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      384
 NPARAMETR:  8.0566E-01  1.0000E-02  1.1264E-01  8.4860E-01  5.4083E+00  1.2330E+00  2.2837E-02  1.0000E-02  1.0000E-02  1.8251E+00
             1.1031E+01
 PARAMETER: -1.1609E-01 -6.9822E+00 -2.0836E+00 -6.4172E-02  1.7879E+00  3.0943E-01 -3.6794E+00 -2.5692E+01 -1.0458E+01  7.0164E-01
             2.5007E+00
 GRADIENT:   8.9870E+01  0.0000E+00 -7.0233E+01  1.4936E+02 -2.7931E+00 -6.4543E+01  2.2927E-06  0.0000E+00  0.0000E+00  1.5640E+01
            -2.1294E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -614.769640425422        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      455
 NPARAMETR:  5.1038E-01  1.0000E-02  2.4815E-02  3.3439E-01  4.8311E+00  1.3573E+00  1.0000E-02  1.0000E-02  1.0000E-02  3.7521E-01
             1.1113E+01
 PARAMETER: -5.7261E-01 -1.2003E+01 -3.5963E+00 -9.9545E-01  1.6751E+00  4.0548E-01 -1.1099E+01 -4.2871E+01 -1.9599E+01 -8.8027E-01
             2.5081E+00
 GRADIENT:   1.2685E+02  0.0000E+00 -9.0296E+01  1.3336E+02 -2.8272E+01 -2.2556E+01  0.0000E+00  0.0000E+00  0.0000E+00  5.5243E+00
            -1.5312E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -640.461832902291        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:      620
 NPARAMETR:  4.5253E-01  1.0000E-02  2.0897E-02  2.6241E-01  5.6905E+00  1.3367E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.5116E-01
             1.2616E+01
 PARAMETER: -6.9291E-01 -1.3370E+01 -3.7682E+00 -1.2379E+00  1.8388E+00  3.9018E-01 -1.4833E+01 -4.6178E+01 -2.2536E+01 -1.2817E+00
             2.6349E+00
 GRADIENT:   2.4877E+01  0.0000E+00  2.7716E+00 -2.0631E+01 -1.5208E+01 -6.3277E+00  0.0000E+00  0.0000E+00  0.0000E+00  7.4828E-01
            -3.2353E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -641.976330451350        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      808
 NPARAMETR:  4.4177E-01  1.0000E-02  2.0813E-02  2.6001E-01  6.5604E+00  1.3637E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0131E-01
             1.3086E+01
 PARAMETER: -7.1696E-01 -1.3328E+01 -3.7722E+00 -1.2470E+00  1.9810E+00  4.1019E-01 -1.5276E+01 -4.5977E+01 -2.2651E+01 -2.1896E+00
             2.6715E+00
 GRADIENT:  -1.1763E+00  0.0000E+00 -2.2511E+00  1.8410E+00  1.8473E+00  2.8841E+00  0.0000E+00  0.0000E+00  0.0000E+00  2.5775E-02
            -8.2064E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -642.062787014564        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      984
 NPARAMETR:  4.4332E-01  1.0000E-02  2.0780E-02  2.6099E-01  6.2214E+00  1.3520E+00  1.0000E-02  1.0000E-02  1.0000E-02  4.3693E-02
             1.3096E+01
 PARAMETER: -7.1345E-01 -1.3328E+01 -3.7737E+00 -1.2433E+00  1.9280E+00  4.0155E-01 -1.5276E+01 -4.5977E+01 -2.2651E+01 -3.0306E+00
             2.6723E+00
 GRADIENT:  -4.4590E-01  0.0000E+00 -1.2786E+00 -4.2374E-02 -8.5287E-02 -2.4086E-01  0.0000E+00  0.0000E+00  0.0000E+00  9.2344E-03
            -3.4086E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -642.065973201566        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1161
 NPARAMETR:  4.4353E-01  1.0000E-02  2.0823E-02  2.6133E-01  6.2235E+00  1.3520E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.3093E+01
 PARAMETER: -7.1299E-01 -1.3328E+01 -3.7717E+00 -1.2420E+00  1.9283E+00  4.0160E-01 -1.5276E+01 -4.5977E+01 -2.2651E+01 -5.2612E+00
             2.6721E+00
 GRADIENT:  -6.3100E-01  0.0000E+00 -9.2913E-01 -3.5360E-01 -4.5426E-02 -2.3610E-01  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -4.6235E-01

0ITERATION NO.:   51    OBJECTIVE VALUE:  -642.065973201566        NO. OF FUNC. EVALS.:  38
 CUMULATIVE NO. OF FUNC. EVALS.:     1199
 NPARAMETR:  4.4571E-01  1.0000E-02  2.0739E-02  2.6134E-01  6.2265E+00  1.3575E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.3114E+01
 PARAMETER: -7.1299E-01 -1.3328E+01 -3.7717E+00 -1.2420E+00  1.9283E+00  4.0160E-01 -1.5276E+01 -4.5977E+01 -2.2651E+01 -5.2612E+00
             2.6721E+00
 GRADIENT:  -1.0903E+00  0.0000E+00  9.5018E-01 -1.1725E-02 -8.7987E-03 -2.5427E-01  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -2.5311E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1199
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7449E-03  6.1698E-06  8.3945E-05 -1.8149E-04  5.8816E-06
 SE:             2.8348E-02  7.0754E-06  2.3635E-04  2.8654E-04  5.0610E-05
 N:                     100         100         100         100         100

 P VAL.:         9.2286E-01  3.8321E-01  7.2246E-01  5.2647E-01  9.0748E-01

 ETASHRINKSD(%)  5.0292E+00  9.9976E+01  9.9208E+01  9.9040E+01  9.9830E+01
 ETASHRINKVR(%)  9.8054E+00  1.0000E+02  9.9994E+01  9.9991E+01  1.0000E+02
 EBVSHRINKSD(%)  5.3737E+00  9.9966E+01  9.9114E+01  9.8900E+01  9.9773E+01
 EBVSHRINKVR(%)  1.0459E+01  1.0000E+02  9.9992E+01  9.9988E+01  9.9999E+01
 RELATIVEINF(%)  2.2372E+00  1.0460E-06  2.2173E-05  3.3441E-05  7.1242E-05
 EPSSHRINKSD(%)  5.6640E+00
 EPSSHRINKVR(%)  1.1007E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -642.06597320156573     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       93.084853362172453     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.54
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.60
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -642.066       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.44E-01  1.00E-02  2.08E-02  2.61E-01  6.22E+00  1.35E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.31E+01
 


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
+        1.70E+02
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.36E+04  0.00E+00  1.09E+06
 
 TH 4
+        1.27E+03  0.00E+00 -1.01E+05  9.45E+03
 
 TH 5
+        7.54E+00  0.00E+00 -6.02E+02  5.62E+01  3.34E-01
 
 TH 6
+       -8.25E+00  0.00E+00  6.59E+02 -6.15E+01 -3.65E-01  4.00E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.64E+00  0.00E+00  2.91E+02 -2.72E+01 -1.61E-01  1.77E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  7.81E-02
 
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
+        2.71E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.64E+04  0.00E+00  1.30E+06
 
 TH 4
+       -5.85E+02  0.00E+00 -1.21E+05  1.32E+04
 
 TH 5
+        1.07E+01  0.00E+00 -7.20E+02  7.06E+01  1.15E+00
 
 TH 6
+       -6.59E+00  0.00E+00  7.86E+02 -9.74E+01  2.44E-01  8.31E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.73E+01  0.00E+00  3.50E+02 -1.52E+01 -2.48E-01  9.12E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  2.23E+00
 
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
+        2.77E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -2.10E+04  0.00E+00  1.55E+06
 
 TH 4
+       -3.63E+02  0.00E+00 -1.39E+05  1.45E+04
 
 TH 5
+        1.07E+01  0.00E+00 -1.01E+03  9.30E+01  7.94E-01
 
 TH 6
+        2.86E+02  0.00E+00 -2.48E+03 -2.24E+01  2.67E+00  1.16E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.56E+01  0.00E+00  8.72E+02 -6.94E+01 -7.41E-01 -4.50E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  1.45E+01
 
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
 #CPUT: Total CPU Time in Seconds,       22.218
Stop Time:
Wed Sep 29 20:21:14 CDT 2021
