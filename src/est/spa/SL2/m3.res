Wed Sep 29 15:32:55 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1698.10160560859        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9477E+02 -4.2900E+01 -2.7934E+01 -3.0962E+00  4.4411E+01  6.9958E+01  6.1564E+00  4.1750E+00  8.5604E+00  2.7378E+01
            -1.6121E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1707.00608865507        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0193E+00  1.0828E+00  1.0420E+00  1.0222E+00  9.9957E-01  9.9892E-01  9.3846E-01  1.0308E+00  1.0025E+00  7.6261E-01
             1.0360E+00
 PARAMETER:  1.1915E-01  1.7956E-01  1.4112E-01  1.2200E-01  9.9573E-02  9.8916E-02  3.6486E-02  1.3031E-01  1.0248E-01 -1.7101E-01
             1.3537E-01
 GRADIENT:  -1.1902E+01  6.7848E+00  5.1646E+00  1.5766E+01  1.0234E+01 -6.8897E-01 -3.7124E-01 -7.1969E+00 -1.4747E+00 -2.1429E+00
            -1.0444E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1707.82494580976        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0269E+00  1.2718E+00  9.0965E-01  9.1337E-01  9.9572E-01  9.9156E-01  8.9257E-01  1.2769E+00  1.1002E+00  6.7512E-01
             1.0655E+00
 PARAMETER:  1.2658E-01  3.4046E-01  5.3080E-03  9.3855E-03  9.5708E-02  9.1526E-02 -1.3652E-02  3.4447E-01  1.9546E-01 -2.9287E-01
             1.6342E-01
 GRADIENT:   1.0073E+00  3.5888E+01  8.0892E+00  3.1245E+01 -2.9292E+01 -4.4540E+00  3.5985E+00  1.4161E+00  4.0602E+00 -9.5374E-02
             3.0485E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1709.35592044301        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      550
 NPARAMETR:  1.0272E+00  1.4271E+00  8.1842E-01  7.9224E-01  1.0491E+00  9.9720E-01  8.0167E-01  1.1901E+00  1.1678E+00  7.3121E-01
             1.0560E+00
 PARAMETER:  1.2681E-01  4.5568E-01 -1.0038E-01 -1.3289E-01  1.4796E-01  9.7197E-02 -1.2105E-01  2.7404E-01  2.5514E-01 -2.1306E-01
             1.5451E-01
 GRADIENT:   5.5533E-01  1.5536E+01  7.7544E+00  5.9940E+00 -1.0601E+01 -2.5271E+00 -9.6583E-02 -1.6587E+00 -5.2311E+00 -2.1273E-01
            -1.5831E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1710.62614668794        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      728
 NPARAMETR:  1.0283E+00  1.7094E+00  5.1566E-01  6.0197E-01  1.0447E+00  1.0122E+00  7.2632E-01  8.0522E-01  1.4326E+00  7.3552E-01
             1.0606E+00
 PARAMETER:  1.2788E-01  6.3616E-01 -5.6230E-01 -4.0755E-01  1.4377E-01  1.1210E-01 -2.1977E-01 -1.1664E-01  4.5951E-01 -2.0717E-01
             1.5885E-01
 GRADIENT:   6.0400E-01  3.4325E+01  8.9097E+00  9.5143E+00 -3.8024E+01  2.6887E+00 -8.7240E-01  1.3792E-01  2.3267E+00  4.1596E+00
             2.2269E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1710.90765354299        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      914
 NPARAMETR:  1.0289E+00  1.7053E+00  5.1307E-01  5.9961E-01  1.0445E+00  1.0128E+00  7.3653E-01  8.0451E-01  1.4312E+00  6.9845E-01
             1.0598E+00
 PARAMETER:  1.2851E-01  6.3373E-01 -5.6735E-01 -4.1147E-01  1.4350E-01  1.1269E-01 -2.0580E-01 -1.1753E-01  4.5849E-01 -2.5889E-01
             1.5807E-01
 GRADIENT:   2.1257E+00  2.5684E+01  8.8943E+00  6.2632E+00 -2.9915E+01  2.9412E+00  1.3251E-02 -1.1850E-01  2.2326E+00  3.2267E-01
             7.0204E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1711.25854074603        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1099             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0292E+00  1.6968E+00  5.0321E-01  5.9416E-01  1.0544E+00  1.0042E+00  7.3706E-01  7.9733E-01  1.4263E+00  7.0056E-01
             1.0574E+00
 PARAMETER:  1.2874E-01  6.2872E-01 -5.8674E-01 -4.2061E-01  1.5299E-01  1.0420E-01 -2.0508E-01 -1.2648E-01  4.5505E-01 -2.5587E-01
             1.5585E-01
 GRADIENT:   5.2468E+02  5.7191E+02  5.3517E+00  1.1632E+02  1.0852E+01  6.4053E+01  1.2386E+01  4.6515E-01  2.2795E+01  8.3359E-01
             1.3692E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1711.26778867327        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1269
 NPARAMETR:  1.0272E+00  1.6993E+00  5.0318E-01  5.9335E-01  1.0539E+00  1.0044E+00  7.3647E-01  7.9322E-01  1.4248E+00  7.0012E-01
             1.0571E+00
 PARAMETER:  1.2684E-01  6.3021E-01 -5.8681E-01 -4.2197E-01  1.5251E-01  1.0438E-01 -2.0589E-01 -1.3166E-01  4.5406E-01 -2.5650E-01
             1.5556E-01
 GRADIENT:  -1.4959E+00 -7.1834E+00  2.0034E-01  4.0303E+00 -2.0428E+00 -3.3483E-01  5.4118E-02  2.7556E-01  1.0680E+00 -4.3692E-02
            -9.1347E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1711.29052288417        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     1440
 NPARAMETR:  1.0278E+00  1.6997E+00  5.0164E-01  5.9083E-01  1.0550E+00  1.0052E+00  7.3610E-01  7.8968E-01  1.4207E+00  7.0069E-01
             1.0574E+00
 PARAMETER:  1.2743E-01  6.3047E-01 -5.8988E-01 -4.2622E-01  1.5355E-01  1.0520E-01 -2.0639E-01 -1.3612E-01  4.5113E-01 -2.5568E-01
             1.5580E-01
 GRADIENT:   5.1656E+02  5.7526E+02  6.4509E+00  1.1489E+02  9.4787E+00  6.5327E+01  1.2252E+01  3.6465E-01  2.1111E+01  7.2438E-01
             1.2424E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1711.31177685163        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     1611            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0293E+00  1.7038E+00  4.9864E-01  5.8821E-01  1.0555E+00  1.0055E+00  7.3664E-01  7.8748E-01  1.4148E+00  7.0158E-01
             1.0574E+00
 PARAMETER:  1.2885E-01  6.3284E-01 -5.9587E-01 -4.3067E-01  1.5399E-01  1.0546E-01 -2.0565E-01 -1.3892E-01  4.4698E-01 -2.5442E-01
             1.5580E-01
 GRADIENT:   5.2545E+02  5.8037E+02  6.8237E+00  1.1476E+02  9.0576E+00  6.5374E+01  1.2490E+01  3.5075E-01  1.9592E+01  8.5723E-01
             1.2096E+00

0ITERATION NO.:   48    OBJECTIVE VALUE:  -1711.31331330497        NO. OF FUNC. EVALS.:  80
 CUMULATIVE NO. OF FUNC. EVALS.:     1691
 NPARAMETR:  1.0292E+00  1.7038E+00  4.9861E-01  5.8813E-01  1.0555E+00  1.0055E+00  7.3661E-01  7.8501E-01  1.4152E+00  7.0154E-01
             1.0574E+00
 PARAMETER:  1.2882E-01  6.3288E-01 -5.9593E-01 -4.3081E-01  1.5400E-01  1.0547E-01 -2.0569E-01 -1.4206E-01  4.4726E-01 -2.5448E-01
             1.5580E-01
 GRADIENT:   1.6249E-01 -3.2642E+00  3.3480E+04  2.3132E+04 -9.3053E-01 -1.8319E-01  8.9880E-02 -1.4039E+05  4.4547E+04  4.5258E-02
            -4.9729E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1691
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.7159E-04 -2.4654E-02 -1.7402E-02  2.1023E-02 -3.5854E-02
 SE:             2.9873E-02  2.3808E-02  8.2110E-03  2.3627E-02  1.9314E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9008E-01  3.0043E-01  3.4057E-02  3.7359E-01  6.3399E-02

 ETASHRINKSD(%)  1.0000E-10  2.0240E+01  7.2492E+01  2.0847E+01  3.5296E+01
 ETASHRINKVR(%)  1.0000E-10  3.6383E+01  9.2433E+01  3.7348E+01  5.8133E+01
 EBVSHRINKSD(%)  4.6257E-01  2.0334E+01  7.4309E+01  2.1057E+01  3.5294E+01
 EBVSHRINKVR(%)  9.2301E-01  3.6533E+01  9.3400E+01  3.7679E+01  5.8132E+01
 RELATIVEINF(%)  9.9051E+01  3.8925E+00  5.1618E-01  4.1480E+00  7.1732E+00
 EPSSHRINKSD(%)  4.3822E+01
 EPSSHRINKVR(%)  6.8440E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1711.3133133049664     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -976.16248674122824     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.29
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.23
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1711.313       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.70E+00  4.99E-01  5.88E-01  1.06E+00  1.01E+00  7.37E-01  7.85E-01  1.42E+00  7.02E-01  1.06E+00
 


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
+        1.03E+03
 
 TH 2
+       -6.78E+00  4.67E+02
 
 TH 3
+        4.42E+02 -5.36E+02  5.65E+06
 
 TH 4
+        5.64E+02 -6.13E+02  6.62E+06  7.76E+06
 
 TH 5
+       -5.35E+00 -3.16E+02  2.09E+02  1.11E+03  8.62E+02
 
 TH 6
+       -4.87E-01 -1.10E+00  8.64E+02  1.15E+03 -4.27E-01  1.94E+02
 
 TH 7
+        5.26E-01  1.60E+01  2.45E+02  2.78E+02 -1.09E+01  5.15E-01  1.59E+02
 
 TH 8
+       -1.18E+03  2.03E+03 -1.51E+07 -1.76E+07 -1.92E+03 -2.33E+03 -6.68E+02  4.01E+07
 
 TH 9
+        2.01E+02 -3.79E+02  4.62E+03 -1.16E+03  3.34E+02  3.94E+02  1.35E+02 -6.08E+03  1.24E+06
 
 TH10
+        8.20E-02 -9.16E+00  2.34E+02  2.89E+02 -8.25E+01  6.60E-02  2.75E+01 -6.82E+02  1.27E+02  8.80E+01
 
 TH11
+       -6.86E+00 -1.53E+01 -5.07E+04  1.19E+07 -2.00E+01  1.98E+00  1.07E+01  1.35E+05 -2.38E+04  2.43E+01  1.91E+02
 
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
 #CPUT: Total CPU Time in Seconds,       29.572
Stop Time:
Wed Sep 29 15:33:27 CDT 2021
