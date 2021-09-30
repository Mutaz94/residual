Wed Sep 29 15:41:16 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat24.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m24.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1642.13279485234        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4229E+02 -4.2091E+01  3.6052E+01 -1.0255E+02 -3.1140E+01  3.1757E+01 -2.2296E+00  2.9886E-02 -1.1629E+01  5.9702E-01
             1.1168E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1651.78402411055        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7461E-01  1.0232E+00  9.6753E-01  1.0883E+00  1.0200E+00  1.0291E+00  1.0132E+00  9.9258E-01  1.0102E+00  1.0153E+00
             9.6192E-01
 PARAMETER:  7.4280E-02  1.2290E-01  6.6987E-02  1.8459E-01  1.1977E-01  1.2872E-01  1.1314E-01  9.2555E-02  1.1019E-01  1.1523E-01
             6.1180E-02
 GRADIENT:  -1.6998E+00 -4.3431E+00 -5.0953E+00 -1.2138E+00  9.5287E+00  3.7047E+00 -2.0138E+00  2.7711E+00  9.9114E-01 -1.4621E+00
            -3.8571E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1652.74524189651        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.7745E-01  8.6690E-01  9.2207E-01  1.2025E+00  9.2151E-01  1.0265E+00  1.3627E+00  7.1134E-01  9.0097E-01  9.9329E-01
             9.6764E-01
 PARAMETER:  7.7191E-02 -4.2837E-02  1.8864E-02  2.8439E-01  1.8255E-02  1.2619E-01  4.0946E-01 -2.4060E-01 -4.2885E-03  9.3265E-02
             6.7104E-02
 GRADIENT:   5.5377E+00  1.5422E+01 -5.6440E+00  3.2672E+01  1.0789E+01  2.8264E+00  2.3933E+00 -1.0829E+00  3.1254E+00  3.9907E+00
            -1.4474E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1653.99962821015        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.7674E-01  7.6822E-01  7.7816E-01  1.2370E+00  7.7239E-01  1.0182E+00  1.4798E+00  4.9709E-01  8.4878E-01  8.2970E-01
             9.7074E-01
 PARAMETER:  7.6462E-02 -1.6368E-01 -1.5082E-01  3.1268E-01 -1.5827E-01  1.1805E-01  4.9193E-01 -5.9897E-01 -6.3955E-02 -8.6697E-02
             7.0303E-02
 GRADIENT:   2.1047E+00  1.6629E+01  8.2881E+00  2.0069E+01 -9.6485E+00 -6.4023E-01  2.0899E-01 -1.3534E+00 -1.6496E-01 -1.8530E+00
            -6.4145E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1655.45068796650        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.7244E-01  4.4600E-01  7.6612E-01  1.4094E+00  6.6279E-01  1.0169E+00  2.1865E+00  3.5765E-01  7.6436E-01  8.6816E-01
             9.6795E-01
 PARAMETER:  7.2051E-02 -7.0744E-01 -1.6642E-01  4.4320E-01 -3.1130E-01  1.1679E-01  8.8229E-01 -9.2821E-01 -1.6872E-01 -4.1382E-02
             6.7421E-02
 GRADIENT:   1.6357E+00  8.5422E+00  7.5297E+00  1.7077E+01 -1.2771E+01  6.0117E-01  7.2315E-01 -8.8525E-01 -1.7583E+00  2.0801E+00
            -8.0631E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1656.33534911775        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  9.6520E-01  2.2719E-01  8.9705E-01  1.5429E+00  6.8653E-01  1.0036E+00  3.1256E+00  6.8100E-01  7.4471E-01  9.1640E-01
             9.6490E-01
 PARAMETER:  6.4583E-02 -1.3820E+00 -8.6394E-03  5.3368E-01 -2.7611E-01  1.0363E-01  1.2396E+00 -2.8420E-01 -1.9476E-01  1.2703E-02
             6.4271E-02
 GRADIENT:  -4.3288E-01  1.4840E+00  4.5660E+00  7.4895E+00 -1.4264E+01 -2.0977E+00 -2.1046E+00  1.3698E+00  2.3770E+00  6.2787E+00
             2.8418E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1656.61416710567        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1069
 NPARAMETR:  9.6513E-01  2.0836E-01  9.0423E-01  1.5470E+00  6.9099E-01  1.0084E+00  3.3047E+00  6.9849E-01  7.3686E-01  8.8384E-01
             9.6020E-01
 PARAMETER:  6.4508E-02 -1.4685E+00 -6.7681E-04  5.3632E-01 -2.6963E-01  1.0833E-01  1.2954E+00 -2.5883E-01 -2.0536E-01 -2.3476E-02
             5.9390E-02
 GRADIENT:   8.4817E-01  2.0125E-01 -8.7373E-01 -7.0941E+00  2.2942E-01  6.9056E-02  1.5711E-01  2.8099E-01  2.9533E-01  1.6359E-01
             1.6621E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1656.62134176631        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1252
 NPARAMETR:  9.6532E-01  2.0839E-01  9.0415E-01  1.5447E+00  6.9101E-01  1.0084E+00  3.3119E+00  6.9414E-01  7.3698E-01  8.8588E-01
             9.6031E-01
 PARAMETER:  6.4709E-02 -1.4684E+00 -7.6521E-04  5.3485E-01 -2.6960E-01  1.0837E-01  1.2975E+00 -2.6508E-01 -2.0520E-01 -2.1179E-02
             5.9500E-02
 GRADIENT:   1.3504E+00  2.4034E-01 -2.5597E-01 -1.2722E+01  2.5778E-01  1.3488E-01  9.3133E-01  1.6257E-01 -1.6290E-02  2.5174E-01
             1.5111E-01

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1656.62162751771        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1350
 NPARAMETR:  9.6532E-01  2.0849E-01  9.0425E-01  1.5447E+00  6.9094E-01  1.0084E+00  3.3109E+00  6.9165E-01  7.3707E-01  8.8457E-01
             9.6013E-01
 PARAMETER:  6.4707E-02 -1.4679E+00 -6.5368E-04  5.3485E-01 -2.6971E-01  1.0835E-01  1.2972E+00 -2.6868E-01 -2.0507E-01 -2.2658E-02
             5.9317E-02
 GRADIENT:   7.4373E-04 -9.0158E-02  4.0929E-01  2.1033E-01  6.7737E-02  3.1565E-03  1.4617E-01 -4.8562E-02 -6.9657E-02 -6.0705E-02
            -4.9730E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1350
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0823E-03  3.4480E-02 -2.7907E-02 -2.3722E-02 -1.2338E-02
 SE:             2.9861E-02  1.6048E-02  1.4870E-02  2.5953E-02  2.1588E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7109E-01  3.1667E-02  6.0555E-02  3.6069E-01  5.6765E-01

 ETASHRINKSD(%)  1.0000E-10  4.6238E+01  5.0184E+01  1.3055E+01  2.7677E+01
 ETASHRINKVR(%)  1.0000E-10  7.1097E+01  7.5183E+01  2.4406E+01  4.7693E+01
 EBVSHRINKSD(%)  4.1028E-01  5.6750E+01  5.1864E+01  9.0669E+00  2.3483E+01
 EBVSHRINKVR(%)  8.1887E-01  8.1294E+01  7.6829E+01  1.7312E+01  4.1451E+01
 RELATIVEINF(%)  9.8424E+01  4.6550E+00  2.8457E+00  2.5116E+01  6.5388E+00
 EPSSHRINKSD(%)  4.5206E+01
 EPSSHRINKVR(%)  6.9976E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1656.6216275177053     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -921.47080095396711     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.96
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.04
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1656.622       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.65E-01  2.08E-01  9.04E-01  1.54E+00  6.91E-01  1.01E+00  3.31E+00  6.92E-01  7.37E-01  8.85E-01  9.60E-01
 


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
+       -8.01E+00  1.12E+03
 
 TH 3
+        3.32E+00  5.23E+01  6.97E+02
 
 TH 4
+       -1.03E+01  1.54E+02 -8.75E+01  7.91E+02
 
 TH 5
+        1.01E+01 -1.86E+02 -1.01E+03 -3.47E+01  1.81E+03
 
 TH 6
+        5.93E-01  1.14E+01 -1.78E+00 -7.88E+00  5.15E+00  1.94E+02
 
 TH 7
+        3.87E+00  1.21E+02 -1.82E+01 -3.72E+01  3.40E+01  2.83E+00  1.68E+01
 
 TH 8
+       -5.46E-02 -1.71E-01 -6.83E+01 -5.87E+00  1.75E+01  8.94E-02 -4.57E-02  3.93E+01
 
 TH 9
+       -5.98E+00 -2.93E+02  3.91E+01  7.38E+01 -6.53E+01 -8.70E+00 -4.35E+01  1.31E+00  3.83E+02
 
 TH10
+       -7.99E-01 -5.26E+00 -2.09E+01 -6.11E+00 -8.62E+01 -4.52E-01 -4.03E+00  3.25E+01  1.17E+01  9.28E+01
 
 TH11
+       -7.85E+00 -1.15E+01 -2.81E+01 -5.68E+00 -3.73E+00  1.38E+00 -9.58E-01  1.75E+01  1.16E+01  1.53E+01  2.25E+02
 
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
 #CPUT: Total CPU Time in Seconds,       26.053
Stop Time:
Wed Sep 29 15:41:43 CDT 2021
