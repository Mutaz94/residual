Wed Sep 29 14:52:31 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat15.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m15.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1697.70505663353        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.2916E+02 -7.6499E+01 -4.7586E+01 -3.2596E+01  1.2321E+02  6.9504E+01 -7.7500E+00 -3.6664E+00 -2.4750E+01 -8.1709E-02
             3.3518E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1713.77037985745        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0330E+00  1.0503E+00  1.0195E+00  1.0428E+00  9.1751E-01  8.5121E-01  1.0224E+00  1.0424E+00  1.1336E+00  9.4542E-01
             8.7808E-01
 PARAMETER:  1.3244E-01  1.4909E-01  1.1933E-01  1.4195E-01  1.3909E-02 -6.1091E-02  1.2217E-01  1.4156E-01  2.2536E-01  4.3871E-02
            -3.0019E-02
 GRADIENT:  -3.3190E+01  1.9291E+00  1.2503E+01 -3.6721E+00 -2.2149E+01 -2.2582E+01  1.2987E+00 -6.8634E+00  5.1773E+00  5.9421E+00
            -1.8490E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1714.87147854729        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.0386E+00  1.4290E+00  9.7962E-01  8.4517E-01  1.0159E+00  8.8405E-01  8.8876E-01  1.7024E+00  1.3641E+00  8.9261E-01
             9.0010E-01
 PARAMETER:  1.3787E-01  4.5698E-01  7.9410E-02 -6.8215E-02  1.1574E-01 -2.3242E-02 -1.7929E-02  6.3202E-01  4.1053E-01 -1.3610E-02
            -5.2449E-03
 GRADIENT:  -1.8473E+01  5.6582E+01  1.3800E+01  3.4425E+01 -5.2447E+01 -6.6418E+00  6.8863E+00  3.2105E+00  7.7699E+00 -7.3985E-01
            -8.0640E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1717.78860669045        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      546
 NPARAMETR:  1.0470E+00  1.4922E+00  9.5607E-01  7.7495E-01  1.0830E+00  9.0409E-01  7.4612E-01  1.6284E+00  1.4124E+00  9.9561E-01
             9.1370E-01
 PARAMETER:  1.4589E-01  5.0028E-01  5.5073E-02 -1.5496E-01  1.7971E-01 -8.3148E-04 -1.9287E-01  5.8762E-01  4.4529E-01  9.5601E-02
             9.7484E-03
 GRADIENT:   3.8586E+00  1.8692E+01  4.1766E+00  1.3807E+01 -7.6339E+00  2.4869E+00 -2.4781E+00 -1.5846E+00 -2.6366E+00  2.6410E+00
            -1.9721E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1718.74678050680        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      724
 NPARAMETR:  1.0446E+00  1.8250E+00  6.0536E-01  5.5424E-01  1.1053E+00  8.9315E-01  7.5017E-01  1.4746E+00  1.7363E+00  9.4322E-01
             9.2369E-01
 PARAMETER:  1.4365E-01  7.0159E-01 -4.0194E-01 -4.9015E-01  2.0015E-01 -1.3005E-02 -1.8746E-01  4.8839E-01  6.5173E-01  4.1539E-02
             2.0621E-02
 GRADIENT:  -5.1771E+00  3.5790E+01  5.8262E+00  1.4034E+01 -1.7454E+01 -2.7516E+00 -2.3972E-01 -1.0429E+00  1.0945E+00 -1.7507E+00
             1.4299E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1719.12209561297        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      863
 NPARAMETR:  1.0450E+00  1.8386E+00  5.8396E-01  5.3692E-01  1.1325E+00  9.0095E-01  7.4754E-01  1.4525E+00  1.7494E+00  9.6861E-01
             9.1776E-01
 PARAMETER:  1.4405E-01  7.0901E-01 -4.3792E-01 -5.2190E-01  2.2438E-01 -4.3043E-03 -1.9097E-01  4.7331E-01  6.5926E-01  6.8106E-02
             1.4179E-02
 GRADIENT:   7.4356E+02  9.5629E+02  2.0985E+00  1.2402E+02  2.8712E+01  3.7951E+01  1.4570E+01  1.8048E-01  3.5846E+01 -3.8486E-01
            -8.8010E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1719.17532547608        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1040
 NPARAMETR:  1.0461E+00  1.8386E+00  5.8395E-01  5.3692E-01  1.1238E+00  9.0021E-01  7.4608E-01  1.4526E+00  1.7530E+00  9.6955E-01
             9.1910E-01
 PARAMETER:  1.4511E-01  7.0899E-01 -4.3794E-01 -5.2191E-01  2.1670E-01 -5.1237E-03 -1.9292E-01  4.7333E-01  6.6132E-01  6.9072E-02
             1.5638E-02
 GRADIENT:  -9.1580E-01  1.3275E+01  7.9755E-01  1.1472E+01  1.2331E-01  3.2253E-01 -1.0475E-01 -5.6770E-01 -1.7551E-01  2.0167E-01
            -1.4328E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1719.34439526363        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1178
 NPARAMETR:  1.0438E+00  1.8255E+00  5.8348E-01  5.3025E-01  1.1224E+00  8.9885E-01  7.4497E-01  1.4664E+00  1.7496E+00  9.6783E-01
             9.1892E-01
 PARAMETER:  1.4290E-01  7.0185E-01 -4.3875E-01 -5.3440E-01  2.1551E-01 -6.6368E-03 -1.9442E-01  4.8284E-01  6.5942E-01  6.7298E-02
             1.5446E-02
 GRADIENT:  -6.7316E+00 -1.0673E+01  3.5747E-01  1.6998E+00  1.5509E+00 -2.4070E-01  6.6388E-02 -2.0347E-01 -5.9088E-01  5.4157E-01
             1.4416E-01

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1719.37993963927        NO. OF FUNC. EVALS.: 132
 CUMULATIVE NO. OF FUNC. EVALS.:     1310
 NPARAMETR:  1.0482E+00  1.8288E+00  5.7933E-01  5.2795E-01  1.1206E+00  8.9963E-01  7.4465E-01  1.4629E+00  1.7594E+00  9.6201E-01
             9.1870E-01
 PARAMETER:  1.4712E-01  7.0368E-01 -4.4589E-01 -5.3876E-01  2.1390E-01 -5.7714E-03 -1.9484E-01  4.8043E-01  6.6499E-01  6.1268E-02
             1.5202E-02
 GRADIENT:   6.9509E-01  7.6509E+03 -1.2058E+04  4.9941E+03 -1.3536E-02  5.4477E-02  3.7752E-02  1.1139E+04 -2.4724E-01 -5.3854E+04
            -5.3868E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1310
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6612E-04 -4.1836E-02 -2.7427E-02  3.1605E-02 -4.8312E-02
 SE:             2.9857E-02  2.2277E-02  1.1074E-02  2.3426E-02  2.1498E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9289E-01  6.0382E-02  1.3258E-02  1.7729E-01  2.4622E-02

 ETASHRINKSD(%)  1.0000E-10  2.5369E+01  6.2902E+01  2.1520E+01  2.7979E+01
 ETASHRINKVR(%)  1.0000E-10  4.4303E+01  8.6237E+01  3.8409E+01  4.8130E+01
 EBVSHRINKSD(%)  4.6866E-01  2.4804E+01  6.5364E+01  2.2158E+01  2.5567E+01
 EBVSHRINKVR(%)  9.3513E-01  4.3456E+01  8.8004E+01  3.9406E+01  4.4597E+01
 RELATIVEINF(%)  9.9047E+01  4.2145E+00  1.3769E+00  4.9210E+00  1.6398E+01
 EPSSHRINKSD(%)  4.6362E+01
 EPSSHRINKVR(%)  7.1230E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1719.3799396392722     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -984.22911307553397     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.33
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
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
 





 #OBJV:********************************************    -1719.380       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.83E+00  5.79E-01  5.28E-01  1.12E+00  9.00E-01  7.45E-01  1.46E+00  1.76E+00  9.62E-01  9.19E-01
 


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
+        5.66E+06
 
 TH 2
+        4.30E+01  8.16E+04
 
 TH 3
+       -2.38E+02 -4.04E+05  2.01E+06
 
 TH 4
+        2.08E+02 -4.77E+02  3.67E+03  1.66E+06
 
 TH 5
+        3.64E+06 -1.18E+02 -4.83E+02  4.14E+02  5.50E+02
 
 TH 6
+        9.70E+06  5.57E+01 -2.81E+02  2.54E+02 -8.42E-01  2.42E+02
 
 TH 7
+        6.02E+06  3.71E+01 -2.00E+02  1.71E+02 -1.32E+01 -5.74E-01  6.40E+06
 
 TH 8
+        8.88E+01 -2.08E+02  2.29E+03 -1.40E+03  9.82E+01  1.03E+02  7.92E+01  2.69E+05
 
 TH 9
+        7.49E+05 -5.86E+02  2.81E+03 -2.52E+03 -7.01E+00 -1.82E-01  1.25E+01 -1.02E+03  3.09E+01
 
 TH10
+        9.07E+06  2.52E+01 -1.92E+02  1.52E+02 -7.84E+02 -7.58E+02 -5.16E+02  6.87E+01  7.60E+03  1.45E+07
 
 TH11
+       -6.90E+02 -5.60E+02  2.72E+03 -2.48E+03 -7.53E+02 -7.89E+02 -5.49E+02 -9.97E+02  7.97E+03 -4.81E+02  1.60E+07
 
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
 #CPUT: Total CPU Time in Seconds,       23.613
Stop Time:
Wed Sep 29 14:52:56 CDT 2021
