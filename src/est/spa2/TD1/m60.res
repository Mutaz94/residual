Thu Sep 30 07:33:21 CDT 2021
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
$DATA ../../../../data/spa2/TD1/dat60.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m60.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1955.38780706698        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0741E+02 -7.0469E+01  7.2790E+01 -7.0931E+00  7.8992E+01  4.6938E+01 -2.2963E+01 -2.2794E+02 -2.3102E+01  2.1649E+01
            -7.8697E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2365.23142262778        NO. OF FUNC. EVALS.:  80
 CUMULATIVE NO. OF FUNC. EVALS.:       93
 NPARAMETR:  8.0453E-01  1.0502E+00  9.4995E-01  9.8732E-01  9.4653E-01  1.0206E+00  1.0273E+00  1.1747E+00  1.0029E+00  9.6936E-01
             1.5685E+00
 PARAMETER: -1.1749E-01  1.4903E-01  4.8654E-02  8.7242E-02  4.5049E-02  1.2044E-01  1.2696E-01  2.6098E-01  1.0287E-01  6.8883E-02
             5.5015E-01
 GRADIENT:  -2.5763E+02 -1.2065E+01 -6.0753E+00  3.3131E+00 -2.3073E+01 -2.7574E+01 -1.1918E+01  1.9274E+01  2.6077E+01  2.6930E+01
             3.6444E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2376.30401010676        NO. OF FUNC. EVALS.: 108
 CUMULATIVE NO. OF FUNC. EVALS.:      201
 NPARAMETR:  7.9141E-01  9.7893E-01  7.8666E-01  1.0131E+00  8.4558E-01  1.0278E+00  1.4109E+00  8.2916E-01  9.5568E-01  7.6262E-01
             1.5127E+00
 PARAMETER: -1.3394E-01  7.8705E-02 -1.3996E-01  1.1303E-01 -6.7738E-02  1.2743E-01  4.4422E-01 -8.7338E-02  5.4666E-02 -1.7100E-01
             5.1388E-01
 GRADIENT:  -5.0089E+02 -2.1969E+01 -2.0358E+01 -2.7092E+01 -2.7784E+01 -1.1844E+02  1.4651E+01  1.4485E+01  2.9183E+01  1.7851E+01
             3.4188E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2475.68110321405        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  9.2857E-01  7.3103E-01  7.8112E-01  1.0923E+00  6.9820E-01  8.3352E-01  1.4864E+00  2.6350E-01  8.7574E-01  7.9173E-01
             1.0840E+00
 PARAMETER:  2.5889E-02 -2.1330E-01 -1.4702E-01  1.8829E-01 -2.5925E-01 -8.2095E-02  4.9633E-01 -1.2337E+00 -3.2682E-02 -1.3353E-01
             1.8070E-01
 GRADIENT:  -2.4711E+02 -5.9552E+01  1.3044E+02 -1.2949E+02 -1.7551E+02 -1.2001E+02 -3.8709E+00 -1.5302E+00  1.0581E+01  3.3176E+00
             8.0797E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2520.75302953540        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      565
 NPARAMETR:  9.7745E-01  9.5925E-01  8.2090E-01  1.0122E+00  8.7944E-01  9.4520E-01  1.4180E+00  6.3841E-01  8.5366E-01  6.8728E-01
             9.9159E-01
 PARAMETER:  7.7195E-02  5.8399E-02 -9.7350E-02  1.1208E-01 -2.8474E-02  4.3643E-02  4.4928E-01 -3.4877E-01 -5.8219E-02 -2.7501E-01
             9.1555E-02
 GRADIENT:  -6.5492E+01 -4.1024E+01 -1.1194E+01 -3.0169E+01  2.9051E+01 -3.7810E+01  5.0130E+00  6.7060E-01 -2.0713E+00 -7.1133E+00
             7.5491E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2524.19523258042        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  9.8500E-01  1.0299E+00  8.3609E-01  1.0018E+00  9.0526E-01  9.7592E-01  1.2982E+00  6.2499E-01  8.6318E-01  7.7800E-01
             9.8538E-01
 PARAMETER:  8.4881E-02  1.2947E-01 -7.9022E-02  1.0182E-01  4.6637E-04  7.5627E-02  3.6098E-01 -3.7002E-01 -4.7132E-02 -1.5102E-01
             8.5276E-02
 GRADIENT:  -4.3776E+01 -1.1268E+01 -4.1260E+00 -5.9907E+00  3.7436E+00 -2.2478E+01 -1.8824E+00  2.1672E-01 -1.5651E+00 -6.4984E-02
             3.7471E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2524.30112851760        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  9.8499E-01  1.0473E+00  8.4709E-01  1.0018E+00  9.1442E-01  9.7592E-01  1.3015E+00  6.2499E-01  8.6318E-01  7.8747E-01
             9.8538E-01
 PARAMETER:  8.4881E-02  1.4625E-01 -6.5944E-02  1.0182E-01  1.0530E-02  7.5626E-02  3.6353E-01 -3.7002E-01 -4.7131E-02 -1.3893E-01
             8.5274E-02
 GRADIENT:  -4.3805E+01 -5.4058E-02 -1.7421E-02  5.4863E+00  2.7750E-02 -2.2481E+01 -5.4695E-03 -4.2308E-01 -1.4922E+00 -7.3873E-03
            -8.3186E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2525.03192749871        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:     1044
 NPARAMETR:  9.8768E-01  1.0452E+00  8.4648E-01  9.9861E-01  9.1356E-01  1.0321E+00  1.2901E+00  6.2982E-01  8.6458E-01  7.8488E-01
             9.8569E-01
 PARAMETER:  8.7608E-02  1.4425E-01 -6.6664E-02  9.8605E-02  9.5991E-03  1.3156E-01  3.5474E-01 -3.6232E-01 -4.5510E-02 -1.4223E-01
             8.5590E-02
 GRADIENT:   4.2600E+02  7.8465E+01  6.8407E+00  9.2690E+01  2.4740E+01  1.2849E+02  2.8657E+01  4.1504E-01  6.9493E+00  1.8178E+00
             1.0420E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2525.18078152301        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1223            RESET HESSIAN, TYPE II
 NPARAMETR:  9.9188E-01  1.0464E+00  8.4651E-01  9.9878E-01  9.1469E-01  1.0300E+00  1.3033E+00  6.3190E-01  8.6587E-01  7.8545E-01
             9.8572E-01
 PARAMETER:  9.1847E-02  1.4534E-01 -6.6628E-02  9.8783E-02  1.0827E-02  1.2951E-01  3.6491E-01 -3.5902E-01 -4.4019E-02 -1.4150E-01
             8.5620E-02
 GRADIENT:   4.3466E+02  8.0014E+01  5.5073E+00  9.4662E+01  2.6608E+01  1.2469E+02  3.1950E+01  5.1531E-01  7.6092E+00  2.2080E+00
             1.1217E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2525.18078152301        NO. OF FUNC. EVALS.:  62
 CUMULATIVE NO. OF FUNC. EVALS.:     1285
 NPARAMETR:  9.9188E-01  1.0464E+00  8.4651E-01  9.9878E-01  9.1469E-01  1.0300E+00  1.3033E+00  6.3190E-01  8.6587E-01  7.8545E-01
             9.8572E-01
 PARAMETER:  9.1847E-02  1.4534E-01 -6.6628E-02  9.8783E-02  1.0827E-02  1.2951E-01  3.6491E-01 -3.5902E-01 -4.4019E-02 -1.4150E-01
             8.5620E-02
 GRADIENT:  -3.0840E+05 -1.0936E+01 -3.5093E+05 -8.3756E+01  3.5100E+05 -1.7252E-01  2.7239E+00  9.7580E+04  3.5092E+05  5.1563E-02
            -3.5143E+05

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1285
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2530E-02 -4.5328E-03 -1.7937E-02  4.3334E-03 -1.5113E-02
 SE:             2.9883E-02  2.4544E-02  1.1619E-02  2.5233E-02  2.1925E-02
 N:                     100         100         100         100         100

 P VAL.:         6.7500E-01  8.5348E-01  1.2266E-01  8.6364E-01  4.9065E-01

 ETASHRINKSD(%)  1.0000E-10  1.7775E+01  6.1074E+01  1.5466E+01  2.6547E+01
 ETASHRINKVR(%)  1.0000E-10  3.2390E+01  8.4848E+01  2.8540E+01  4.6047E+01
 EBVSHRINKSD(%)  2.8926E-01  1.7424E+01  6.3033E+01  1.6738E+01  2.6336E+01
 EBVSHRINKVR(%)  5.7768E-01  3.1811E+01  8.6335E+01  3.0674E+01  4.5737E+01
 RELATIVEINF(%)  9.9414E+01  2.2085E+01  6.2236E+00  2.5767E+01  1.1279E+01
 EPSSHRINKSD(%)  2.9753E+01
 EPSSHRINKVR(%)  5.0654E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2525.1807815230059     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1422.4545416773988     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.01
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     8.65
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2525.181       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  1.05E+00  8.47E-01  9.99E-01  9.15E-01  1.03E+00  1.30E+00  6.32E-01  8.66E-01  7.85E-01  9.86E-01
 


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
+        8.92E+07
 
 TH 2
+        9.14E+02  7.59E+07
 
 TH 3
+       -1.05E+08  2.37E+03  2.45E+08
 
 TH 4
+       -8.86E+07  5.78E+07  2.44E+04  8.79E+07
 
 TH 5
+       -3.45E+00 -1.26E+08  1.13E+08 -9.60E+07  1.05E+08
 
 TH 6
+       -2.30E+03 -8.78E-01 -2.72E+03  2.65E-01  2.52E+03  1.86E+02
 
 TH 7
+       -1.86E+07  1.21E+07  2.18E+07  1.85E+07 -2.02E+07 -1.38E+07  3.88E+06
 
 TH 8
+        6.10E+02 -8.47E+02  1.91E+04 -9.14E+03  9.18E+02  1.01E+03  2.19E+02  1.70E+07
 
 TH 9
+        1.61E+03  6.66E+07  5.04E+04  1.01E+08  2.42E+03  7.60E+07  2.13E+07 -2.01E+04  1.17E+08
 
 TH10
+       -7.96E+07 -1.73E+03 -6.74E+01  1.58E+08  1.82E+03 -5.92E+07  9.60E+00  3.10E+01  1.82E+08  1.03E+02
 
 TH11
+       -1.42E+03  1.92E+03 -4.43E+04  2.11E+04 -2.13E+03 -2.34E+03 -4.98E+02  3.91E+07  1.03E+08 -2.36E+01  9.05E+07
 
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
 #CPUT: Total CPU Time in Seconds,       31.744
Stop Time:
Thu Sep 30 07:33:55 CDT 2021