Wed Sep 29 12:11:39 CDT 2021
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
$DATA ../../../../data/spa/A1/dat53.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1488.53814537336        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4355E+02 -3.8882E+01 -6.7114E-01 -1.5522E+01  4.5641E+01  3.1421E+01  1.2350E+01 -3.2549E+00  4.1474E+01  8.4903E+00
            -3.2918E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1554.06666285982        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0073E+00  1.0883E+00  9.9867E-01  9.9924E-01  1.0339E+00  1.1627E+00  8.2554E-01  9.7175E-01  6.3526E-01  7.7850E-01
             2.0205E+00
 PARAMETER:  1.0725E-01  1.8458E-01  9.8669E-02  9.9240E-02  1.3332E-01  2.5075E-01 -9.1712E-02  7.1344E-02 -3.5372E-01 -1.5039E-01
             8.0336E-01
 GRADIENT:   1.4202E+02 -3.8979E+01 -1.6980E+01 -3.2895E+01  3.6948E+01  7.2822E+01 -8.0256E+00  1.3668E+00 -7.5332E+00  6.3172E+00
             8.1960E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1559.41363694920        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0079E+00  9.8061E-01  4.4520E-01  1.0177E+00  5.8369E-01  1.0511E+00  1.0882E+00  1.0213E+00  4.9537E-01  2.5886E-01
             1.8369E+00
 PARAMETER:  1.0791E-01  8.0418E-02 -7.0924E-01  1.1759E-01 -4.3838E-01  1.4985E-01  1.8456E-01  1.2112E-01 -6.0244E-01 -1.2515E+00
             7.0805E-01
 GRADIENT:   1.5449E+02  6.6603E+01  4.6908E+01  4.5437E+01 -7.1847E+01  1.9959E+01  4.2243E+00  1.6672E+01 -9.6337E+00  3.9240E+00
             6.4784E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1568.93973810038        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      315
 NPARAMETR:  9.9006E-01  9.1849E-01  4.5369E-01  1.0428E+00  5.8947E-01  1.0583E+00  1.0533E+00  7.5594E-01  5.8933E-01  2.7937E-01
             1.7477E+00
 PARAMETER:  9.0013E-02  1.4975E-02 -6.9034E-01  1.4194E-01 -4.2854E-01  1.5662E-01  1.5193E-01 -1.7979E-01 -4.2877E-01 -1.1752E+00
             6.5830E-01
 GRADIENT:   5.1373E+00  2.0359E+00 -8.5208E-01  2.0550E+01 -4.8646E+00 -8.9896E-01 -4.4986E+00  6.8461E+00 -4.9790E+00  2.3677E+00
             4.2192E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1575.46114430186        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      492
 NPARAMETR:  9.8529E-01  9.4409E-01  2.8186E-01  9.4501E-01  4.8883E-01  1.0606E+00  1.0047E+00  3.0278E-01  6.6124E-01  1.7673E-01
             1.5473E+00
 PARAMETER:  8.5183E-02  4.2467E-02 -1.1664E+00  4.3442E-02 -6.1574E-01  1.5882E-01  1.0472E-01 -1.0948E+00 -3.1364E-01 -1.6332E+00
             5.3651E-01
 GRADIENT:   1.0233E+01 -8.3299E+00 -5.7168E+00  7.1869E+00  1.0055E+01 -1.6310E+00  1.9268E+00  1.0407E-01  4.1881E-01  8.0149E-01
             4.8963E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1576.39241301251        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      667
 NPARAMETR:  9.7674E-01  1.1667E+00  2.4202E-01  8.1764E-01  5.5201E-01  1.0609E+00  8.5914E-01  2.7861E-01  7.2648E-01  6.9053E-02
             1.5649E+00
 PARAMETER:  7.6464E-02  2.5415E-01 -1.3187E+00 -1.0133E-01 -4.9418E-01  1.5908E-01 -5.1825E-02 -1.1779E+00 -2.1955E-01 -2.5729E+00
             5.4783E-01
 GRADIENT:   1.6800E+00  6.4827E+00  2.2248E-01  6.7907E+00 -1.9074E+00  4.2087E-01  2.0344E-02 -2.3848E-01 -7.0011E-01  7.9274E-02
            -6.2370E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1576.45758638814        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      842
 NPARAMETR:  9.7345E-01  1.2645E+00  2.2153E-01  7.5614E-01  5.8365E-01  1.0573E+00  8.0988E-01  2.3696E-01  7.6976E-01  3.1146E-02
             1.5747E+00
 PARAMETER:  7.3096E-02  3.3465E-01 -1.4072E+00 -1.7953E-01 -4.3846E-01  1.5571E-01 -1.1087E-01 -1.3399E+00 -1.6168E-01 -3.3691E+00
             5.5407E-01
 GRADIENT:  -1.0087E+00  1.8707E+00  6.2829E-01  9.8437E-01 -1.1652E+00  7.6284E-02 -3.3874E-01 -2.1329E-01 -4.2247E-02  1.2741E-02
             2.1633E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1576.51057101482        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1020
 NPARAMETR:  9.7163E-01  1.4825E+00  1.8010E-01  6.3171E-01  6.6300E-01  1.0508E+00  7.2910E-01  2.6097E-01  8.6934E-01  1.0000E-02
             1.5909E+00
 PARAMETER:  7.1219E-02  4.9371E-01 -1.6142E+00 -3.5932E-01 -3.1098E-01  1.4954E-01 -2.1594E-01 -1.2433E+00 -4.0022E-02 -6.2570E+00
             5.6427E-01
 GRADIENT:   8.6341E-01  7.9402E+00 -2.5454E+00  1.1134E+01  3.8641E+00 -6.6358E-01 -7.8183E-01 -3.1841E-01 -1.3159E+00  0.0000E+00
            -8.6899E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1577.72766786593        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1200
 NPARAMETR:  9.6546E-01  1.8804E+00  1.0976E-01  4.3146E-01  8.2438E-01  1.0479E+00  6.3212E-01  1.2802E+00  1.1132E+00  1.0000E-02
             1.6178E+00
 PARAMETER:  6.4854E-02  7.3151E-01 -2.1095E+00 -7.4057E-01 -9.3127E-02  1.4678E-01 -3.5867E-01  3.4701E-01  2.0723E-01 -1.5707E+01
             5.8109E-01
 GRADIENT:  -9.7349E+00  1.0680E+02 -1.3508E+01  4.6892E+01 -3.0848E+01 -2.6995E-01 -5.4633E+00 -4.2276E+00  1.8174E+00  0.0000E+00
             1.2694E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1579.10100213448        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1383
 NPARAMETR:  9.6499E-01  1.8856E+00  1.0850E-01  4.1727E-01  8.3262E-01  1.0564E+00  6.3099E-01  1.4392E+00  1.1668E+00  1.0000E-02
             1.6186E+00
 PARAMETER:  6.4367E-02  7.3425E-01 -2.1210E+00 -7.7402E-01 -8.3176E-02  1.5491E-01 -3.6047E-01  4.6410E-01  2.5429E-01 -1.6645E+01
             5.8157E-01
 GRADIENT:  -9.9619E+00  7.7599E+01 -1.0675E+01  2.9364E+01 -4.2472E+01  3.2546E+00 -3.5203E+00 -2.0036E+00  7.0655E+00  0.0000E+00
             1.8656E+01

0ITERATION NO.:   49    OBJECTIVE VALUE:  -1579.15399362197        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1512
 NPARAMETR:  9.6505E-01  1.8859E+00  1.0828E-01  4.1734E-01  8.3365E-01  1.0519E+00  6.3161E-01  1.4386E+00  1.1669E+00  1.0000E-02
             1.6195E+00
 PARAMETER:  6.4349E-02  7.3427E-01 -2.1214E+00 -7.7399E-01 -8.1865E-02  1.5212E-01 -3.5977E-01  4.6401E-01  2.5430E-01 -1.6645E+01
             5.8167E-01
 GRADIENT:  -1.5538E+04 -1.5160E+03  1.4694E+03 -1.4929E+03  3.1015E+04  1.8230E+00 -4.3180E+03  1.0787E+04 -4.5835E+03  0.0000E+00
            -8.6629E+03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1512
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.3707E-03 -3.3891E-02  4.9194E-03 -2.7555E-03 -2.9471E-04
 SE:             2.9537E-02  2.7076E-02  1.2014E-02  2.1147E-02  3.5168E-04
 N:                     100         100         100         100         100

 P VAL.:         8.5572E-01  2.1069E-01  6.8220E-01  8.9633E-01  4.0203E-01

 ETASHRINKSD(%)  1.0457E+00  9.2905E+00  5.9751E+01  2.9154E+01  9.8822E+01
 ETASHRINKVR(%)  2.0804E+00  1.7718E+01  8.3801E+01  4.9809E+01  9.9986E+01
 EBVSHRINKSD(%)  8.6237E-01  1.0311E+01  6.0237E+01  2.6637E+01  9.8887E+01
 EBVSHRINKVR(%)  1.7173E+00  1.9560E+01  8.4189E+01  4.6179E+01  9.9988E+01
 RELATIVEINF(%)  9.7161E+01  8.7955E+00  5.0043E+00  5.3630E+00  1.2915E-03
 EPSSHRINKSD(%)  3.9443E+01
 EPSSHRINKVR(%)  6.3328E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1579.1539936219719     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -844.00316705823377     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.57
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1579.154       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.65E-01  1.89E+00  1.08E-01  4.17E-01  8.34E-01  1.05E+00  6.31E-01  1.44E+00  1.17E+00  1.00E-02  1.62E+00
 


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
+        2.84E+05
 
 TH 2
+        3.65E+02  4.70E-01
 
 TH 3
+       -4.51E+03 -5.81E+00  7.18E+01
 
 TH 4
+        4.06E+03  5.23E+00 -6.46E+01  5.81E+01
 
 TH 5
+       -2.62E+05 -3.37E+02  4.16E+03 -3.75E+03  2.42E+05
 
 TH 6
+       -1.82E+01 -2.34E-02  2.89E-01 -2.60E-01  1.68E+01  1.16E-03
 
 TH 7
+        4.45E+03  5.72E+00 -7.08E+01  6.37E+01 -4.11E+03 -2.85E-01  6.98E+01
 
 TH 8
+        8.78E+03  1.13E+01 -1.40E+02  1.26E+02 -8.10E+03 -5.62E-01  1.38E+02  2.71E+02
 
 TH 9
+        4.28E+04  5.50E+01 -6.80E+02  6.12E+02 -3.94E+04 -2.74E+00  6.70E+02  1.32E+03  6.44E+03
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.70E+02 -3.48E-01  4.30E+00 -3.87E+00  2.49E+02  1.73E-02 -4.24E+00 -8.36E+00 -4.07E+01  0.00E+00  2.58E-01
 
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
+        1.35E+07
 
 TH 2
+       -3.52E+01  6.65E+04
 
 TH 3
+        5.77E+01  5.33E+03  1.51E+06
 
 TH 4
+       -9.37E+01  1.09E+05 -3.46E+03  1.21E+06
 
 TH 5
+       -9.65E+06 -2.31E+02 -2.63E+03  3.09E+03  1.12E+07
 
 TH 6
+       -5.64E+02 -2.14E+01  2.42E+02 -8.58E+01  6.57E+02  1.72E+02
 
 TH 7
+       -1.73E+03 -1.76E+02  5.90E+02 -5.80E+02  2.10E+03 -2.45E+02  1.50E+06
 
 TH 8
+        7.46E+05 -1.19E+03  2.24E+04  1.10E+03  3.78E+02  1.31E+02  2.31E+02  2.78E+05
 
 TH 9
+        1.69E+06  6.96E+01  7.22E+05  3.83E+02 -1.96E+06 -7.99E+01 -7.20E+05  2.42E+05  1.43E+06
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        3.12E+03 -3.69E+04 -9.14E+03 -1.58E+05 -4.15E+03 -9.07E+01  1.38E+03  9.81E+02  1.22E+03  0.00E+00  1.43E+05
 
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
+        2.59E+08
 
 TH 2
+        1.80E+07  1.74E+06
 
 TH 3
+       -1.10E+08 -7.64E+06  4.66E+07
 
 TH 4
+        7.75E+07  7.49E+06 -3.29E+07  3.22E+07
 
 TH 5
+       -3.00E+08 -2.08E+07  1.27E+08 -8.96E+07  3.47E+08
 
 TH 6
+        8.14E+04  1.11E+03 -3.45E+04  4.83E+03 -9.41E+04  1.72E+02
 
 TH 7
+        1.10E+08  7.65E+06 -4.66E+07  3.29E+07 -1.27E+08  3.45E+04  4.67E+07
 
 TH 8
+       -3.72E+07 -1.58E+06  1.57E+07 -6.79E+06  4.30E+07 -2.10E+04 -1.58E+07  7.40E+06
 
 TH 9
+        8.43E+07  8.15E+06 -3.58E+07  3.50E+07 -9.75E+07  5.27E+03  3.58E+07 -7.38E+06  3.81E+07
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        2.66E+07  1.12E+06 -1.13E+07  4.85E+06 -3.08E+07  1.51E+04  1.13E+07 -5.30E+06  5.27E+06  0.00E+00  3.80E+06
 
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
 #CPUT: Total CPU Time in Seconds,       23.921
Stop Time:
Wed Sep 29 12:12:04 CDT 2021
