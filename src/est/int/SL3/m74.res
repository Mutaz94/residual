Wed Sep 29 04:41:26 CDT 2021
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
$DATA ../../../../data/int/SL3/dat74.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      981
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      881
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
 RAW OUTPUT FILE (FILE): m74.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -200.537165511476        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2818E+02  4.1242E+01  1.5677E+02  7.3158E+01  1.2758E+02  5.5946E+01 -7.3032E+01 -2.6904E+02 -8.3454E+01 -3.9518E+01
            -6.7220E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2646.44885119136        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0533E+00  1.2407E+00  9.6684E-01  9.2098E-01  1.1062E+00  8.5214E-01  1.1251E+00  9.2328E-01  1.0712E+00  9.9311E-01
             2.9532E+00
 PARAMETER:  1.5193E-01  3.1569E-01  6.6279E-02  1.7685E-02  2.0094E-01 -6.0009E-02  2.1788E-01  2.0179E-02  1.6881E-01  9.3081E-02
             1.1829E+00
 GRADIENT:   1.6194E+02  2.2553E+01 -1.1161E+01  8.7217E-01  6.1673E+00 -3.5702E+01  1.7057E+01  8.1429E+00 -2.3095E-01 -9.0225E+00
             1.4137E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2654.50701077758        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      179
 NPARAMETR:  1.0482E+00  1.4335E+00  1.1228E+00  8.3784E-01  1.2710E+00  9.2511E-01  8.5473E-01  3.2913E-01  1.0659E+00  1.2338E+00
             2.9958E+00
 PARAMETER:  1.4706E-01  4.6012E-01  2.1586E-01 -7.6933E-02  3.3981E-01  2.2155E-02 -5.6971E-02 -1.0113E+00  1.6377E-01  3.1009E-01
             1.1972E+00
 GRADIENT:   5.7070E+01  2.1608E+01  9.1569E+00  1.6602E+01 -2.5379E+01 -5.6885E+00 -5.3519E+00  4.3469E-01 -1.6871E+01 -5.2303E+00
             1.5390E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2668.23696878747        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  1.0140E+00  1.6983E+00  1.0977E+00  6.6476E-01  1.5191E+00  9.5122E-01  7.1189E-01  5.3403E-01  1.4598E+00  1.4440E+00
             2.7385E+00
 PARAMETER:  1.1391E-01  6.2962E-01  1.9321E-01 -3.0833E-01  5.1810E-01  4.9994E-02 -2.3983E-01 -5.2729E-01  4.7828E-01  4.6743E-01
             1.1074E+00
 GRADIENT:  -1.4318E+01  9.0704E+00 -3.6124E-01  2.8370E+01  3.6443E+00  3.5917E+00 -4.6327E+00  7.7076E-01 -3.1989E-01  8.9327E-01
            -1.4246E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2676.13295856502        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  1.0255E+00  2.3266E+00  5.7761E-01  2.5135E-01  1.9463E+00  9.4067E-01  6.8909E-01  1.0000E-02  2.3942E+00  1.7176E+00
             2.7593E+00
 PARAMETER:  1.2517E-01  9.4440E-01 -4.4885E-01 -1.2809E+00  7.6595E-01  3.8838E-02 -2.7238E-01 -5.3233E+00  9.7306E-01  6.4092E-01
             1.1150E+00
 GRADIENT:   1.0685E+01  3.8119E+01 -1.6488E+00  9.8743E+00  1.4747E+00 -5.7395E-01 -1.3888E+00  0.0000E+00 -1.6872E+00 -5.6072E-02
             2.3960E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2677.67352922754        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  1.0207E+00  2.4676E+00  4.3612E-01  1.3198E-01  2.0803E+00  9.4285E-01  6.9305E-01  1.0000E-02  3.1704E+00  1.8145E+00
             2.7273E+00
 PARAMETER:  1.2053E-01  1.0032E+00 -7.2984E-01 -1.9251E+00  8.3251E-01  4.1152E-02 -2.6665E-01 -9.2378E+00  1.2538E+00  6.9579E-01
             1.1033E+00
 GRADIENT:   1.9365E+00 -1.4382E+01 -1.4113E+00  1.0268E+00  7.3490E-01  4.8743E-01  1.6763E-01  0.0000E+00  1.3239E+00 -2.8329E-01
             3.5557E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2678.05365178694        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  1.0200E+00  2.5360E+00  3.8390E-01  8.9434E-02  2.1334E+00  9.4250E-01  6.8696E-01  1.0000E-02  3.7645E+00  1.8601E+00
             2.7193E+00
 PARAMETER:  1.1978E-01  1.0306E+00 -8.5738E-01 -2.3142E+00  8.5771E-01  4.0776E-02 -2.7549E-01 -1.1612E+01  1.4256E+00  7.2064E-01
             1.1004E+00
 GRADIENT:  -1.6061E-01 -3.6216E+00 -8.4811E-01  3.1391E-01  1.5659E+00 -1.9069E-02 -2.7607E-01  0.0000E+00  3.2369E-01  2.3478E-02
            -1.1671E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2678.09738685825        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  1.0202E+00  2.5367E+00  4.2356E-01  8.7059E-02  2.1315E+00  9.4273E-01  6.8723E-01  1.0000E-02  3.7554E+00  1.8667E+00
             2.7219E+00
 PARAMETER:  1.2001E-01  1.0309E+00 -7.5906E-01 -2.3412E+00  8.5684E-01  4.1029E-02 -2.7508E-01 -1.1488E+01  1.4232E+00  7.2419E-01
             1.1013E+00
 GRADIENT:   4.1993E-01 -5.5016E+00  1.1670E-01 -3.7250E-01 -2.9187E-01  5.3309E-02  3.6605E-01  0.0000E+00 -1.3703E+00  2.5081E-01
             1.2053E+00

0ITERATION NO.:   39    OBJECTIVE VALUE:  -2678.10000660048        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:     1192
 NPARAMETR:  1.0199E+00  2.5370E+00  4.2359E-01  8.7301E-02  2.1320E+00  9.4255E-01  6.8705E-01  1.0000E-02  3.7616E+00  1.8665E+00
             2.7210E+00
 PARAMETER:  1.1973E-01  1.0310E+00 -7.5898E-01 -2.3384E+00  8.5706E-01  4.0833E-02 -2.7535E-01 -1.1488E+01  1.4248E+00  7.2409E-01
             1.1010E+00
 GRADIENT:  -2.6087E-01 -5.7260E+00  2.7718E-02  5.1272E-02 -3.7939E-01 -3.0626E-02  1.2956E-02  0.0000E+00 -3.5276E-01 -7.3527E-03
             1.4078E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1192
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5050E-03 -2.7089E-02 -1.6315E-05  3.6258E-02 -2.4432E-02
 SE:             2.9296E-02  2.5934E-02  1.7223E-05  1.5518E-02  2.6088E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5903E-01  2.9624E-01  3.4352E-01  1.9463E-02  3.4901E-01

 ETASHRINKSD(%)  1.8543E+00  1.3117E+01  9.9942E+01  4.8013E+01  1.2602E+01
 ETASHRINKVR(%)  3.6742E+00  2.4514E+01  1.0000E+02  7.2973E+01  2.3617E+01
 EBVSHRINKSD(%)  1.8863E+00  9.7540E+00  9.9930E+01  6.4615E+01  8.7343E+00
 EBVSHRINKVR(%)  3.7370E+00  1.8557E+01  1.0000E+02  8.7479E+01  1.6706E+01
 RELATIVEINF(%)  9.6190E+01  2.8417E+01  4.0242E-05  4.2356E+00  7.0155E+01
 EPSSHRINKSD(%)  1.6317E+01
 EPSSHRINKVR(%)  2.9971E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          881
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1619.1696955066332     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2678.1000066004794     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1058.9303110938463     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.06
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    14.50
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2678.100       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.54E+00  4.24E-01  8.73E-02  2.13E+00  9.43E-01  6.87E-01  1.00E-02  3.76E+00  1.87E+00  2.72E+00
 


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
+        1.16E+03
 
 TH 2
+       -1.38E+01  3.28E+02
 
 TH 3
+        7.32E-01  1.28E+01  4.05E+01
 
 TH 4
+       -2.09E+01  2.24E+02 -1.30E+02  3.09E+03
 
 TH 5
+       -2.41E+00 -5.24E+00 -3.69E-01 -2.36E+01  6.10E+01
 
 TH 6
+        6.27E+00 -4.62E+00  1.81E-01 -3.43E+00 -9.85E-01  2.08E+02
 
 TH 7
+        4.31E+00  2.36E+01  2.24E+00 -2.40E+02  6.74E+00 -1.93E+00  3.49E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        7.50E-02 -1.32E+01 -4.30E+00  1.36E+02 -3.76E+00  1.63E-01 -1.44E+01  0.00E+00  8.66E+00
 
 TH10
+        2.70E-02  4.91E+00  3.94E+00 -4.32E+01 -2.12E+00 -8.18E-02  4.39E+00  0.00E+00 -3.56E+00  4.24E+01
 
 TH11
+       -1.70E+01 -9.91E+00  4.20E+00 -5.75E+01  2.65E+00  2.67E+00  1.35E+01  0.00E+00 -1.67E+00  6.79E+00  1.57E+02
 
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
 #CPUT: Total CPU Time in Seconds,       46.690
Stop Time:
Wed Sep 29 04:42:15 CDT 2021
