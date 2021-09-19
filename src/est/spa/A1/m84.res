Sat Sep 18 09:29:05 CDT 2021
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
$DATA ../../../../data/spa/A1/dat84.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m84.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1370.21564331761        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -2.4220E+01 -1.5850E+01 -3.5553E+01 -2.9056E+00  5.8264E+01  6.1580E+01 -3.0411E+01  1.0712E+01 -5.6486E+01 -3.3106E+01
            -5.7346E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1531.22288631384        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0411E+00  9.6238E-01  1.2791E+00  9.9150E-01  1.1161E+00  7.7114E-01  1.1487E+00  8.5892E-01  1.2259E+00  1.1213E+00
             1.8325E+00
 PARAMETER:  1.4025E-01  6.1653E-02  3.4612E-01  9.1461E-02  2.0986E-01 -1.5989E-01  2.3866E-01 -5.2076E-02  3.0371E-01  2.1453E-01
             7.0569E-01
 GRADIENT:   3.9910E+01 -5.0826E+01 -2.0072E+01 -5.8338E+01  3.8980E+01 -1.9472E+01  8.6017E-01  3.6634E+00  1.0201E+01 -1.1498E+01
            -2.7264E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1536.40900422719        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0390E+00  7.4261E-01  1.6884E+00  1.2253E+00  1.1523E+00  7.9133E-01  1.2521E+00  6.0166E-01  1.0607E+00  1.3043E+00
             1.8411E+00
 PARAMETER:  1.3828E-01 -1.9758E-01  6.2376E-01  3.0319E-01  2.4175E-01 -1.3404E-01  3.2483E-01 -4.0806E-01  1.5896E-01  3.6570E-01
             7.1035E-01
 GRADIENT:   3.4223E+01  7.6394E+00 -3.6857E+00  2.7964E+01  1.2769E+01 -8.2299E+00 -7.7731E-01  1.6576E-01  3.0436E+00  5.0982E+00
            -8.7746E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1537.45441203343        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.0290E+00  7.3295E-01  1.3690E+00  1.2019E+00  1.0076E+00  8.0855E-01  1.2887E+00  3.0697E-01  1.0424E+00  1.1448E+00
             1.8645E+00
 PARAMETER:  1.2862E-01 -2.1068E-01  4.1405E-01  2.8394E-01  1.0761E-01 -1.1251E-01  3.5361E-01 -1.0810E+00  1.4154E-01  2.3521E-01
             7.2297E-01
 GRADIENT:  -4.2219E-01  5.4481E+00  1.4329E+00  6.6246E+00 -4.5944E+00 -3.2211E-01 -5.6543E-01  2.6010E-01 -9.2239E-01  1.6162E-01
             1.0469E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1538.98627752564        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  1.0268E+00  4.1914E-01  1.3401E+00  1.3913E+00  8.9701E-01  8.0481E-01  1.7073E+00  3.8021E-02  9.4344E-01  1.0891E+00
             1.8678E+00
 PARAMETER:  1.2644E-01 -7.6954E-01  3.9276E-01  4.3024E-01 -8.6869E-03 -1.1715E-01  6.3493E-01 -3.1696E+00  4.1779E-02  1.8539E-01
             7.2477E-01
 GRADIENT:   3.2346E+00  3.5024E+00 -6.8354E-01  1.6644E+01 -9.4435E-01 -8.6798E-01 -1.5835E-01  6.2577E-03 -7.7307E-01 -2.4054E-01
            -1.7154E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1539.54228109820        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      484
 NPARAMETR:  1.0278E+00  2.8578E-01  1.4843E+00  1.4841E+00  9.1340E-01  8.0489E-01  2.0855E+00  1.0000E-02  8.9835E-01  1.1197E+00
             1.8744E+00
 PARAMETER:  1.2739E-01 -1.1525E+00  4.9495E-01  4.9480E-01  9.4199E-03 -1.1706E-01  8.3500E-01 -4.6914E+00 -7.1950E-03  2.1310E-01
             7.2831E-01
 GRADIENT:  -2.9568E+00  1.7822E+00  8.4448E-02  5.8365E+00  7.0781E-01 -7.3364E-01 -1.5072E-01  0.0000E+00 -2.7368E+00 -8.9175E-01
            -1.1806E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1540.03273789656        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      659
 NPARAMETR:  1.0265E+00  1.3186E-01  1.4831E+00  1.5682E+00  8.7161E-01  8.0423E-01  2.9653E+00  1.0000E-02  8.7033E-01  1.1102E+00
             1.8786E+00
 PARAMETER:  1.2611E-01 -1.9260E+00  4.9416E-01  5.4994E-01 -3.7417E-02 -1.1787E-01  1.1870E+00 -8.9397E+00 -3.8883E-02  2.0458E-01
             7.3054E-01
 GRADIENT:   1.4119E+00  2.1362E-02 -1.7757E-01 -5.4639E+00  1.0023E+00 -2.4592E-01 -4.0913E-02  0.0000E+00 -1.1386E-01  7.8210E-02
             4.3083E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1540.25728840074        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      834
 NPARAMETR:  1.0243E+00  3.5734E-02  1.4868E+00  1.6266E+00  8.4907E-01  8.0350E-01  5.5391E+00  1.0000E-02  8.5315E-01  1.1034E+00
             1.8810E+00
 PARAMETER:  1.2397E-01 -3.2317E+00  4.9662E-01  5.8647E-01 -6.3608E-02 -1.1878E-01  1.8118E+00 -1.6694E+01 -5.8819E-02  1.9836E-01
             7.3182E-01
 GRADIENT:  -1.2290E-01  2.1623E-03 -9.2484E-01 -2.9387E+00  1.5703E+00 -1.1698E-01 -4.3665E-03  0.0000E+00  1.6741E+00  3.2442E-02
             2.3040E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1540.31535468654        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1010
 NPARAMETR:  1.0239E+00  1.0000E-02  1.5226E+00  1.6479E+00  8.5292E-01  8.0345E-01  1.0900E+01  1.0000E-02  8.4141E-01  1.1086E+00
             1.8825E+00
 PARAMETER:  1.2365E-01 -4.5922E+00  5.2042E-01  5.9951E-01 -5.9089E-02 -1.1884E-01  2.4887E+00 -2.4979E+01 -7.2678E-02  2.0311E-01
             7.3261E-01
 GRADIENT:  -2.5363E-01  0.0000E+00  2.2329E-01  3.4539E+00 -4.8575E-01  8.2711E-03  6.1545E-04  0.0000E+00 -1.8573E-01 -1.3238E-01
            -1.5482E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1540.31817321491        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1185
 NPARAMETR:  1.0239E+00  1.0000E-02  1.5127E+00  1.6452E+00  8.5002E-01  8.0341E-01  1.0837E+01  1.0000E-02  8.4212E-01  1.1070E+00
             1.8824E+00
 PARAMETER:  1.2366E-01 -4.5796E+00  5.1392E-01  5.9787E-01 -6.2494E-02 -1.1889E-01  2.4829E+00 -2.4929E+01 -7.1836E-02  2.0168E-01
             7.3256E-01
 GRADIENT:  -3.1929E-04  0.0000E+00  4.2707E-03  2.1842E-02 -1.6520E-02  8.9156E-04  1.7877E-04  0.0000E+00  2.3884E-03  2.9807E-03
             2.1348E-03

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1540.31817321491        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1207
 NPARAMETR:  1.0239E+00  1.0000E-02  1.5127E+00  1.6452E+00  8.5002E-01  8.0341E-01  1.0837E+01  1.0000E-02  8.4212E-01  1.1070E+00
             1.8824E+00
 PARAMETER:  1.2366E-01 -4.5796E+00  5.1392E-01  5.9787E-01 -6.2494E-02 -1.1889E-01  2.4829E+00 -2.4929E+01 -7.1836E-02  2.0168E-01
             7.3256E-01
 GRADIENT:  -3.1929E-04  0.0000E+00  4.2707E-03  2.1842E-02 -1.6520E-02  8.9156E-04  1.7877E-04  0.0000E+00  2.3884E-03  2.9807E-03
             2.1348E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1207
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.0142E-03 -7.9854E-04  1.5211E-05 -1.0336E-02 -3.2815E-02
 SE:             2.9260E-02  1.5224E-03  1.0775E-04  2.8206E-02  2.1985E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7235E-01  5.9990E-01  8.8773E-01  7.1402E-01  1.3554E-01

 ETASHRINKSD(%)  1.9742E+00  9.4900E+01  9.9639E+01  5.5048E+00  2.6348E+01
 ETASHRINKVR(%)  3.9095E+00  9.9740E+01  9.9999E+01  1.0707E+01  4.5754E+01
 EBVSHRINKSD(%)  2.0228E+00  9.4966E+01  9.9614E+01  5.1675E+00  2.5162E+01
 EBVSHRINKVR(%)  4.0048E+00  9.9747E+01  9.9999E+01  1.0068E+01  4.3993E+01
 RELATIVEINF(%)  8.4527E+01  3.9633E-03  1.2832E-04  1.7713E+00  3.0872E+00
 EPSSHRINKSD(%)  3.5669E+01
 EPSSHRINKVR(%)  5.8615E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1540.3181732149135     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -805.16734665117531     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.71
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1540.318       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.00E-02  1.51E+00  1.65E+00  8.50E-01  8.03E-01  1.08E+01  1.00E-02  8.42E-01  1.11E+00  1.88E+00
 


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
+        1.58E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+        9.41E-01  0.00E+00  7.51E+01
 
 TH 4
+       -3.52E+01  0.00E+00 -2.04E+01  5.23E+02
 
 TH 5
+        5.36E+00  0.00E+00 -2.09E+02 -5.29E+01  7.04E+02
 
 TH 6
+       -2.39E+00  0.00E+00  3.28E+00 -7.58E+00  2.14E+01  2.71E+02
 
 TH 7
+       -5.32E-02  0.00E+00  1.20E-02 -1.14E-02 -1.24E-01  5.65E-02  5.39E-04
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.37E+01  0.00E+00  1.21E+01 -3.39E+00  6.53E+00 -1.73E+01  1.66E-02  0.00E+00  2.29E+02
 
 TH10
+        3.95E-01  0.00E+00  1.85E+00 -3.73E+00 -5.99E+01  1.59E+01  2.13E-02  0.00E+00 -1.21E+01  6.97E+01
 
 TH11
+       -1.72E+01  0.00E+00 -4.47E+00 -9.57E+00 -4.09E-01  4.48E+00  5.88E-03  0.00E+00  1.11E+01  1.07E+01  7.93E+01
 
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
 #CPUT: Total CPU Time in Seconds,       19.808
Stop Time:
Sat Sep 18 09:29:27 CDT 2021