Wed Sep 29 10:49:45 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/int/All/dat91.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]
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
 NO. OF DATA RECS IN DATA SET:     1000
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

 TOT. NO. OF OBS RECS:      900
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
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

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m91.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   55084.3436257570        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.3429E+03  1.0304E+03 -1.3779E+03 -1.7904E+03 -2.9072E+03 -1.7487E+03 -1.0745E+05

0ITERATION NO.:    5    OBJECTIVE VALUE:  -557.222833992526        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  1.0369E+00  2.5518E+00  7.7411E+00  3.0526E+00  3.6037E+00  1.3568E+00  1.2350E+01
 PARAMETER:  1.3625E-01  1.0368E+00  2.1465E+00  1.2160E+00  1.3820E+00  4.0511E-01  2.6137E+00
 GRADIENT:  -4.5112E+00  1.0273E+02  3.2755E+01  1.0431E+02  5.2373E+01  2.8275E+00 -1.0960E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -577.510172662445        NO. OF FUNC. EVALS.:  56
 CUMULATIVE NO. OF FUNC. EVALS.:      116
 NPARAMETR:  1.1259E+00  1.6054E+00  1.3668E+01  2.0440E+00  3.1896E+00  2.9633E+00  1.2060E+01
 PARAMETER:  2.1856E-01  5.7336E-01  2.7151E+00  8.1489E-01  1.2599E+00  1.1863E+00  2.5899E+00
 GRADIENT:   3.0465E+01  1.2729E+01  4.7292E+00  5.3956E+00  1.7302E+01  1.4375E+00 -4.0417E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -638.260293610446        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.6393E-01  1.5233E+00  2.6538E+00  2.3152E+00  3.3591E+00  9.1464E-01  1.2850E+01
 PARAMETER:  6.3265E-02  5.2085E-01  1.0760E+00  9.3950E-01  1.3117E+00  1.0776E-02  2.6533E+00
 GRADIENT:  -4.6380E+01  8.5556E+00  1.5239E+01  3.9007E+01  4.6665E+01  6.5564E+00  1.5737E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -645.717433879997        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0919E+00  1.4314E+00  2.4997E+00  1.9602E+00  3.0916E+00  8.0472E-01  1.2338E+01
 PARAMETER:  1.8796E-01  4.5863E-01  1.0162E+00  7.7306E-01  1.2287E+00 -1.1727E-01  2.6127E+00
 GRADIENT:   8.7433E+00 -1.0526E+00  5.3556E+00 -4.0355E+00  1.2632E+01  5.1254E+00  7.6539E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -646.102627979898        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      276
 NPARAMETR:  1.0778E+00  1.4125E+00  2.4469E+00  1.9654E+00  2.9980E+00  5.5833E-01  1.2055E+01
 PARAMETER:  1.7493E-01  4.4539E-01  9.9482E-01  7.7570E-01  1.1980E+00 -4.8280E-01  2.5894E+00
 GRADIENT:   7.4756E+00 -9.4139E-01  3.2320E-01 -3.5650E+00  6.0136E-01  2.1590E+00  3.9808E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -646.130368410299        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      326
 NPARAMETR:  1.0683E+00  1.4064E+00  2.4458E+00  1.9741E+00  2.9904E+00  4.7870E-01  1.1945E+01
 PARAMETER:  1.6606E-01  4.4105E-01  9.9436E-01  7.8009E-01  1.1954E+00 -6.3669E-01  2.5803E+00
 GRADIENT:   5.0408E+00 -6.9146E-01  1.3787E-01 -2.3311E+00 -5.5556E-02  1.4932E+00  2.5970E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -646.131175046857        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  1.0664E+00  1.4054E+00  2.4461E+00  1.9758E+00  2.9898E+00  4.6204E-01  1.1925E+01
 PARAMETER:  1.6432E-01  4.4031E-01  9.9448E-01  7.8097E-01  1.1952E+00 -6.7211E-01  2.5786E+00
 GRADIENT:   4.5353E+00 -6.3076E-01  1.4400E-01 -2.0843E+00 -4.0801E-02  1.3731E+00  2.3449E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -649.250212701827        NO. OF FUNC. EVALS.: 107
 CUMULATIVE NO. OF FUNC. EVALS.:      488
 NPARAMETR:  1.0739E+00  1.5225E+00  2.5142E+00  2.0535E+00  3.2601E+00  3.0256E-01  1.2086E+01
 PARAMETER:  1.7134E-01  5.2038E-01  1.0220E+00  8.1953E-01  1.2817E+00 -1.0955E+00  2.5920E+00
 GRADIENT:  -1.4796E+00 -6.8299E-01  1.5161E-01  2.6213E-02  1.0223E-01  3.8460E-01 -8.0902E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -649.451968992713        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      604
 NPARAMETR:  1.0809E+00  1.5325E+00  2.5176E+00  2.0517E+00  3.2510E+00  5.3203E-02  1.2167E+01
 PARAMETER:  1.7778E-01  5.2688E-01  1.0233E+00  8.1867E-01  1.2790E+00 -2.8336E+00  2.5987E+00
 GRADIENT:  -7.2886E-03  2.3257E-02  8.1046E-03 -5.8096E-02  5.5207E-02  1.0904E-02  1.1572E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -649.456908823194        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      720
 NPARAMETR:  1.0809E+00  1.5322E+00  2.5175E+00  2.0520E+00  3.2503E+00  1.0000E-02  1.2167E+01
 PARAMETER:  1.7783E-01  5.2673E-01  1.0233E+00  8.1881E-01  1.2787E+00 -4.7886E+00  2.5987E+00
 GRADIENT:   1.9180E-02  3.4469E-03 -8.9647E-03 -1.9623E-02 -8.2614E-03  0.0000E+00  3.5931E-02

0ITERATION NO.:   51    OBJECTIVE VALUE:  -649.456908823194        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      734
 NPARAMETR:  1.0809E+00  1.5322E+00  2.5175E+00  2.0520E+00  3.2503E+00  1.0000E-02  1.2167E+01
 PARAMETER:  1.7783E-01  5.2673E-01  1.0233E+00  8.1881E-01  1.2787E+00 -4.7886E+00  2.5987E+00
 GRADIENT:   1.9180E-02  3.4469E-03 -8.9647E-03 -1.9623E-02 -8.2614E-03  0.0000E+00  3.5931E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      734
 NO. OF SIG. DIGITS IN FINAL EST.:  3.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0168E-02 -7.7591E-03 -8.6787E-05
 SE:             2.7899E-02  2.9641E-02  1.1011E-04
 N:                     100         100         100

 P VAL.:         7.1551E-01  7.9350E-01  4.3060E-01

 ETASHRINKSD(%)  6.5341E+00  6.9926E-01  9.9631E+01
 ETASHRINKVR(%)  1.2641E+01  1.3936E+00  9.9999E+01
 EBVSHRINKSD(%)  7.5284E+00  1.8643E+00  9.9605E+01
 EBVSHRINKVR(%)  1.4490E+01  3.6938E+00  9.9998E+01
 RELATIVEINF(%)  8.5349E+01  9.4690E+01  1.5350E-03
 EPSSHRINKSD(%)  6.2653E+00
 EPSSHRINKVR(%)  1.2138E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -649.45690882319388     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       1004.6324509452169     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    12.07
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     4.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -649.457       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.08E+00  1.53E+00  2.52E+00  2.05E+00  3.25E+00  1.00E-02  1.22E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


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
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        1.85E+02
 
 TH 2
+       -1.61E+00  4.28E+01
 
 TH 3
+       -8.46E-01 -4.41E+00  2.24E+01
 
 TH 4
+       -2.98E+00 -2.60E-01 -9.35E-02  3.37E+01
 
 TH 5
+        1.50E+00  1.26E-01 -1.17E+00 -1.82E-01  1.75E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -7.63E+00 -2.84E+00  1.30E-01  7.06E-01  3.86E-01  0.00E+00  5.62E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       16.189
Stop Time:
Wed Sep 29 10:50:02 CDT 2021
