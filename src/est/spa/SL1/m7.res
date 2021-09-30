Wed Sep 29 14:49:44 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat7.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m7.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1158.72863401990        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6581E+02  2.4909E+01  4.9434E+01  7.2707E+01  8.2279E+01  2.2142E+01  1.7813E+01 -2.0097E+02  7.2359E-01 -1.0245E+01
            -7.6457E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1648.58063834853        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  9.3582E-01  1.0030E+00  9.8666E-01  9.4823E-01  9.4065E-01  1.0120E+00  9.3481E-01  1.0696E+00  9.4012E-01  9.7465E-01
             1.0867E+00
 PARAMETER:  3.3663E-02  1.0297E-01  8.6569E-02  4.6842E-02  3.8813E-02  1.1197E-01  3.2592E-02  1.6731E-01  3.8253E-02  7.4322E-02
             1.8314E-01
 GRADIENT:   2.7127E+02  7.6995E+00  1.5010E+01  2.7462E+00 -1.6575E+01  3.9852E+01  1.0080E+01  1.1393E+00  5.9368E+00  5.0825E+00
             1.6522E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1650.30917497064        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      273
 NPARAMETR:  9.3658E-01  9.5104E-01  9.8596E-01  9.9087E-01  9.1554E-01  1.0279E+00  7.7269E-01  9.5533E-01  9.5340E-01  9.7837E-01
             1.1000E+00
 PARAMETER:  3.4476E-02  4.9797E-02  8.5856E-02  9.0825E-02  1.1763E-02  1.2748E-01 -1.5787E-01  5.4307E-02  5.2277E-02  7.8128E-02
             1.9529E-01
 GRADIENT:  -1.1871E+02 -1.7925E+01  1.4292E+01 -4.5834E+01 -2.5594E+01 -3.5419E+01  1.5790E+00 -1.8795E+00  1.0190E+00  1.3698E+00
             1.8958E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1656.71557461384        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      453
 NPARAMETR:  9.9015E-01  1.2826E+00  7.1781E-01  8.0502E-01  9.5700E-01  1.0814E+00  7.0722E-01  8.7823E-01  1.1097E+00  9.5102E-01
             1.0609E+00
 PARAMETER:  9.0098E-02  3.4892E-01 -2.3155E-01 -1.1689E-01  5.6049E-02  1.7830E-01 -2.4642E-01 -2.9850E-02  2.0412E-01  4.9776E-02
             1.5911E-01
 GRADIENT:  -7.7734E+00  6.6124E+00 -4.5206E+00  1.6752E+01  2.5654E+00 -8.4614E+00  6.7080E-01  2.2260E-01  1.9021E+00  9.3251E-01
             4.2467E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1656.85433515872        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      616
 NPARAMETR:  9.9133E-01  1.2833E+00  7.3054E-01  8.0280E-01  9.6618E-01  1.1195E+00  6.8162E-01  9.0918E-01  1.0983E+00  9.5096E-01
             1.0423E+00
 PARAMETER:  9.1291E-02  3.4942E-01 -2.1397E-01 -1.1965E-01  6.5591E-02  2.1285E-01 -2.8328E-01  4.7897E-03  1.9381E-01  4.9713E-02
             1.4145E-01
 GRADIENT:   4.2612E+02  2.3013E+02 -9.3908E-01  7.1127E+01  1.4157E+01  1.5548E+02  5.9887E+00 -2.2734E-01  7.1946E+00 -8.5949E-01
            -2.6578E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1656.92955611911        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      793
 NPARAMETR:  9.9133E-01  1.2833E+00  7.3054E-01  8.0279E-01  9.6618E-01  1.1043E+00  6.9760E-01  9.0918E-01  1.1087E+00  9.5649E-01
             1.0509E+00
 PARAMETER:  9.1293E-02  3.4941E-01 -2.1398E-01 -1.1966E-01  6.5593E-02  1.9919E-01 -2.6011E-01  4.7874E-03  2.0318E-01  5.5516E-02
             1.4969E-01
 GRADIENT:  -4.8829E+00  2.7592E+00 -4.5000E+00  1.2862E+01  5.3203E+00  2.2273E-01  1.7434E-01  8.8965E-02  2.9207E-01  2.0150E-01
             1.9897E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1657.02486178759        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      976
 NPARAMETR:  9.9466E-01  1.2821E+00  7.3936E-01  7.9647E-01  9.6701E-01  1.1040E+00  6.8776E-01  9.3249E-01  1.1134E+00  9.5405E-01
             1.0504E+00
 PARAMETER:  9.4644E-02  3.4853E-01 -2.0197E-01 -1.2757E-01  6.6453E-02  1.9896E-01 -2.7432E-01  3.0108E-02  2.0740E-01  5.2956E-02
             1.4913E-01
 GRADIENT:   1.4862E+00 -4.3062E+00 -7.7053E-01  5.5014E-01 -5.6054E-01  1.9283E-01 -4.4926E-02 -1.1903E-01 -1.6702E-01 -4.7055E-01
            -9.6812E-02

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1657.02550877750        NO. OF FUNC. EVALS.:  67
 CUMULATIVE NO. OF FUNC. EVALS.:     1043
 NPARAMETR:  9.9471E-01  1.2817E+00  7.3958E-01  7.9638E-01  9.6728E-01  1.1047E+00  6.8756E-01  9.3353E-01  1.1138E+00  9.5517E-01
             1.0504E+00
 PARAMETER:  9.4608E-02  3.4853E-01 -2.0149E-01 -1.2756E-01  6.6647E-02  1.9893E-01 -2.7491E-01  3.1305E-02  2.0760E-01  5.3134E-02
             1.4912E-01
 GRADIENT:  -2.2541E+05  6.4669E+04  1.1191E+05  1.7669E+05 -2.2541E+05 -6.8834E-01 -4.1198E-02  2.2532E+05 -1.9694E-01 -4.3392E-01
            -9.9534E-02
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.8         2.2         2.3         2.3         1.3
                    2.8

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1043
 NO. OF SIG. DIGITS IN FINAL EST.:  1.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.2207E-04 -2.7887E-02 -2.3675E-02  1.2932E-02 -3.3059E-02
 SE:             2.9944E-02  1.7909E-02  1.1576E-02  2.5165E-02  2.2711E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8609E-01  1.1944E-01  4.0837E-02  6.0733E-01  1.4550E-01

 ETASHRINKSD(%)  1.0000E-10  4.0002E+01  6.1218E+01  1.5694E+01  2.3914E+01
 ETASHRINKVR(%)  1.0000E-10  6.4003E+01  8.4960E+01  2.8925E+01  4.2109E+01
 EBVSHRINKSD(%)  3.8388E-01  4.0078E+01  6.4143E+01  1.6102E+01  2.2404E+01
 EBVSHRINKVR(%)  7.6628E-01  6.4093E+01  8.7143E+01  2.9610E+01  3.9789E+01
 RELATIVEINF(%)  9.9039E+01  1.1799E+00  1.1074E+00  2.9040E+00  9.2962E+00
 EPSSHRINKSD(%)  4.4755E+01
 EPSSHRINKVR(%)  6.9479E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1657.0255087774985     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -921.87468221376037     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.18
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
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
 





 #OBJV:********************************************    -1657.026       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.95E-01  1.28E+00  7.40E-01  7.96E-01  9.67E-01  1.10E+00  6.87E-01  9.34E-01  1.11E+00  9.54E-01  1.05E+00
 


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
+        5.70E+07
 
 TH 2
+        2.21E+02  2.82E+06
 
 TH 3
+        6.95E+02  5.39E+03  2.54E+07
 
 TH 4
+        9.95E+02 -1.86E+03  2.27E+04  5.46E+07
 
 TH 5
+        5.86E+07  5.60E+02  2.27E+03  4.05E+03  6.02E+07
 
 TH 6
+       -1.18E+03  2.59E+02  7.86E+02  1.15E+03 -1.21E+03  1.62E+02
 
 TH 7
+        3.00E+07  2.19E+02  6.82E+02  9.84E+02 -1.05E+03  4.31E-01  1.58E+07
 
 TH 8
+       -6.07E+07 -1.09E+04 -3.28E+04 -4.80E+04 -6.24E+07  1.25E+03 -3.19E+07  6.46E+07
 
 TH 9
+        2.45E+07 -1.76E+03 -5.20E+03 -7.56E+03  7.98E+03 -9.31E-02  1.29E+07 -2.61E+07  1.05E+07
 
 TH10
+        5.94E+07 -1.72E+02 -5.37E+02 -7.59E+02  7.22E+02  3.60E-01  3.13E+07 -6.32E+07  2.56E+07  6.19E+07
 
 TH11
+        1.62E+05 -3.60E+04 -1.08E+05 -1.58E+05  1.66E+05  1.30E+00  1.91E+07 -1.72E+05  7.71E+00  1.34E+01  1.90E+02
 
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
 #CPUT: Total CPU Time in Seconds,       19.227
Stop Time:
Wed Sep 29 14:50:05 CDT 2021
