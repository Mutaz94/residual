Sat Sep 18 11:28:16 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat6.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1692.22230413027        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9592E+01 -9.1505E+01 -8.9420E+01 -1.8716E+01  1.3542E+02  6.1537E+00  1.5154E+00  1.3264E+01  1.7587E+00  5.6653E+00
             2.7682E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1705.64149572252        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      111
 NPARAMETR:  9.9595E-01  1.0492E+00  1.1867E+00  1.0065E+00  9.7473E-01  9.8453E-01  9.2429E-01  8.8998E-01  1.0441E+00  9.1838E-01
             9.5958E-01
 PARAMETER:  9.5937E-02  1.4804E-01  2.7121E-01  1.0647E-01  7.4402E-02  8.4412E-02  2.1267E-02 -1.6555E-02  1.4315E-01  1.4860E-02
             5.8739E-02
 GRADIENT:  -1.0824E+01  1.4154E+00  7.6341E+00 -5.1062E+00 -8.3557E+00 -5.0978E+00  4.8227E+00  2.9879E+00  7.2351E-01 -8.9175E+00
             7.8789E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1707.49427292112        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      287
 NPARAMETR:  9.9812E-01  1.1599E+00  1.1192E+00  9.4257E-01  9.9468E-01  9.7502E-01  5.4107E-01  6.1819E-01  1.1770E+00  1.1040E+00
             9.2657E-01
 PARAMETER:  9.8115E-02  2.4836E-01  2.1266E-01  4.0858E-02  9.4670E-02  7.4702E-02 -5.1420E-01 -3.8096E-01  2.6300E-01  1.9891E-01
             2.3739E-02
 GRADIENT:  -7.4871E+00  2.4733E+01  5.4573E+00  1.9766E+01 -2.7859E+01 -9.6257E+00 -1.8824E-01 -2.1443E-01 -6.8767E+00  9.7642E+00
            -4.2669E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1709.04398486416        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      463
 NPARAMETR:  1.0026E+00  1.3364E+00  1.1102E+00  8.0686E-01  1.0802E+00  1.0010E+00  3.4176E-01  7.6254E-01  1.4159E+00  1.1051E+00
             9.3623E-01
 PARAMETER:  1.0256E-01  3.9001E-01  2.0457E-01 -1.1461E-01  1.7719E-01  1.0096E-01 -9.7365E-01 -1.7110E-01  4.4777E-01  1.9992E-01
             3.4108E-02
 GRADIENT:   1.7911E+00  9.0221E+00  5.6333E-02  4.8335E+00 -3.9451E-01  9.2991E-01 -9.9666E-01 -4.8723E-01 -3.6828E+00 -2.2364E+00
             3.5682E-03

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1709.19970409995        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      639
 NPARAMETR:  1.0018E+00  1.3897E+00  1.0820E+00  7.6921E-01  1.0924E+00  9.9725E-01  4.2570E-01  7.8574E-01  1.4577E+00  1.1148E+00
             9.3423E-01
 PARAMETER:  1.0177E-01  4.2906E-01  1.7879E-01 -1.6240E-01  1.8839E-01  9.7247E-02 -7.5402E-01 -1.4113E-01  4.7683E-01  2.0864E-01
             3.1972E-02
 GRADIENT:  -8.3016E-02 -2.3519E+00  1.0644E+00 -1.1434E+00 -3.2431E+00 -5.5972E-01  1.4801E-01  2.2220E-01  1.0626E+00  9.2531E-01
            -4.3490E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1709.82682043181        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      817
 NPARAMETR:  1.0032E+00  1.6357E+00  7.7045E-01  6.1783E-01  1.0994E+00  1.0017E+00  6.2265E-01  4.0295E-01  1.5639E+00  1.0409E+00
             9.3492E-01
 PARAMETER:  1.0320E-01  5.9210E-01 -1.6078E-01 -3.8155E-01  1.9473E-01  1.0168E-01 -3.7377E-01 -8.0895E-01  5.4715E-01  1.4009E-01
             3.2706E-02
 GRADIENT:   2.9690E-01  9.2107E+00 -1.7597E+00  6.0502E+00 -1.5341E+00  7.9770E-01  1.3448E-01  5.9594E-01 -1.1224E+00  6.4865E-01
             5.7480E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1710.07857594539        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  1.0032E+00  1.7402E+00  7.1375E-01  5.3977E-01  1.1357E+00  9.9971E-01  6.0163E-01  2.0341E-01  1.7330E+00  1.0598E+00
             9.3435E-01
 PARAMETER:  1.0318E-01  6.5399E-01 -2.3723E-01 -5.1660E-01  2.2722E-01  9.9707E-02 -4.0811E-01 -1.4925E+00  6.4987E-01  1.5804E-01
             3.2098E-02
 GRADIENT:   1.6581E-01  1.1422E+00 -5.9601E-02 -2.0977E-01  2.2907E-01  2.5037E-02 -9.3630E-02  1.2674E-01 -1.0635E-01  1.4540E-01
             4.8871E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1710.14906893188        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1170
 NPARAMETR:  1.0031E+00  1.6967E+00  7.2529E-01  5.6980E-01  1.1165E+00  9.9999E-01  6.1449E-01  7.4637E-02  1.6627E+00  1.0477E+00
             9.3392E-01
 PARAMETER:  1.0313E-01  6.2869E-01 -2.2118E-01 -4.6247E-01  2.1023E-01  9.9988E-02 -3.8696E-01 -2.4951E+00  6.0845E-01  1.4661E-01
             3.1640E-02
 GRADIENT:   8.5527E-02  2.3697E-01 -3.2615E-01  5.8637E-01 -5.0078E-01  1.1176E-01  1.4487E-01  1.6983E-02  2.5834E-01  3.9597E-01
             1.2887E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1710.15892029706        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1345
 NPARAMETR:  1.0031E+00  1.7081E+00  7.2074E-01  5.6158E-01  1.1213E+00  9.9970E-01  6.1182E-01  1.0000E-02  1.6792E+00  1.0487E+00
             9.3388E-01
 PARAMETER:  1.0310E-01  6.3538E-01 -2.2748E-01 -4.7700E-01  2.1445E-01  9.9703E-02 -3.9132E-01 -4.6215E+00  6.1830E-01  1.4759E-01
             3.1592E-02
 GRADIENT:  -7.9600E-03  1.0548E-02 -4.4148E-02  4.1379E-02  6.9841E-02  3.9676E-03 -4.7498E-03  0.0000E+00  1.3237E-02 -1.3220E-02
            -8.5336E-03

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1710.15900227031        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:     1486
 NPARAMETR:  1.0031E+00  1.7067E+00  7.2189E-01  5.6248E-01  1.1208E+00  9.9970E-01  6.1192E-01  1.0000E-02  1.6772E+00  1.0488E+00
             9.3388E-01
 PARAMETER:  1.0310E-01  6.3455E-01 -2.2611E-01 -4.7541E-01  2.1419E-01  9.9694E-02 -3.9118E-01 -4.6099E+00  6.1725E-01  1.4772E-01
             3.1624E-02
 GRADIENT:  -7.9295E-03 -6.2105E-02 -1.6683E-02 -7.5633E-03  1.0270E-01 -2.2966E-03 -1.0924E-03  0.0000E+00  1.6083E-02  1.2139E-02
             1.0406E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1486
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2951E-04 -4.3417E-02 -2.3292E-04  2.5219E-02 -3.3447E-02
 SE:             2.9861E-02  1.9058E-02  1.0164E-04  2.4592E-02  2.4522E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9654E-01  2.2716E-02  2.1934E-02  3.0513E-01  1.7259E-01

 ETASHRINKSD(%)  1.0000E-10  3.6154E+01  9.9659E+01  1.7612E+01  1.7847E+01
 ETASHRINKVR(%)  1.0000E-10  5.9237E+01  9.9999E+01  3.2122E+01  3.2509E+01
 EBVSHRINKSD(%)  3.8709E-01  3.5180E+01  9.9700E+01  1.8214E+01  1.5943E+01
 EBVSHRINKVR(%)  7.7268E-01  5.7983E+01  9.9999E+01  3.3111E+01  2.9345E+01
 RELATIVEINF(%)  9.9180E+01  3.4790E+00  2.1048E-04  6.8750E+00  2.0610E+01
 EPSSHRINKSD(%)  4.4305E+01
 EPSSHRINKVR(%)  6.8981E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1710.1590022703090     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -975.00817570657080     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.03
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.86
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1710.159       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.71E+00  7.22E-01  5.62E-01  1.12E+00  1.00E+00  6.12E-01  1.00E-02  1.68E+00  1.05E+00  9.34E-01
 


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
+       -6.37E+00  4.65E+02
 
 TH 3
+        3.29E+00  1.41E+02  2.17E+02
 
 TH 4
+       -1.04E+01  4.06E+02 -1.04E+02  8.46E+02
 
 TH 5
+       -2.82E+00 -2.20E+02 -2.24E+02  1.19E+02  5.68E+02
 
 TH 6
+        5.06E-01 -1.04E+00  1.42E+00 -3.14E+00 -8.18E-01  2.03E+02
 
 TH 7
+        2.54E+00 -2.44E+01  1.54E+01 -2.37E+01 -2.75E+01 -6.95E-01  1.02E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.35E+00 -2.63E+01 -1.63E+01  4.56E+01  2.49E+00 -2.75E-01  2.56E+01  0.00E+00  3.56E+01
 
 TH10
+       -4.64E-01 -1.57E+01 -3.30E+01 -2.57E+00 -5.03E+01  1.95E+00  2.45E+01  0.00E+00  2.08E+00  9.35E+01
 
 TH11
+       -9.84E+00 -2.22E+01 -2.48E+01 -5.79E-01  6.78E+00 -2.39E-01  9.34E+00  0.00E+00  4.20E+00  1.57E+01  2.56E+02
 
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
 #CPUT: Total CPU Time in Seconds,       23.943
Stop Time:
Sat Sep 18 11:28:42 CDT 2021