Wed Sep 29 17:48:03 CDT 2021
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
$DATA ../../../../data/spa/S2/dat94.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1658.28461845980        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3113E+02 -2.7113E+01 -2.9576E+01 -1.4283E+01  5.3089E+01  3.4902E+01 -4.7225E+00  8.6887E+00 -3.4506E+01  2.6613E+01
             1.2207E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1667.98022513223        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.9528E-01  9.8706E-01  1.0605E+00  1.0595E+00  9.7698E-01  1.0513E+00  1.0226E+00  9.6143E-01  1.2058E+00  8.5141E-01
             9.5675E-01
 PARAMETER:  9.5269E-02  8.6978E-02  1.5875E-01  1.5781E-01  7.6706E-02  1.5001E-01  1.2232E-01  6.0668E-02  2.8717E-01 -6.0858E-02
             5.5782E-02
 GRADIENT:  -3.4141E-01 -4.2009E+00  1.9566E-01 -3.9628E+00  1.7419E+01  7.6815E+00  5.1270E+00  6.9351E-01  9.7398E+00  6.4742E+00
            -7.6791E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1669.94663720244        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.9582E-01  8.5977E-01  8.7492E-01  1.1441E+00  8.0846E-01  1.0023E+00  1.1715E+00  8.6424E-01  1.0967E+00  6.0105E-01
             1.0023E+00
 PARAMETER:  9.5813E-02 -5.1085E-02 -3.3619E-02  2.3460E-01 -1.1262E-01  1.0234E-01  2.5832E-01 -4.5909E-02  1.9229E-01 -4.0908E-01
             1.0228E-01
 GRADIENT:  -2.4146E+00  1.4601E+01  5.7312E+00  1.6435E+01 -1.9022E+01 -1.1615E+01  6.0534E-01  3.1327E+00  7.8379E+00 -7.8415E-01
             1.0848E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1671.03157692775        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      524
 NPARAMETR:  9.9766E-01  8.1411E-01  8.5538E-01  1.1620E+00  7.9093E-01  1.0365E+00  1.2887E+00  6.8262E-01  1.0296E+00  6.4012E-01
             9.7235E-01
 PARAMETER:  9.7655E-02 -1.0565E-01 -5.6211E-02  2.5016E-01 -1.3455E-01  1.3582E-01  3.5362E-01 -2.8181E-01  1.2913E-01 -3.4611E-01
             7.1957E-02
 GRADIENT:   2.3403E+00  8.5598E+00  5.0752E+00  7.7584E+00 -6.6773E+00  1.7416E+00  8.0480E-01 -4.3424E-01 -5.0024E-01 -8.6471E-01
            -1.2130E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1671.18910393781        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  9.9365E-01  6.3505E-01  9.1748E-01  1.2734E+00  7.5751E-01  1.0265E+00  1.4268E+00  7.1698E-01  9.7470E-01  6.5916E-01
             9.7604E-01
 PARAMETER:  9.3633E-02 -3.5405E-01  1.3878E-02  3.4168E-01 -1.7771E-01  1.2612E-01  4.5546E-01 -2.3270E-01  7.4380E-02 -3.1680E-01
             7.5751E-02
 GRADIENT:  -1.8035E+00  6.9591E+00  9.1320E+00  4.3825E+00 -1.6014E+01 -1.3986E+00 -1.4724E-01 -1.3285E+00 -9.4706E-01 -4.6626E-01
             4.9452E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1671.35126380555        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  9.9004E-01  4.8643E-01  9.8991E-01  1.3684E+00  7.4439E-01  1.0205E+00  1.6349E+00  8.3400E-01  9.3825E-01  6.6241E-01
             9.7858E-01
 PARAMETER:  8.9993E-02 -6.2065E-01  8.9854E-02  4.1367E-01 -1.9519E-01  1.2029E-01  5.9157E-01 -8.1526E-02  3.6260E-02 -3.1187E-01
             7.8343E-02
 GRADIENT:  -4.0332E+00  7.7309E+00  1.1121E+01  3.1792E+00 -2.3227E+01 -2.8560E+00  1.8550E+00  9.1499E-01  4.0053E-03  1.2276E+00
             2.4071E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1671.54321041254        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1053
 NPARAMETR:  9.8781E-01  3.3951E-01  1.0314E+00  1.4606E+00  7.2684E-01  1.0209E+00  2.0240E+00  8.6975E-01  8.9819E-01  6.7287E-01
             9.7699E-01
 PARAMETER:  8.7733E-02 -9.8024E-01  1.3092E-01  4.7888E-01 -2.1905E-01  1.2069E-01  8.0509E-01 -3.9550E-02 -7.3682E-03 -2.9621E-01
             7.6716E-02
 GRADIENT:  -2.8049E+00  6.2870E+00  9.0262E+00  6.6418E+00 -1.8671E+01 -1.9519E+00  2.4935E+00  9.1844E-01  2.3413E-01  1.4651E+00
             1.8625E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1671.74683104193        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1228
 NPARAMETR:  9.8612E-01  2.1286E-01  1.0713E+00  1.5396E+00  7.1730E-01  1.0234E+00  2.5362E+00  9.0913E-01  8.6703E-01  6.8122E-01
             9.7430E-01
 PARAMETER:  8.6025E-02 -1.4471E+00  1.6885E-01  5.3151E-01 -2.3226E-01  1.2313E-01  1.0307E+00  4.7347E-03 -4.2676E-02 -2.8388E-01
             7.3962E-02
 GRADIENT:  -6.0259E-01  3.8986E+00  4.9720E+00  8.9657E+00 -9.9869E+00 -3.6591E-01  1.6521E+00  3.7199E-01  3.7135E-02  1.0954E+00
             5.3221E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1672.03859997268        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1410
 NPARAMETR:  9.8540E-01  1.5298E-01  1.0875E+00  1.5639E+00  7.1333E-01  1.0240E+00  2.5118E+00  9.2915E-01  8.5638E-01  6.8042E-01
             9.7350E-01
 PARAMETER:  8.5290E-02 -1.7774E+00  1.8386E-01  5.4719E-01 -2.3781E-01  1.2376E-01  1.0210E+00  2.6520E-02 -5.5039E-02 -2.8504E-01
             7.3148E-02
 GRADIENT:   7.4947E-01  8.0953E-01  1.3785E+00 -1.2038E+01 -7.9295E-01  2.0232E-01  3.2130E-01 -1.6820E-01 -1.2639E-01  9.1243E-02
            -7.0346E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1672.07486392547        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1594             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8560E-01  1.4392E-01  1.0891E+00  1.5658E+00  7.1201E-01  1.0240E+00  1.9528E+00  9.3482E-01  8.5997E-01  6.8352E-01
             9.7358E-01
 PARAMETER:  8.5496E-02 -1.8385E+00  1.8537E-01  5.4841E-01 -2.3966E-01  1.2367E-01  7.6928E-01  3.2594E-02 -5.0856E-02 -2.8051E-01
             7.3230E-02
 GRADIENT:   4.2700E+02  1.9191E+01  8.0629E+00  9.3928E+02  2.2130E+01  5.6342E+01  1.8319E+00  3.5088E-01  1.4359E+01  1.4094E+00
             9.2773E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1672.07632939970        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1767
 NPARAMETR:  9.8555E-01  1.4310E-01  1.0884E+00  1.5667E+00  7.1216E-01  1.0239E+00  1.8942E+00  9.3458E-01  8.5944E-01  6.8279E-01
             9.7345E-01
 PARAMETER:  8.5440E-02 -1.8442E+00  1.8469E-01  5.4894E-01 -2.3945E-01  1.2363E-01  7.3879E-01  3.2345E-02 -5.1474E-02 -2.8157E-01
             7.3092E-02
 GRADIENT:  -1.7147E-02  5.2584E-03  5.0669E-02 -2.2671E-01  6.5586E-01 -4.0395E-03 -6.2678E-04 -5.0133E-03  2.7777E-02 -2.0504E-02
             1.4805E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1767
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2516E-04 -3.6388E-03 -2.0101E-02 -2.9054E-03 -2.5422E-02
 SE:             2.9847E-02  4.3944E-03  1.8780E-02  2.9207E-02  1.9872E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9398E-01  4.0764E-01  2.8447E-01  9.2076E-01  2.0079E-01

 ETASHRINKSD(%)  7.1182E-03  8.5278E+01  3.7084E+01  2.1543E+00  3.3428E+01
 ETASHRINKVR(%)  1.4236E-02  9.7833E+01  6.0415E+01  4.2622E+00  5.5682E+01
 EBVSHRINKSD(%)  3.9525E-01  8.5590E+01  3.8526E+01  2.4871E+00  3.2442E+01
 EBVSHRINKVR(%)  7.8893E-01  9.7924E+01  6.2210E+01  4.9123E+00  5.4360E+01
 RELATIVEINF(%)  9.4817E+01  7.8235E-02  5.0307E+00  5.9358E+00  2.4719E+00
 EPSSHRINKSD(%)  4.4935E+01
 EPSSHRINKVR(%)  6.9678E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1672.0763293996959     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -936.92550283595767     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.70
 Elapsed covariance  time in seconds:     5.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1672.076       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.86E-01  1.43E-01  1.09E+00  1.57E+00  7.12E-01  1.02E+00  1.89E+00  9.35E-01  8.59E-01  6.83E-01  9.73E-01
 


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
 
         3.04E-02  3.99E-01  1.89E-01  2.28E-01  1.14E-01  7.22E-02  3.77E+00  2.23E-01  1.28E-01  1.20E-01  6.91E-02
 


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
+        9.23E-04
 
 TH 2
+        1.76E-03  1.59E-01
 
 TH 3
+        4.35E-04 -9.60E-03  3.58E-02
 
 TH 4
+       -9.82E-04 -8.91E-02  9.74E-03  5.21E-02
 
 TH 5
+        5.37E-04  3.23E-02  1.24E-02 -1.63E-02  1.30E-02
 
 TH 6
+       -4.38E-05  6.70E-04  1.55E-04  9.97E-05  2.08E-05  5.21E-03
 
 TH 7
+       -2.00E-02 -1.21E+00  6.70E-02  6.76E-01 -2.51E-01  1.21E-02  1.42E+01
 
 TH 8
+       -4.48E-04 -2.59E-02  3.08E-02  1.82E-02  5.76E-03  4.90E-04  2.71E-01  4.99E-02
 
 TH 9
+        3.56E-04  4.30E-02 -4.74E-03 -2.41E-02  7.90E-03  1.40E-04 -3.73E-01 -9.90E-03  1.65E-02
 
 TH10
+        4.59E-04  1.36E-02  3.45E-03 -7.18E-03  5.82E-03 -4.09E-04 -1.74E-01 -8.41E-03  3.82E-03  1.44E-02
 
 TH11
+        1.05E-04 -2.41E-03  1.49E-03  1.13E-03  9.40E-05  3.90E-04  2.53E-02  7.07E-05 -5.80E-04 -5.61E-04  4.77E-03
 
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
+        3.04E-02
 
 TH 2
+        1.45E-01  3.99E-01
 
 TH 3
+        7.58E-02 -1.27E-01  1.89E-01
 
 TH 4
+       -1.42E-01 -9.78E-01  2.26E-01  2.28E-01
 
 TH 5
+        1.55E-01  7.10E-01  5.76E-01 -6.25E-01  1.14E-01
 
 TH 6
+       -2.00E-02  2.33E-02  1.14E-02  6.05E-03  2.52E-03  7.22E-02
 
 TH 7
+       -1.75E-01 -8.09E-01  9.40E-02  7.87E-01 -5.84E-01  4.44E-02  3.77E+00
 
 TH 8
+       -6.59E-02 -2.90E-01  7.28E-01  3.57E-01  2.26E-01  3.04E-02  3.22E-01  2.23E-01
 
 TH 9
+        9.13E-02  8.40E-01 -1.95E-01 -8.22E-01  5.39E-01  1.51E-02 -7.71E-01 -3.45E-01  1.28E-01
 
 TH10
+        1.26E-01  2.85E-01  1.52E-01 -2.62E-01  4.26E-01 -4.73E-02 -3.86E-01 -3.14E-01  2.48E-01  1.20E-01
 
 TH11
+        5.00E-02 -8.74E-02  1.14E-01  7.18E-02  1.19E-02  7.82E-02  9.74E-02  4.58E-03 -6.54E-02 -6.78E-02  6.91E-02
 
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
+        1.17E+03
 
 TH 2
+       -3.33E+01  3.93E+02
 
 TH 3
+       -1.09E+02  1.88E+02  4.72E+02
 
 TH 4
+        2.58E+01  3.92E+02 -4.38E+01  6.39E+02
 
 TH 5
+        1.62E+02 -6.19E+02 -9.37E+02 -1.17E+02  2.43E+03
 
 TH 6
+        9.99E+00 -6.31E+01 -2.74E+01 -6.42E+01  9.34E+01  2.05E+02
 
 TH 7
+        1.34E+00  2.17E+00  1.52E+00  4.93E-01 -3.21E+00 -7.97E-01  2.52E-01
 
 TH 8
+        3.13E+01  4.53E+00 -6.78E+01  5.74E+00 -1.37E+01 -2.80E+00 -3.10E-01  7.75E+01
 
 TH 9
+        4.07E+01 -6.40E+01  1.43E+01 -3.56E+01 -1.18E+01 -1.87E+00  2.22E+00  9.82E+00  2.38E+02
 
 TH10
+       -9.43E+00  7.69E+01  4.29E+01  2.41E+01 -2.82E+02 -9.76E+00  1.34E+00  5.95E+01  1.19E+01  1.62E+02
 
 TH11
+       -2.23E+01  5.39E+01 -1.94E+01  6.28E+01 -6.81E+01 -2.40E+01 -3.10E-01  3.06E+01 -1.05E+01  3.88E+01  2.36E+02
 
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
 #CPUT: Total CPU Time in Seconds,       28.247
Stop Time:
Wed Sep 29 17:48:33 CDT 2021
