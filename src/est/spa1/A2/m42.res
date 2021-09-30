Wed Sep 29 23:20:59 CDT 2021
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
$DATA ../../../../data/spa1/A2/dat42.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1167.35743630089        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9063E+02  6.9450E+01  3.9855E+01  8.3460E+01  7.7229E+01  5.2300E+01 -1.0734E+01 -3.5746E+00 -5.8695E+00 -2.9188E+01
            -1.8759E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1754.89540378497        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0341E+00  9.5806E-01  1.1806E+00  1.0325E+00  1.0087E+00  9.3123E-01  8.3862E-01  7.9246E-01  1.0664E+00  7.2689E-01
             1.9799E+00
 PARAMETER:  1.3350E-01  5.7151E-02  2.6606E-01  1.3196E-01  1.0863E-01  2.8746E-02 -7.5999E-02 -1.3262E-01  1.6431E-01 -2.1898E-01
             7.8304E-01
 GRADIENT:   1.3857E+02  1.9279E+01  3.3367E+01  6.9274E+00 -1.4147E+01 -3.8090E-01  5.1441E+00 -6.9408E-01  6.5387E+00 -1.5061E+01
            -2.0835E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1763.72299662633        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  1.0296E+00  8.3159E-01  8.9473E-01  1.0858E+00  8.7408E-01  9.2859E-01  2.4971E-01  2.9380E-01  1.1550E+00  8.8206E-01
             2.0099E+00
 PARAMETER:  1.2917E-01 -8.4420E-02 -1.1231E-02  1.8228E-01 -3.4580E-02  2.5908E-02 -1.2874E+00 -1.1249E+00  2.4413E-01 -2.5495E-02
             7.9808E-01
 GRADIENT:  -3.3411E+01 -2.2503E+01 -2.6375E+01 -1.4281E+01  4.6809E+01 -1.2501E+01 -9.5868E-03  6.3629E-01  1.9444E+01  1.5476E-01
            -1.6735E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1781.54693386483        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  1.0479E+00  6.2809E-01  9.7194E-01  1.2379E+00  8.0090E-01  9.4346E-01  1.9234E-01  1.9280E-01  9.5431E-01  6.9008E-01
             2.4174E+00
 PARAMETER:  1.4676E-01 -3.6508E-01  7.1534E-02  3.1342E-01 -1.2202E-01  4.1795E-02 -1.5485E+00 -1.5461E+00  5.3232E-02 -2.7094E-01
             9.8268E-01
 GRADIENT:   3.6739E+00  1.3435E+01  1.5724E+01  1.0889E+01 -2.5986E+01 -2.7197E+00  1.5863E-02  2.6205E-01  1.7288E+00  1.0066E+00
             8.5450E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1783.84151935285        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      534
 NPARAMETR:  1.0402E+00  3.0260E-01  8.4351E-01  1.4107E+00  6.4023E-01  9.4626E-01  2.5281E-01  1.8156E-02  8.2472E-01  6.8040E-01
             2.3564E+00
 PARAMETER:  1.3944E-01 -1.0953E+00 -7.0181E-02  4.4406E-01 -3.4593E-01  4.4764E-02 -1.2751E+00 -3.9087E+00 -9.2713E-02 -2.8507E-01
             9.5713E-01
 GRADIENT:   9.8581E-01  1.0426E+01  2.3819E+01  3.1252E+01 -3.7789E+01 -4.4509E-01 -1.0977E-02  3.1565E-03 -4.5740E+00 -1.0298E-01
            -3.8001E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1785.42060611323        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  1.0323E+00  1.4414E-01  6.9574E-01  1.4464E+00  5.3517E-01  9.4922E-01  2.0435E-01  1.0000E-02  8.0419E-01  6.6173E-01
             2.3163E+00
 PARAMETER:  1.3177E-01 -1.8370E+00 -2.6277E-01  4.6909E-01 -5.2517E-01  4.7881E-02 -1.4879E+00 -7.1960E+00 -1.1792E-01 -3.1290E-01
             9.3996E-01
 GRADIENT:  -3.9911E+00  2.3711E+00  9.0155E+00  6.1848E+00 -1.7610E+01  1.4233E+00 -1.8687E-03  0.0000E+00 -4.5640E-01  5.0948E-01
            -2.7939E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1786.09867898552        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  1.0292E+00  3.4022E-02  7.4648E-01  1.5178E+00  5.4669E-01  9.4064E-01  1.1911E-01  1.0000E-02  7.6811E-01  6.7032E-01
             2.3256E+00
 PARAMETER:  1.2882E-01 -3.2807E+00 -1.9239E-01  5.1723E-01 -5.0388E-01  3.8801E-02 -2.0277E+00 -1.3612E+01 -1.6383E-01 -3.0001E-01
             9.4398E-01
 GRADIENT:  -9.6706E-01  3.4339E-01  7.5653E-01  1.1630E+01 -1.8942E+00 -5.0428E-01  1.1249E-05  0.0000E+00 -1.1263E+00 -2.4243E-01
            -4.6190E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1786.26799136436        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  1.0285E+00  1.0000E-02  7.1733E-01  1.5156E+00  5.2753E-01  9.4136E-01  6.2167E-02  1.0000E-02  7.6884E-01  6.6773E-01
             2.3195E+00
 PARAMETER:  1.2806E-01 -4.6108E+00 -2.3222E-01  5.1579E-01 -5.3954E-01  3.9566E-02 -2.6779E+00 -1.9875E+01 -1.6287E-01 -3.0387E-01
             9.4133E-01
 GRADIENT:   3.8635E-01  0.0000E+00  6.2174E-01 -2.1327E-01 -1.0409E+00 -1.6416E-03  3.4546E-07  0.0000E+00  1.5907E-01  3.7224E-02
            -2.5170E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1786.26958328103        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1234
 NPARAMETR:  1.0284E+00  1.0000E-02  7.1717E-01  1.5142E+00  5.2752E-01  9.4135E-01  6.0691E-02  1.0000E-02  7.6846E-01  6.6721E-01
             2.3199E+00
 PARAMETER:  1.2804E-01 -4.6108E+00 -2.3244E-01  5.1487E-01 -5.3958E-01  3.9556E-02 -2.7020E+00 -1.9875E+01 -1.6337E-01 -3.0464E-01
             9.4154E-01
 GRADIENT:   4.0009E-01  0.0000E+00  7.1393E-01 -3.2198E+00 -5.8446E-01  1.3221E-02  3.4804E-07  0.0000E+00  2.7794E-02 -2.0574E-03
            -5.3715E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1234
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.0268E-04 -1.6134E-05  4.4847E-05 -6.8665E-03 -1.1532E-02
 SE:             2.9387E-02  1.0314E-05  2.0253E-04  2.8109E-02  1.9653E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8907E-01  1.1774E-01  8.2475E-01  8.0701E-01  5.5734E-01

 ETASHRINKSD(%)  1.5489E+00  9.9965E+01  9.9322E+01  5.8328E+00  3.4160E+01
 ETASHRINKVR(%)  3.0738E+00  1.0000E+02  9.9995E+01  1.1325E+01  5.6651E+01
 EBVSHRINKSD(%)  1.7070E+00  9.9967E+01  9.9280E+01  5.8123E+00  3.4539E+01
 EBVSHRINKVR(%)  3.3848E+00  1.0000E+02  9.9995E+01  1.1287E+01  5.7149E+01
 RELATIVEINF(%)  8.6010E+01  5.9913E-07  2.9908E-04  8.1747E+00  1.7314E+00
 EPSSHRINKSD(%)  2.5278E+01
 EPSSHRINKVR(%)  4.4166E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1786.2695832810332     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -867.33105007636050     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.20
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.28
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1786.270       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.00E-02  7.17E-01  1.51E+00  5.28E-01  9.41E-01  6.07E-02  1.00E-02  7.68E-01  6.67E-01  2.32E+00
 


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
+        1.15E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -2.29E+01  0.00E+00  1.08E+03
 
 TH 4
+       -2.94E+01  0.00E+00 -1.43E+02  7.29E+02
 
 TH 5
+        5.32E+01  0.00E+00 -1.92E+03 -1.51E+02  3.79E+03
 
 TH 6
+        1.11E+00  0.00E+00  3.53E+00 -7.12E+00  9.20E-01  2.09E+02
 
 TH 7
+       -1.40E-02  0.00E+00  3.49E-02 -4.45E-03 -2.78E-02  2.78E-03 -2.07E-02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        6.72E+00  0.00E+00  3.08E+01 -8.78E+00  7.86E+00  4.81E-01  3.86E-02  0.00E+00  2.64E+02
 
 TH10
+       -2.80E+00  0.00E+00 -2.06E+01  4.26E+00 -1.16E+01  9.09E-01 -1.35E-02  0.00E+00 -1.44E+00  8.23E+01
 
 TH11
+       -1.39E+01  0.00E+00 -5.65E+00 -1.20E+01 -1.23E+01  2.45E+00 -2.08E-03  0.00E+00  1.05E+01  3.05E+01  8.89E+01
 
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
 #CPUT: Total CPU Time in Seconds,       25.546
Stop Time:
Wed Sep 29 23:21:26 CDT 2021
