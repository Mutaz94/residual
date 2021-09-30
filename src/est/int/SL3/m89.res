Wed Sep 29 04:52:41 CDT 2021
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
$DATA ../../../../data/int/SL3/dat89.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      982
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E19.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      882
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
 RAW OUTPUT FILE (FILE): m89.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   72.4098230880006        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2104E+02  3.8099E+01  8.6405E+01  1.3824E+02  1.4766E+02  6.1846E+01 -1.3473E+02 -1.9732E+02 -6.0707E+01 -4.2051E+01
            -7.2811E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2324.04173054571        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0428E+00  1.2615E+00  9.3246E-01  1.0205E+00  1.0105E+00  7.4683E-01  1.1956E+00  1.0131E+00  7.9815E-01  1.0094E+00
             5.2553E+00
 PARAMETER:  1.4187E-01  3.3228E-01  3.0075E-02  1.2027E-01  1.1048E-01 -1.9191E-01  2.7868E-01  1.1305E-01 -1.2546E-01  1.0940E-01
             1.7592E+00
 GRADIENT:  -5.1662E+01  6.5502E+01 -1.1630E+01  5.6268E+01 -1.6531E+01 -3.6390E+01  1.9512E+01  7.2795E+00  1.9051E+01  1.4269E+01
             8.1803E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2503.58369943957        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0013E+00  1.0487E+00  3.0437E+00  1.0647E+00  1.4531E+00  8.3086E-01  1.4488E+00  1.2928E+00  3.5131E-01  3.7543E-01
             3.7817E+00
 PARAMETER:  1.0130E-01  1.4756E-01  1.2131E+00  1.6266E-01  4.7368E-01 -8.5298E-02  4.7073E-01  3.5682E-01 -9.4610E-01 -8.7967E-01
             1.4302E+00
 GRADIENT:  -4.3090E+01 -2.9866E-01  4.5262E+01 -7.3790E+01  1.5766E+01 -1.3163E+01 -2.1514E+00 -3.6027E+01 -6.0458E+00 -2.1345E+01
             3.3553E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2612.70282289907        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  9.8725E-01  7.3596E-01  6.7705E-01  1.1664E+00  6.5455E-01  8.5015E-01  1.6452E+00  6.9363E-01  6.4263E-01  3.9390E-01
             2.8323E+00
 PARAMETER:  8.7172E-02 -2.0658E-01 -2.9001E-01  2.5390E-01 -3.2380E-01 -6.2339E-02  5.9788E-01 -2.6581E-01 -3.4218E-01 -8.3165E-01
             1.1411E+00
 GRADIENT:  -3.4488E+01  3.3288E+01  1.3878E+01  6.9961E+01  2.2936E+01 -1.1317E+01 -2.6912E+00  9.1402E+00 -3.8287E+01 -3.3087E+00
            -4.8242E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2624.71143509762        NO. OF FUNC. EVALS.: 113
 CUMULATIVE NO. OF FUNC. EVALS.:      339
 NPARAMETR:  1.0019E+00  6.2258E-01  4.7106E-01  1.2186E+00  5.0273E-01  8.5973E-01  1.8146E+00  3.8451E-01  8.3334E-01  1.9801E-01
             2.8693E+00
 PARAMETER:  1.0189E-01 -3.7388E-01 -6.5277E-01  2.9767E-01 -5.8770E-01 -5.1135E-02  6.9585E-01 -8.5578E-01 -8.2312E-02 -1.5194E+00
             1.1541E+00
 GRADIENT:  -4.2039E+01  3.5498E+01 -1.9149E+01  1.0609E+02 -5.4770E+00 -9.2222E+00 -7.7538E+00  5.5786E+00  7.4561E+00  8.5795E-01
            -1.1698E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2630.42312877364        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  1.0159E+00  5.6706E-01  4.5671E-01  1.1754E+00  4.8663E-01  8.7615E-01  1.8963E+00  1.6495E-01  7.8523E-01  1.3863E-01
             2.8911E+00
 PARAMETER:  1.1576E-01 -4.6729E-01 -6.8370E-01  2.6163E-01 -6.2024E-01 -3.2216E-02  7.3992E-01 -1.7021E+00 -1.4178E-01 -1.8759E+00
             1.1616E+00
 GRADIENT:   6.0910E-01 -2.5112E-01 -1.7511E+00 -1.6616E+00  2.0504E+00 -6.3166E-01 -1.3934E+00  2.3699E-01 -1.7134E+00 -3.7931E-01
             2.3199E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2630.62913474184        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      649
 NPARAMETR:  1.0126E+00  5.6310E-01  4.5781E-01  1.1742E+00  4.8457E-01  8.7652E-01  1.8864E+00  1.0218E-01  7.9233E-01  2.2462E-01
             2.8825E+00
 PARAMETER:  1.1251E-01 -4.7429E-01 -6.8129E-01  2.6062E-01 -6.2450E-01 -3.1799E-02  7.3466E-01 -2.1810E+00 -1.3278E-01 -1.3933E+00
             1.1586E+00
 GRADIENT:  -7.7387E+00 -9.1619E-01  1.7647E+00 -1.0331E+01 -4.0729E+00 -4.2006E-01 -7.6133E-01  2.0346E-01  8.2785E-01  2.2897E-01
            -1.0378E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2630.74502479062        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      824
 NPARAMETR:  1.0156E+00  5.6208E-01  4.5557E-01  1.1788E+00  4.8314E-01  8.7768E-01  1.8930E+00  3.2620E-02  7.8858E-01  2.2181E-01
             2.8863E+00
 PARAMETER:  1.1548E-01 -4.7611E-01 -6.8620E-01  2.6448E-01 -6.2744E-01 -3.0476E-02  7.3817E-01 -3.3228E+00 -1.3752E-01 -1.4060E+00
             1.1600E+00
 GRADIENT:   1.2152E-02 -3.1347E-01 -9.3119E-01  7.5874E-02 -9.3429E-01  3.0775E-02  9.6472E-02  1.7948E-02 -2.4267E-02 -1.1518E-02
             2.1063E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2630.76532910099        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1000
 NPARAMETR:  1.0156E+00  5.6916E-01  4.6271E-01  1.1780E+00  4.8970E-01  8.7767E-01  1.8866E+00  1.0000E-02  7.8930E-01  2.2902E-01
             2.8857E+00
 PARAMETER:  1.1551E-01 -4.6359E-01 -6.7065E-01  2.6386E-01 -6.1396E-01 -3.0481E-02  7.3475E-01 -8.7987E+00 -1.3661E-01 -1.3740E+00
             1.1598E+00
 GRADIENT:   3.9954E-02 -6.3742E-02  1.2603E-01  1.9680E-01 -8.2123E-02  8.8867E-03  3.7024E-02  0.0000E+00 -3.3363E-02 -3.1333E-03
            -5.3521E-03

0ITERATION NO.:   41    OBJECTIVE VALUE:  -2630.76532910099        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1022
 NPARAMETR:  1.0156E+00  5.6916E-01  4.6271E-01  1.1780E+00  4.8970E-01  8.7767E-01  1.8866E+00  1.0000E-02  7.8930E-01  2.2902E-01
             2.8857E+00
 PARAMETER:  1.1551E-01 -4.6359E-01 -6.7065E-01  2.6386E-01 -6.1396E-01 -3.0481E-02  7.3475E-01 -8.7987E+00 -1.3661E-01 -1.3740E+00
             1.1598E+00
 GRADIENT:   3.9954E-02 -6.3742E-02  1.2603E-01  1.9680E-01 -8.2123E-02  8.8867E-03  3.7024E-02  0.0000E+00 -3.3363E-02 -3.1333E-03
            -5.3521E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1022
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6616E-03  8.3197E-03 -3.4344E-04 -1.0247E-02  8.4728E-03
 SE:             2.9202E-02  2.7260E-02  2.5141E-04  2.6230E-02  8.5083E-03
 N:                     100         100         100         100         100

 P VAL.:         9.5462E-01  7.6021E-01  1.7192E-01  6.9603E-01  3.1933E-01

 ETASHRINKSD(%)  2.1694E+00  8.6765E+00  9.9158E+01  1.2128E+01  7.1496E+01
 ETASHRINKVR(%)  4.2918E+00  1.6600E+01  9.9993E+01  2.2785E+01  9.1875E+01
 EBVSHRINKSD(%)  2.3224E+00  7.1650E+00  9.9134E+01  1.2256E+01  7.2947E+01
 EBVSHRINKVR(%)  4.5908E+00  1.3817E+01  9.9993E+01  2.3010E+01  9.2682E+01
 RELATIVEINF(%)  9.5296E+01  2.0875E+01  6.5902E-04  6.2334E+01  3.9871E-01
 EPSSHRINKSD(%)  1.5339E+01
 EPSSHRINKVR(%)  2.8325E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          882
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1621.0075725730426     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2630.7653291009906     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1009.7577565279480     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.28
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    11.40
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2630.765       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  5.69E-01  4.63E-01  1.18E+00  4.90E-01  8.78E-01  1.89E+00  1.00E-02  7.89E-01  2.29E-01  2.89E+00
 


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
+        1.34E+03
 
 TH 2
+       -5.76E+00  8.32E+02
 
 TH 3
+        2.78E+01  5.90E+02  3.92E+03
 
 TH 4
+       -3.45E+01  7.81E+01 -4.27E+02  9.90E+02
 
 TH 5
+       -3.51E+01 -1.47E+03 -4.69E+03  5.19E+02  6.80E+03
 
 TH 6
+        6.20E+00 -1.13E+00  9.79E+00 -1.03E+01 -1.31E+01  2.33E+02
 
 TH 7
+       -2.13E-01  1.64E+01 -6.85E+01  2.26E+00  8.02E+01 -2.85E-01  4.01E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        4.59E+00 -1.62E+01  5.11E+01  1.78E+01 -6.20E+01 -6.99E-01 -2.07E+00  0.00E+00  1.81E+02
 
 TH10
+       -8.68E-01 -1.38E+01 -1.85E+02 -1.49E+01  1.74E+02  9.06E-01  1.42E+01  0.00E+00  3.44E+00  6.11E+01
 
 TH11
+       -1.96E+01 -1.10E+01 -3.51E+01 -2.27E+01  4.56E+01  3.98E+00  3.62E+00  0.00E+00  1.68E+01  9.96E+00  1.39E+02
 
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
 #CPUT: Total CPU Time in Seconds,       33.784
Stop Time:
Wed Sep 29 04:53:16 CDT 2021
