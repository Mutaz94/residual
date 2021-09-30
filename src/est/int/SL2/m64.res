Wed Sep 29 03:23:59 CDT 2021
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
$DATA ../../../../data/int/SL2/dat64.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      997
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

 TOT. NO. OF OBS RECS:      897
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
 RAW OUTPUT FILE (FILE): m64.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2406.36467916612        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6198E+02  2.5936E+01 -7.7142E+00  2.1597E+02  2.1679E+02  3.2287E+01 -8.8145E+01 -1.2232E+02 -1.1262E+02  2.9040E+00
            -2.6355E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3134.10869588169        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8009E-01  1.1594E+00  1.0076E+00  8.8361E-01  1.0129E+00  1.0667E+00  1.1498E+00  1.0340E+00  1.1367E+00  9.1936E-01
             1.8441E+00
 PARAMETER:  7.9885E-02  2.4788E-01  1.0753E-01 -2.3737E-02  1.1280E-01  1.6456E-01  2.3962E-01  1.3348E-01  2.2812E-01  1.5927E-02
             7.1198E-01
 GRADIENT:   7.4424E+01  5.1627E+01 -1.9535E+01  1.0443E+01  3.0069E+01  2.9225E+01  1.0630E+01 -2.4656E+00 -1.4882E+00 -6.3504E+00
            -7.8840E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3141.49467052107        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      243
 NPARAMETR:  9.9601E-01  1.3738E+00  1.3672E+00  8.0733E-01  1.2867E+00  1.0246E+00  8.6786E-01  1.1495E+00  1.0938E+00  1.3067E+00
             1.8948E+00
 PARAMETER:  9.6007E-02  4.1762E-01  4.1276E-01 -1.1403E-01  3.5206E-01  1.2430E-01 -4.1726E-02  2.3933E-01  1.8964E-01  3.6750E-01
             7.3910E-01
 GRADIENT:  -4.2953E+01 -2.6043E+01 -6.7714E+00  3.3424E+01  3.8796E+01 -2.0341E+01 -5.9993E+00 -9.6568E+00 -1.3790E+01  1.0405E+01
            -4.7019E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3148.06227638025        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      426             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0001E+00  1.5112E+00  1.8432E+00  7.7431E-01  1.4638E+00  1.0564E+00  6.9936E-01  3.1144E+00  1.1335E+00  1.2610E+00
             1.8725E+00
 PARAMETER:  1.0006E-01  5.1290E-01  7.1152E-01 -1.5579E-01  4.8102E-01  1.5487E-01 -2.5758E-01  1.2360E+00  2.2529E-01  3.3192E-01
             7.2725E-01
 GRADIENT:   1.0616E+02  2.6546E+02 -1.2903E+01  9.3704E+01  1.0910E+02  2.2676E+01 -1.5671E+01  6.7543E+00 -7.6119E+00 -1.0325E+01
            -1.1094E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3149.54401055104        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      613
 NPARAMETR:  1.0003E+00  1.5111E+00  1.8466E+00  7.7400E-01  1.3839E+00  1.0568E+00  6.9892E-01  3.1031E+00  1.1341E+00  1.2600E+00
             1.8765E+00
 PARAMETER:  1.0031E-01  5.1287E-01  7.1334E-01 -1.5619E-01  4.2491E-01  1.5526E-01 -2.5822E-01  1.2324E+00  2.2585E-01  3.3110E-01
             7.2943E-01
 GRADIENT:  -3.2584E+01  8.3112E+01 -9.8193E+00  6.1302E+01 -1.6700E+00 -8.5585E+00 -2.1110E+01  2.8939E+00 -1.1568E+01 -1.3599E+01
            -1.4586E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3155.84403435529        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      801
 NPARAMETR:  1.0089E+00  1.4798E+00  1.9390E+00  7.5183E-01  1.3847E+00  1.0703E+00  8.1020E-01  3.0755E+00  1.1752E+00  1.2987E+00
             1.8823E+00
 PARAMETER:  1.0889E-01  4.9161E-01  7.6259E-01 -1.8535E-01  4.2574E-01  1.6627E-01 -1.1054E-01  1.2228E+00  2.6157E-01  3.6153E-01
             7.3288E-01
 GRADIENT:   2.4038E+04 -5.3325E+03  3.3811E+03 -1.4129E+04  6.1381E+03 -2.9197E+00 -1.1855E+04 -1.0935E+03  5.0128E+03  2.7126E-01
             3.5670E+03
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.0         2.3         2.3         2.3         2.4
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      801
 NO. OF SIG. DIGITS IN FINAL EST.:  1.0
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.8535E-03 -3.9140E-02 -9.9887E-03  2.3753E-02 -2.8708E-02
 SE:             2.9925E-02  2.1032E-02  1.8404E-02  2.3328E-02  2.4163E-02
 N:                     100         100         100         100         100

 P VAL.:         7.9298E-01  6.2748E-02  5.8730E-01  3.0858E-01  2.3479E-01

 ETASHRINKSD(%)  1.0000E-10  2.9540E+01  3.8345E+01  2.1847E+01  1.9052E+01
 ETASHRINKVR(%)  1.0000E-10  5.0355E+01  6.1987E+01  3.8921E+01  3.4475E+01
 EBVSHRINKSD(%)  7.8612E-01  3.1619E+01  4.1807E+01  2.3210E+01  1.5443E+01
 EBVSHRINKVR(%)  1.5661E+00  5.3240E+01  6.6136E+01  4.1033E+01  2.8501E+01
 RELATIVEINF(%)  9.8418E+01  9.5835E+00  2.0398E+01  1.2747E+01  3.8808E+01
 EPSSHRINKSD(%)  1.8877E+01
 EPSSHRINKVR(%)  3.4190E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          897
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1648.5757285691827     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3155.8440343552861     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1507.2683057861034     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.71
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    17.15
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3155.844       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.48E+00  1.94E+00  7.52E-01  1.39E+00  1.07E+00  8.10E-01  3.07E+00  1.18E+00  1.30E+00  1.88E+00
 


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
+        5.43E+06
 
 TH 2
+       -2.37E+01  1.25E+05
 
 TH 3
+        1.29E+01 -2.39E+02  3.03E+04
 
 TH 4
+       -2.20E+03  8.79E+03 -1.70E+02  3.42E+06
 
 TH 5
+       -4.98E+02 -1.68E+02 -1.55E+02 -9.27E+03  1.88E+05
 
 TH 6
+        1.90E+02 -2.90E+01  1.51E+01 -1.41E+02  3.14E+01  2.07E+06
 
 TH 7
+       -1.45E+03  2.21E+02 -1.25E+02  1.14E+03 -2.78E+02 -2.14E+02  8.17E+06
 
 TH 8
+       -2.36E+00  8.93E+02 -5.31E+01  1.70E+03 -1.64E+01 -4.88E+00  3.98E+01  1.04E+00
 
 TH 9
+       -7.21E+02  1.00E+02 -5.81E+01  5.98E+02 -1.28E+02  6.20E+01 -4.84E+02  2.34E+01  6.93E+05
 
 TH10
+       -4.31E+02  5.00E+01 -1.43E+01  3.55E+02  1.38E+02 -7.85E+05  5.37E+02  1.63E+01 -1.53E+02  2.97E+05
 
 TH11
+       -1.43E+00  1.66E+02  1.06E+02 -2.45E+02 -1.37E+00  1.59E+01 -1.08E+02  4.51E+01 -5.15E+01 -2.38E+01  3.46E+04
 
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
 #CPUT: Total CPU Time in Seconds,       43.986
Stop Time:
Wed Sep 29 03:24:45 CDT 2021
