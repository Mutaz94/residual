Wed Sep 29 04:49:08 CDT 2021
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
$DATA ../../../../data/int/SL3/dat85.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      984
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

 TOT. NO. OF OBS RECS:      884
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
 RAW OUTPUT FILE (FILE): m85.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -596.007692252374        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7105E+02  6.9912E+01  1.5149E+02  1.1058E+02  2.1143E+02  6.4992E+01 -1.2707E+02 -2.5153E+02 -9.0940E+01 -2.3617E+01
            -5.8993E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2697.48356698252        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0463E+00  1.2276E+00  1.0542E+00  9.4432E-01  1.0516E+00  8.3233E-01  1.2811E+00  9.0200E-01  1.1128E+00  9.0591E-01
             2.6247E+00
 PARAMETER:  1.4522E-01  3.0505E-01  1.5281E-01  4.2705E-02  1.5030E-01 -8.3531E-02  3.4772E-01 -3.1397E-03  2.0689E-01  1.1825E-03
             1.0650E+00
 GRADIENT:   2.5547E+02  7.7263E+01 -2.2971E+00  3.9352E+01 -1.6091E+01 -4.4470E+01  1.8609E+01  7.9352E+00  3.6765E+00 -2.7789E+00
            -3.4231E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2702.57378828189        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0356E+00  1.1341E+00  8.8386E-01  9.8335E-01  9.5901E-01  9.0062E-01  1.3888E+00  3.1913E-01  1.0551E+00  7.8230E-01
             2.6566E+00
 PARAMETER:  1.3494E-01  2.2586E-01 -2.3461E-02  8.3210E-02  5.8151E-02 -4.6773E-03  4.2842E-01 -1.0421E+00  1.5367E-01 -1.4552E-01
             1.0771E+00
 GRADIENT:   1.9518E+02  5.3581E+01 -2.5133E+01  3.8666E+01  2.3513E+01 -8.4160E+00  2.4406E+01  1.5995E+00 -4.6116E+00 -3.3516E+00
             2.0868E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2708.52953741811        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0019E+00  1.1705E+00  1.0043E+00  9.4018E-01  1.0325E+00  9.0408E-01  1.1560E+00  2.4739E-01  1.0837E+00  9.6767E-01
             2.6534E+00
 PARAMETER:  1.0194E-01  2.5747E-01  1.0431E-01  3.8314E-02  1.3198E-01 -8.3736E-04  2.4500E-01 -1.2968E+00  1.8034E-01  6.7140E-02
             1.0758E+00
 GRADIENT:   8.9321E+01  2.5774E+01 -3.2098E+00  1.0735E+01 -4.2329E-01 -1.7057E+00  9.9267E-01  7.1436E-01 -1.3340E+00  3.8610E+00
             2.7235E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2711.51540516132        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      389
 NPARAMETR:  9.8308E-01  1.5031E+00  1.2777E+00  7.7720E-01  1.3594E+00  9.4176E-01  9.8204E-01  2.1634E-01  1.2560E+00  1.2214E+00
             2.6319E+00
 PARAMETER:  8.2940E-02  5.0753E-01  3.4506E-01 -1.5205E-01  4.0703E-01  3.9991E-02  8.1877E-02 -1.4309E+00  3.2791E-01  3.0000E-01
             1.0677E+00
 GRADIENT:  -2.1498E+01  1.5964E+01  4.4026E-01  3.1867E+01  1.1997E+01  6.3962E+00  2.0462E+00  7.9589E-02 -1.0585E+00  1.4403E+00
            -2.6336E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2715.03170532961        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      565
 NPARAMETR:  9.9401E-01  1.8821E+00  1.0877E+00  5.0181E-01  1.5812E+00  9.2228E-01  7.7557E-01  6.1294E-02  1.7679E+00  1.3796E+00
             2.6208E+00
 PARAMETER:  9.3993E-02  7.3240E-01  1.8410E-01 -5.8954E-01  5.5821E-01  1.9098E-02 -1.5416E-01 -2.6921E+00  6.6981E-01  4.2177E-01
             1.0635E+00
 GRADIENT:   5.8323E+00  1.8032E+00  3.3025E+00  1.4060E+00 -6.7070E+00 -1.0005E+00 -2.1116E+00  4.2802E-03  6.4144E-01 -1.2228E+00
            -1.5269E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2715.63000794479        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      740
 NPARAMETR:  9.9122E-01  2.1224E+00  8.2115E-01  3.4126E-01  1.7285E+00  9.2632E-01  7.4320E-01  1.4468E-02  2.2295E+00  1.4668E+00
             2.6180E+00
 PARAMETER:  9.1182E-02  8.5256E-01 -9.7047E-02 -9.7511E-01  6.4726E-01  2.3470E-02 -1.9679E-01 -4.1358E+00  9.0180E-01  4.8307E-01
             1.0624E+00
 GRADIENT:  -1.8022E+00  1.3094E+00  1.6759E-01  6.5476E-01 -7.9671E-02  3.5921E-01  1.0544E-01  3.6663E-04  2.0810E-01  3.0445E-02
             7.0066E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2715.63413094781        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      928
 NPARAMETR:  9.9201E-01  2.1201E+00  8.1563E-01  3.4072E-01  1.7274E+00  9.2545E-01  7.4278E-01  1.0000E-02  2.2288E+00  1.4665E+00
             2.6171E+00
 PARAMETER:  9.1973E-02  8.5148E-01 -1.0379E-01 -9.7668E-01  6.4660E-01  2.2524E-02 -1.9736E-01 -5.1646E+00  9.0148E-01  4.8289E-01
             1.0621E+00
 GRADIENT:   2.6145E-01 -2.4144E+00 -7.7437E-02 -4.7567E-02  1.4794E-01  2.9998E-02  7.6807E-02  0.0000E+00  1.5300E-01  1.0647E-01
             3.4159E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -2715.63421728125        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  9.9206E-01  2.1184E+00  8.1732E-01  3.4102E-01  1.7260E+00  9.2549E-01  7.4239E-01  1.0000E-02  2.2276E+00  1.4659E+00
             2.6170E+00
 PARAMETER:  9.2030E-02  8.5068E-01 -1.0173E-01 -9.7583E-01  6.4581E-01  2.2564E-02 -1.9787E-01 -5.1646E+00  9.0091E-01  4.8250E-01
             1.0620E+00
 GRADIENT:   4.4395E-01 -3.5490E+00 -1.4569E-02 -4.3680E-01 -2.1174E-01  5.4453E-02  2.0656E-02  0.0000E+00  1.1097E-01  7.9308E-02
             5.4581E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1061
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6014E-03 -3.5518E-02 -4.6827E-05  3.3889E-02 -2.5519E-02
 SE:             2.9358E-02  2.2863E-02  3.6870E-05  2.0596E-02  2.5651E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5650E-01  1.2029E-01  2.0406E-01  9.9890E-02  3.1982E-01

 ETASHRINKSD(%)  1.6457E+00  2.3407E+01  9.9876E+01  3.1000E+01  1.4065E+01
 ETASHRINKVR(%)  3.2644E+00  4.1335E+01  1.0000E+02  5.2389E+01  2.6152E+01
 EBVSHRINKSD(%)  1.8251E+00  2.1435E+01  9.9861E+01  3.5821E+01  1.2181E+01
 EBVSHRINKVR(%)  3.6170E+00  3.8275E+01  1.0000E+02  5.8811E+01  2.2877E+01
 RELATIVEINF(%)  9.6326E+01  1.0260E+01  1.1400E-04  6.8893E+00  3.5039E+01
 EPSSHRINKSD(%)  1.6461E+01
 EPSSHRINKVR(%)  3.0212E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          884
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1624.6833267058612     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2715.6342172812497     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1090.9508905753885     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.21
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.14
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2715.634       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  2.12E+00  8.17E-01  3.41E-01  1.73E+00  9.25E-01  7.42E-01  1.00E-02  2.23E+00  1.47E+00  2.62E+00
 


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
+        1.27E+03
 
 TH 2
+       -1.16E+01  2.90E+02
 
 TH 3
+        7.22E-01  2.19E+01  2.92E+01
 
 TH 4
+       -1.79E+01  3.26E+02 -5.10E+01  8.28E+02
 
 TH 5
+       -3.25E+00 -5.22E+01 -2.52E+01  8.44E+01  1.33E+02
 
 TH 6
+        4.76E+00 -2.73E+00  3.23E-01 -5.65E+00 -9.66E-01  2.16E+02
 
 TH 7
+        3.54E+00 -1.68E+01 -2.29E-02 -4.08E+00 -8.65E+00 -1.95E-01  1.42E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        5.56E-01 -4.20E+00 -3.20E+00  4.16E+01  1.99E+00 -2.68E-01  1.42E+01  0.00E+00  1.12E+01
 
 TH10
+        1.07E-01 -9.79E+00 -4.37E+00  1.65E+01 -9.70E+00  4.21E-02  7.60E+00  0.00E+00  1.62E+00  5.46E+01
 
 TH11
+       -1.71E+01 -1.33E+01 -5.05E-01 -1.46E+01 -3.74E-01  2.66E+00  4.77E+00  0.00E+00  2.03E+00  4.06E+00  1.69E+02
 
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
 #CPUT: Total CPU Time in Seconds,       40.485
Stop Time:
Wed Sep 29 04:49:50 CDT 2021
