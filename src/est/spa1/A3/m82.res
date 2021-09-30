Thu Sep 30 00:35:37 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat82.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -470.057351256790        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3661E+02  5.1917E+01  1.1644E+02  4.2459E+01  3.0680E+02  8.2597E+01 -9.5860E+01 -1.3708E+02 -6.4591E+01 -2.0822E+02
            -2.7360E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1476.98350757108        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  9.8999E-01  9.2351E-01  1.1408E+00  1.1592E+00  9.9112E-01  7.7256E-01  1.0681E+00  5.4373E-01  1.1529E+00  1.1428E+00
             1.9600E+00
 PARAMETER:  8.9936E-02  2.0426E-02  2.3172E-01  2.4775E-01  9.1077E-02 -1.5804E-01  1.6585E-01 -5.0929E-01  2.4230E-01  2.3348E-01
             7.7297E-01
 GRADIENT:   1.0635E+02  4.7934E+01 -1.2534E+01  1.4403E+02  1.1077E+02 -1.5120E+01 -1.3083E+01  9.9486E-01  5.6530E+00 -5.6862E+01
            -5.3464E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1586.84405541768        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      164
 NPARAMETR:  9.8749E-01  4.7417E-01  2.7092E-01  1.2489E+00  3.2918E-01  9.0567E-01  1.0409E-01  1.0000E-02  1.3704E+00  5.6816E-01
             2.6036E+00
 PARAMETER:  8.7412E-02 -6.4618E-01 -1.2059E+00  3.2229E-01 -1.0112E+00  9.1778E-04 -2.1625E+00 -5.3941E+00  4.1511E-01 -4.6536E-01
             1.0569E+00
 GRADIENT:   9.8958E+00 -3.9688E+01 -9.1102E+01  1.4748E+02  2.8520E+02  3.0438E+01 -3.3419E-01  0.0000E+00  4.3994E+01 -6.1572E+01
            -5.5978E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1609.87726319594        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      344
 NPARAMETR:  1.0188E+00  4.7673E-01  2.1482E-01  1.1954E+00  2.8974E-01  8.0349E-01  1.0372E-01  1.0000E-02  1.3828E+00  7.8674E-01
             2.7296E+00
 PARAMETER:  1.1864E-01 -6.4081E-01 -1.4379E+00  2.7851E-01 -1.1388E+00 -1.1878E-01 -2.1660E+00 -6.3752E+00  4.2410E-01 -1.3986E-01
             1.1042E+00
 GRADIENT:   3.3848E+01 -2.7121E+01 -7.1429E+01  1.1656E+02  1.4870E+02 -1.2261E+01 -7.9773E-02  0.0000E+00  2.6808E+01 -9.0572E+00
             4.0986E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1635.53303197047        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      519
 NPARAMETR:  1.0083E+00  3.6980E-01  1.5124E-01  1.0128E+00  2.0489E-01  8.2754E-01  5.5235E-01  1.0000E-02  1.4073E+00  7.9622E-01
             2.5506E+00
 PARAMETER:  1.0830E-01 -8.9480E-01 -1.7889E+00  1.1275E-01 -1.4853E+00 -8.9302E-02 -4.9358E-01 -7.0007E+00  4.4164E-01 -1.2788E-01
             1.0363E+00
 GRADIENT:   3.0304E+00  2.9350E+01  4.5370E+01  3.4800E+01 -7.0808E+01 -2.4021E+00  6.8131E-01  0.0000E+00  2.4940E+01  4.6494E+00
             2.1854E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1642.30897639848        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      694
 NPARAMETR:  1.0056E+00  3.0041E-01  1.0645E-01  8.7134E-01  1.7001E-01  8.3043E-01  5.5945E-01  1.0000E-02  1.4937E+00  7.8390E-01
             2.4648E+00
 PARAMETER:  1.0561E-01 -1.1026E+00 -2.1401E+00 -3.7724E-02 -1.6719E+00 -8.5817E-02 -4.8080E-01 -7.5014E+00  5.0126E-01 -1.4347E-01
             1.0021E+00
 GRADIENT:   3.1667E+00 -9.6965E-01 -2.9799E+00  3.3976E+00  4.6315E+00 -1.5470E-01  1.2500E+00  0.0000E+00  5.0643E+00 -1.0849E+00
             5.5091E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1642.87843022628        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      870
 NPARAMETR:  1.0050E+00  3.0434E-01  1.0911E-01  8.7270E-01  1.7217E-01  8.3069E-01  1.8542E-01  1.0000E-02  1.4335E+00  8.0261E-01
             2.4653E+00
 PARAMETER:  1.0499E-01 -1.0896E+00 -2.1154E+00 -3.6160E-02 -1.6593E+00 -8.5496E-02 -1.5851E+00 -7.2280E+00  4.6011E-01 -1.1988E-01
             1.0023E+00
 GRADIENT:  -1.7554E-01  6.5248E-01  3.5479E-01 -2.2811E-01 -9.8493E-01  1.2729E-01  8.4561E-02  0.0000E+00 -6.7891E-01  5.8861E-01
            -1.9740E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1642.92058429142        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1045
 NPARAMETR:  1.0051E+00  3.0309E-01  1.0854E-01  8.7114E-01  1.7166E-01  8.3005E-01  3.4689E-02  1.0000E-02  1.4389E+00  8.0212E-01
             2.4740E+00
 PARAMETER:  1.0507E-01 -1.0937E+00 -2.1206E+00 -3.7947E-02 -1.6623E+00 -8.6274E-02 -3.2613E+00 -6.8985E+00  4.6386E-01 -1.2049E-01
             1.0058E+00
 GRADIENT:  -1.6280E-01 -3.0698E-02 -3.3820E-02  7.3743E-02 -2.1074E-01 -5.1210E-02  2.8464E-03  0.0000E+00 -1.3817E-01  4.5991E-02
             3.0213E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1642.92255902097        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1225             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0052E+00  3.0348E-01  1.0863E-01  8.7145E-01  1.7183E-01  8.3020E-01  1.0000E-02  1.0000E-02  1.4399E+00  8.0214E-01
             2.4730E+00
 PARAMETER:  1.0515E-01 -1.0924E+00 -2.1198E+00 -3.7593E-02 -1.6612E+00 -8.6092E-02 -4.6009E+00 -6.6093E+00  4.6456E-01 -1.2047E-01
             1.0054E+00
 GRADIENT:   4.6133E+01  1.1992E+01  3.9832E+01  6.7490E+00  2.4359E+02  2.6373E+00  0.0000E+00  0.0000E+00  7.1734E+00  9.6437E-01
             1.0049E+01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1642.92255902097        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1282
 NPARAMETR:  1.0052E+00  3.0348E-01  1.0863E-01  8.7145E-01  1.7183E-01  8.3020E-01  1.0000E-02  1.0000E-02  1.4399E+00  8.0214E-01
             2.4730E+00
 PARAMETER:  1.0515E-01 -1.0924E+00 -2.1198E+00 -3.7593E-02 -1.6612E+00 -8.6092E-02 -4.6009E+00 -6.6093E+00  4.6456E-01 -1.2047E-01
             1.0054E+00
 GRADIENT:   1.9960E-01 -1.5035E-02 -3.1660E-01 -3.9446E-02  6.9312E-01 -8.8297E-03  0.0000E+00  0.0000E+00  8.4781E-02  1.7276E-02
            -4.9435E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1282
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.4928E-04 -3.4900E-05  3.2434E-04 -1.0812E-02  3.5600E-03
 SE:             2.9036E-02  1.4591E-04  1.9294E-04  2.5866E-02  2.7192E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8216E-01  8.1096E-01  9.2755E-02  6.7596E-01  8.9584E-01

 ETASHRINKSD(%)  2.7262E+00  9.9511E+01  9.9354E+01  1.3345E+01  8.9030E+00
 ETASHRINKVR(%)  5.3781E+00  9.9998E+01  9.9996E+01  2.4909E+01  1.7013E+01
 EBVSHRINKSD(%)  2.7285E+00  9.9503E+01  9.9411E+01  9.7184E+00  9.7202E+00
 EBVSHRINKVR(%)  5.3825E+00  9.9998E+01  9.9997E+01  1.8492E+01  1.8496E+01
 RELATIVEINF(%)  9.4469E+01  6.3897E-04  4.0299E-04  2.8671E+01  6.4546E+00
 EPSSHRINKSD(%)  2.8416E+01
 EPSSHRINKVR(%)  4.8757E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1642.9225590209708     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -723.98402581629807     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.94
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.42
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1642.923       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  3.03E-01  1.09E-01  8.71E-01  1.72E-01  8.30E-01  1.00E-02  1.00E-02  1.44E+00  8.02E-01  2.47E+00
 


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
+        1.51E+03
 
 TH 2
+       -5.01E+00  2.93E+03
 
 TH 3
+       -1.85E+02  2.57E+03  3.27E+04
 
 TH 4
+       -3.82E+00 -8.29E+01 -1.38E+03  5.80E+02
 
 TH 5
+        2.09E+02 -7.45E+03 -2.98E+04 -4.43E+02  4.80E+04
 
 TH 6
+        2.75E+00 -2.38E+01  2.97E+01 -8.41E+00  1.22E+00  2.57E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.15E+01 -2.84E+01  4.02E+02 -1.78E+01  4.66E+01 -6.03E-01  0.00E+00  0.00E+00  5.61E+01
 
 TH10
+       -1.28E+00 -2.36E+01  2.80E+01  1.29E+01 -2.60E+00  3.60E+00  0.00E+00  0.00E+00  3.97E+00  2.08E+02
 
 TH11
+       -2.40E+01  7.64E+00 -2.02E+01 -2.76E+00  6.35E+01  3.90E+00  0.00E+00  0.00E+00  7.21E+00  1.11E+01  7.31E+01
 
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
 #CPUT: Total CPU Time in Seconds,       26.430
Stop Time:
Thu Sep 30 00:36:04 CDT 2021
