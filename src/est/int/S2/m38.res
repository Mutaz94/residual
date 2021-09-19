Sat Sep 18 04:22:53 CDT 2021
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
$DATA ../../../../data/int/S2/dat38.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m38.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3316.59147275683        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.6134E+01 -7.0655E+01  1.7457E+02  4.4393E+01 -4.6414E+00 -2.2594E+01 -5.0652E+01 -2.0497E+02 -3.8280E+01  2.1089E+01
            -7.8441E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3755.57178896432        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.0915E+00  1.0914E+00  8.8974E-01  8.9552E-01  9.7135E-01  1.0581E+00  1.1381E+00  1.5820E+00  1.0877E+00  9.3935E-01
             8.5842E-01
 PARAMETER:  1.8753E-01  1.8743E-01 -1.6824E-02 -1.0351E-02  7.0935E-02  1.5650E-01  2.2935E-01  5.5872E-01  1.8407E-01  3.7429E-02
            -5.2662E-02
 GRADIENT:   3.1079E+02  4.9632E+01 -7.9556E-01 -6.4160E+01 -1.1215E+02 -1.5904E+01 -2.2916E+01  4.5063E+01 -5.1578E+00  7.7674E+00
            -3.8603E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3758.57258424214        NO. OF FUNC. EVALS.:  89
 CUMULATIVE NO. OF FUNC. EVALS.:      178
 NPARAMETR:  1.0924E+00  1.0555E+00  8.7172E-01  9.0905E-01  9.5601E-01  1.0578E+00  1.2024E+00  1.5700E+00  1.0813E+00  8.2903E-01
             8.6076E-01
 PARAMETER:  1.8835E-01  1.5398E-01 -3.7290E-02  4.6487E-03  5.5012E-02  1.5624E-01  2.8428E-01  5.5110E-01  1.7815E-01 -8.7504E-02
            -4.9939E-02
 GRADIENT:   3.1210E+02  3.6616E+01 -6.8435E+00 -6.3180E+01 -1.0572E+02 -1.6481E+01 -2.0059E+01  4.7803E+01 -5.9918E+00  1.4979E+00
            -3.7508E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3768.16521638339        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      256
 NPARAMETR:  1.0786E+00  1.0582E+00  8.7773E-01  9.0353E-01  9.6393E-01  1.0382E+00  1.2302E+00  1.5584E+00  1.1342E+00  8.1177E-01
             8.7658E-01
 PARAMETER:  1.7567E-01  1.5653E-01 -3.0418E-02 -1.4499E-03  6.3266E-02  1.3751E-01  3.0715E-01  5.4364E-01  2.2592E-01 -1.0854E-01
            -3.1723E-02
 GRADIENT:   2.8124E+02  3.2895E+01 -5.3195E+00 -5.9277E+01 -9.7999E+01 -2.1669E+01 -1.4404E+01  4.7671E+01  7.5714E+00  2.3993E+00
            -3.2649E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3769.74831109503        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  1.0764E+00  1.0583E+00  8.7865E-01  9.0396E-01  9.6536E-01  1.0377E+00  1.2327E+00  1.5564E+00  1.1335E+00  8.0869E-01
             8.7914E-01
 PARAMETER:  1.7361E-01  1.5663E-01 -2.9368E-02 -9.6834E-04  6.4748E-02  1.3704E-01  3.0918E-01  5.4235E-01  2.2531E-01 -1.1233E-01
            -2.8813E-02
 GRADIENT:   2.7527E+02  3.2181E+01 -5.3637E+00 -5.7998E+01 -9.5956E+01 -2.1217E+01 -1.4053E+01  4.7452E+01  7.5490E+00  2.3312E+00
            -3.1904E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3770.78455725835        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:      477
 NPARAMETR:  1.0765E+00  1.0583E+00  8.7869E-01  9.0392E-01  9.6531E-01  1.1129E+00  1.2329E+00  1.5559E+00  1.1336E+00  8.0874E-01
             8.7909E-01
 PARAMETER:  1.7370E-01  1.5671E-01 -2.9318E-02 -1.0187E-03  6.4697E-02  2.0699E-01  3.0934E-01  5.4208E-01  2.2543E-01 -1.1228E-01
            -2.8864E-02
 GRADIENT:   2.5340E+02  3.2285E+01 -5.2268E+00 -5.8128E+01 -9.6070E+01  1.3195E+01 -1.4013E+01  4.7406E+01  7.5177E+00  2.3430E+00
            -3.1881E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3771.70001370092        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      638
 NPARAMETR:  1.0753E+00  1.0581E+00  8.7880E-01  9.0437E-01  9.6595E-01  1.1149E+00  1.2339E+00  1.5486E+00  1.1334E+00  8.0853E-01
             8.8024E-01
 PARAMETER:  1.7263E-01  1.5651E-01 -2.9201E-02 -5.1729E-04  6.5354E-02  2.0877E-01  3.1021E-01  5.3733E-01  2.2520E-01 -1.1254E-01
            -2.7558E-02
 GRADIENT:   2.5004E+02  3.1657E+01 -5.2009E+00 -5.7116E+01 -9.4363E+01  1.4327E+01 -1.3754E+01  4.6861E+01  7.5195E+00  2.4661E+00
            -3.1555E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3774.54474219031        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:      772
 NPARAMETR:  1.0752E+00  1.0581E+00  8.7882E-01  9.0441E-01  9.6599E-01  1.1125E+00  1.2340E+00  1.4520E+00  1.1333E+00  8.0835E-01
             8.8042E-01
 PARAMETER:  1.7247E-01  1.5651E-01 -2.9178E-02 -4.7129E-04  6.5400E-02  2.0664E-01  3.1029E-01  4.7296E-01  2.2514E-01 -1.1276E-01
            -2.7354E-02
 GRADIENT:   2.5019E+02  3.1831E+01 -1.1822E+00 -5.6234E+01 -8.9032E+01  1.3404E+01 -1.3462E+01  3.9758E+01  6.5891E+00  2.6395E+00
            -3.1764E+02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3774.69308214290        NO. OF FUNC. EVALS.: 213
 CUMULATIVE NO. OF FUNC. EVALS.:      985
 NPARAMETR:  1.0749E+00  1.0581E+00  8.7883E-01  9.0452E-01  9.6604E-01  1.1125E+00  1.2343E+00  1.4520E+00  1.1333E+00  8.0831E-01
             8.8070E-01
 PARAMETER:  1.7226E-01  1.5650E-01 -2.9169E-02 -3.4703E-04  6.5451E-02  2.0664E-01  3.1051E-01  4.7296E-01  2.2511E-01 -1.1282E-01
            -2.7041E-02
 GRADIENT:   1.4605E+02  1.3253E+01 -2.1080E+00 -6.8542E+01 -9.5598E+01 -3.2126E-01 -1.8283E+01  3.9178E+01  4.0014E+00  2.2240E+00
            -3.1702E+02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3785.64481066193        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1172
 NPARAMETR:  1.0550E+00  1.0581E+00  8.8209E-01  9.1425E-01  9.6604E-01  1.0929E+00  1.2555E+00  1.4520E+00  1.1150E+00  7.8488E-01
             9.0425E-01
 PARAMETER:  1.5359E-01  1.5650E-01 -2.5458E-02  1.0353E-02  6.5450E-02  1.8883E-01  3.2756E-01  4.7297E-01  2.0884E-01 -1.4222E-01
            -6.5405E-04
 GRADIENT:   1.1635E+02  1.7141E+01 -1.4475E+00 -5.5117E+01 -9.3637E+01 -2.4326E+00 -1.5650E+01  3.9548E+01  1.7958E+00  1.2182E+00
            -2.4947E+02

0ITERATION NO.:   46    OBJECTIVE VALUE:  -3785.64481066193        NO. OF FUNC. EVALS.:  34
 CUMULATIVE NO. OF FUNC. EVALS.:     1206
 NPARAMETR:  1.0550E+00  1.0581E+00  8.8209E-01  9.1425E-01  9.6604E-01  1.0929E+00  1.2555E+00  1.4520E+00  1.1150E+00  7.8487E-01
             9.0434E-01
 PARAMETER:  1.5359E-01  1.5650E-01 -2.5458E-02  1.0353E-02  6.5450E-02  1.8883E-01  3.2756E-01  4.7297E-01  2.0884E-01 -1.4222E-01
            -6.5405E-04
 GRADIENT:   1.1623E+02 -5.2860E+05 -4.1364E+05  8.2724E+05  8.2722E+05 -2.4207E+00 -1.2630E+05  8.7432E+04  1.7797E+00  1.2154E+00
            -2.4941E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1206
 NO. OF SIG. DIGITS UNREPORTABLE

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.6937E-02 -3.6233E-02 -2.4717E-02  4.5817E-02 -1.5174E-02
 SE:             2.9573E-02  2.6957E-02  1.8547E-02  2.7341E-02  2.0476E-02
 N:                     100         100         100         100         100

 P VAL.:         5.4195E-02  1.7890E-01  1.8265E-01  9.3790E-02  4.5864E-01

 ETASHRINKSD(%)  9.2537E-01  9.6919E+00  3.7864E+01  8.4037E+00  3.1403E+01
 ETASHRINKVR(%)  1.8422E+00  1.8444E+01  6.1392E+01  1.6101E+01  5.2945E+01
 EBVSHRINKSD(%)  1.8177E-01  1.3944E+01  2.4082E+01  8.0525E+00  3.1145E+01
 EBVSHRINKVR(%)  3.6321E-01  2.5944E+01  4.2365E+01  1.5457E+01  5.2590E+01
 RELATIVEINF(%)  9.9636E+01  4.0522E+01  4.3025E+01  5.9826E+01  2.0620E+01
 EPSSHRINKSD(%)  1.4366E+01
 EPSSHRINKVR(%)  2.6668E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3785.6448106619346     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2131.5554508935238     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    34.76
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.80
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3785.645       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  1.06E+00  8.82E-01  9.14E-01  9.66E-01  1.09E+00  1.26E+00  1.45E+00  1.11E+00  7.85E-01  9.04E-01
 


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
+        7.88E+08
 
 TH 2
+        7.71E+08  7.54E+08
 
 TH 3
+       -1.46E+03  1.42E+09  2.66E+09
 
 TH 4
+       -1.40E+09 -1.37E+09 -2.56E+09  2.47E+09
 
 TH 5
+        1.33E+03 -1.36E+04 -2.43E+09 -1.12E+05  2.22E+09
 
 TH 6
+       -1.01E+02 -1.02E+03 -1.93E+03  1.85E+03  1.76E+03  1.68E+02
 
 TH 7
+       -3.13E+02  3.12E+03  5.70E+08 -5.50E+08 -5.21E+08 -4.13E+02  1.22E+08
 
 TH 8
+        1.88E+02 -1.87E+03 -3.41E+08  3.29E+08  3.12E+08  2.47E+02 -7.32E+07  4.38E+07
 
 TH 9
+        5.48E+08  5.36E+08  7.72E+04 -7.44E+04 -7.05E+04 -4.08E-01  1.66E+04 -9.89E+03  1.10E+02
 
 TH10
+        1.14E+09  1.12E+09 -1.51E+03 -2.03E+09  1.37E+03  8.29E-01 -2.94E+02  1.95E+02  1.03E+01  1.66E+09
 
 TH11
+       -1.41E+09 -1.38E+09  7.48E+04  2.50E+09 -6.84E+04 -1.04E+00  1.61E+04 -9.59E+03  1.17E+01 -2.05E+09  2.53E+09
 
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
 #CPUT: Total CPU Time in Seconds,       48.695
Stop Time:
Sat Sep 18 04:23:43 CDT 2021