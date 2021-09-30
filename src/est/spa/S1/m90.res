Wed Sep 29 14:39:40 CDT 2021
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
$DATA ../../../../data/spa/S1/dat90.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1627.59058112318        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6300E+02 -3.3954E+00 -2.3113E+01  4.2425E+01  5.8026E+01  3.0176E+01  7.0017E-01  3.3641E+00  1.2879E-01 -2.5320E+00
            -2.8434E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1630.41223496161        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.8027E-01  1.0179E+00  1.0140E+00  1.0166E+00  9.8213E-01  1.0137E+00  1.0034E+00  9.9149E-01  1.0223E+00  9.9503E-01
             1.0688E+00
 PARAMETER:  8.0068E-02  1.1775E-01  1.1392E-01  1.1647E-01  8.1966E-02  1.1363E-01  1.0340E-01  9.1456E-02  1.2207E-01  9.5022E-02
             1.6655E-01
 GRADIENT:  -9.4238E-01 -2.0416E+00 -8.6310E+00  8.6079E+00  1.3347E+01 -4.5027E-02 -5.3249E-03  2.2418E+00 -1.5001E+00  4.2330E-01
             4.4877E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1630.59264267408        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.8219E-01  1.1139E+00  9.1776E-01  9.5480E-01  9.7708E-01  1.0154E+00  9.4211E-01  8.0481E-01  1.0612E+00  9.8728E-01
             1.0700E+00
 PARAMETER:  8.2030E-02  2.0784E-01  1.4181E-02  5.3746E-02  7.6817E-02  1.1530E-01  4.0363E-02 -1.1715E-01  1.5943E-01  8.7201E-02
             1.6767E-01
 GRADIENT:   1.1270E+00  5.1494E+00 -1.0951E+00  1.1565E+01  6.9340E+00  2.8736E-01 -2.1587E+00 -1.2722E+00 -3.6732E+00 -5.9762E-01
             2.3431E-02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1630.88854806311        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.8223E-01  1.2551E+00  8.1663E-01  8.5807E-01  9.8482E-01  1.0139E+00  9.0924E-01  7.9427E-01  1.1466E+00  9.6601E-01
             1.0688E+00
 PARAMETER:  8.2066E-02  3.2721E-01 -1.0257E-01 -5.3072E-02  8.4704E-02  1.1376E-01  4.8548E-03 -1.3033E-01  2.3680E-01  6.5423E-02
             1.6653E-01
 GRADIENT:  -5.7087E-01  9.7022E+00  4.4470E+00  4.5769E+00 -9.1911E+00 -7.2694E-01  7.9840E-01  1.9721E-02 -3.3303E-01  2.6047E-01
             8.2090E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1631.10694754367        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.8354E-01  1.4512E+00  6.7601E-01  7.2926E-01  1.0182E+00  1.0168E+00  8.3575E-01  6.9748E-01  1.2715E+00  9.6321E-01
             1.0692E+00
 PARAMETER:  8.3401E-02  4.7241E-01 -2.9155E-01 -2.1572E-01  1.1804E-01  1.1669E-01 -7.9428E-02 -2.6028E-01  3.4020E-01  6.2516E-02
             1.6686E-01
 GRADIENT:   4.4363E-01  1.4362E+01  3.5052E+00  6.2212E+00 -9.0783E+00  7.2754E-02  1.2892E-01  3.3479E-01 -8.7757E-01 -2.4362E-02
            -3.3420E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1631.34321431274        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.8415E-01  1.6415E+00  5.0943E-01  5.9703E-01  1.0454E+00  1.0186E+00  7.8376E-01  4.3919E-01  1.4199E+00  9.5125E-01
             1.0680E+00
 PARAMETER:  8.4020E-02  5.9558E-01 -5.7447E-01 -4.1578E-01  1.4438E-01  1.1846E-01 -1.4365E-01 -7.2283E-01  4.5057E-01  5.0023E-02
             1.6580E-01
 GRADIENT:   7.3487E-01  7.0364E+00 -1.0149E+00  5.4984E+00 -1.5368E+00  5.5925E-01  3.9394E-02  4.1956E-01 -1.0857E+00  5.3458E-02
            -5.3608E-04

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1631.44380924897        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1063
 NPARAMETR:  9.8448E-01  1.6761E+00  4.8561E-01  5.5670E-01  1.0609E+00  1.0171E+00  7.7238E-01  1.8766E-01  1.4841E+00  9.5862E-01
             1.0685E+00
 PARAMETER:  8.4361E-02  6.1645E-01 -6.2235E-01 -4.8573E-01  1.5915E-01  1.1700E-01 -1.5828E-01 -1.5731E+00  4.9480E-01  5.7741E-02
             1.6621E-01
 GRADIENT:   1.9284E+00 -1.6721E+01  2.4140E+00 -1.0151E+01 -3.6559E+00  8.6482E-02  3.8976E-02  5.5823E-02 -9.5716E-01 -3.4950E-01
             1.6882E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1631.52724388837        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1240
 NPARAMETR:  9.8364E-01  1.6912E+00  4.7845E-01  5.5876E-01  1.0636E+00  1.0172E+00  7.7024E-01  1.3428E-01  1.4872E+00  9.6387E-01
             1.0680E+00
 PARAMETER:  8.3501E-02  6.2546E-01 -6.3719E-01 -4.8204E-01  1.6163E-01  1.1705E-01 -1.6105E-01 -1.9078E+00  4.9693E-01  6.3200E-02
             1.6576E-01
 GRADIENT:  -2.4540E-01  7.2373E-02  4.8824E-01  1.1120E+00 -1.2614E+00  2.4814E-02 -9.0039E-02  3.1828E-02 -4.7742E-01  1.4886E-02
            -6.2571E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1631.54724453519        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1421
 NPARAMETR:  9.8430E-01  1.6945E+00  4.7411E-01  5.5369E-01  1.0657E+00  1.0174E+00  7.6903E-01  4.0149E-02  1.4988E+00  9.6447E-01
             1.0680E+00
 PARAMETER:  8.4171E-02  6.2740E-01 -6.4631E-01 -4.9115E-01  1.6364E-01  1.1720E-01 -1.6262E-01 -3.1152E+00  5.0464E-01  6.3820E-02
             1.6581E-01
 GRADIENT:   1.2484E+00 -5.7709E+00 -9.0774E-02 -4.4420E-01  3.4568E-01  9.3316E-02  6.5780E-02  3.1664E-03  1.2958E-01  1.1132E-01
             1.0229E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1631.55037819804        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:     1542
 NPARAMETR:  9.8380E-01  1.6893E+00  4.7396E-01  5.5704E-01  1.0611E+00  1.0171E+00  7.6870E-01  1.0000E-02  1.4935E+00  9.6112E-01
             1.0666E+00
 PARAMETER:  8.3670E-02  6.2434E-01 -6.4663E-01 -4.8512E-01  1.5932E-01  1.1693E-01 -1.6306E-01 -1.8850E+01  5.0110E-01  6.0345E-02
             1.6452E-01
 GRADIENT:   1.9437E-01 -5.3138E+00 -7.5149E-02 -2.3561E-01 -3.8164E-01 -2.6991E-02 -2.7584E-01  0.0000E+00  2.9599E-01  1.6837E-01
            -3.5792E-01

0ITERATION NO.:   48    OBJECTIVE VALUE:  -1631.55157520514        NO. OF FUNC. EVALS.: 102
 CUMULATIVE NO. OF FUNC. EVALS.:     1644
 NPARAMETR:  9.8426E-01  1.6890E+00  4.7467E-01  5.5754E-01  1.0610E+00  1.0174E+00  7.6981E-01  1.0000E-02  1.4901E+00  9.6040E-01
             1.0677E+00
 PARAMETER:  8.4344E-02  6.2412E-01 -6.4633E-01 -4.8520E-01  1.5958E-01  1.1729E-01 -1.6032E-01 -1.8850E+01  4.9997E-01  5.8599E-02
             1.6538E-01
 GRADIENT:   1.7457E-01  7.0241E-03 -1.0133E-01 -2.3364E-01  1.9767E-01  6.2137E-03  8.6508E-02  0.0000E+00  8.0996E-02 -5.8563E-02
            -2.5699E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1644
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4229E-04 -3.2783E-02 -2.7550E-04  2.6571E-02 -3.7285E-02
 SE:             2.9835E-02  2.3273E-02  1.0489E-04  2.3567E-02  2.2098E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9619E-01  1.5894E-01  8.6241E-03  2.5955E-01  9.1545E-02

 ETASHRINKSD(%)  4.9277E-02  2.2033E+01  9.9649E+01  2.1048E+01  2.5970E+01
 ETASHRINKVR(%)  9.8529E-02  3.9212E+01  9.9999E+01  3.7666E+01  4.5196E+01
 EBVSHRINKSD(%)  4.7288E-01  2.1610E+01  9.9697E+01  2.2152E+01  2.4735E+01
 EBVSHRINKVR(%)  9.4353E-01  3.8550E+01  9.9999E+01  3.9397E+01  4.3352E+01
 RELATIVEINF(%)  9.9034E+01  4.5685E+00  1.1111E-04  4.7957E+00  1.1067E+01
 EPSSHRINKSD(%)  4.4482E+01
 EPSSHRINKVR(%)  6.9177E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1631.5515752051392     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -896.40074864140104     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.07
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.99
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1631.552       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.69E+00  4.74E-01  5.57E-01  1.06E+00  1.02E+00  7.71E-01  1.00E-02  1.49E+00  9.59E-01  1.07E+00
 


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
+        1.10E+03
 
 TH 2
+       -6.68E+00  4.24E+02
 
 TH 3
+        5.29E+00  2.00E+02  4.82E+02
 
 TH 4
+       -1.47E+01  3.15E+02 -3.37E+02  9.92E+02
 
 TH 5
+       -3.65E+00 -2.35E+02 -4.08E+02  2.79E+02  6.07E+02
 
 TH 6
+        6.79E-02 -1.02E+00  1.53E+00 -3.99E+00 -9.37E-01  1.89E+02
 
 TH 7
+        3.26E-01  6.09E+00 -1.86E+01 -1.39E+01 -1.20E+01 -3.43E-01  1.44E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.38E+00 -1.98E+01 -3.33E+01  5.67E+01 -2.43E+00 -3.69E-01  1.62E+01  0.00E+00  4.09E+01
 
 TH10
+       -1.12E-01 -1.71E+01 -4.08E+01 -4.95E+00 -6.33E+01  2.18E-01  1.48E+01  0.00E+00  6.63E+00  8.11E+01
 
 TH11
+       -7.46E+00 -1.79E+01 -2.76E+01  7.82E-01 -3.94E+00  2.71E+00  9.76E+00  0.00E+00  4.12E+00  1.60E+01  1.86E+02
 
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
 #CPUT: Total CPU Time in Seconds,       27.102
Stop Time:
Wed Sep 29 14:40:09 CDT 2021
