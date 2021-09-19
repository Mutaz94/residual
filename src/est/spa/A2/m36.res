Sat Sep 18 09:49:18 CDT 2021
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
$DATA ../../../../data/spa/A2/dat36.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m36.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -895.339865044841        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.7575E+01 -3.1526E+01  4.4580E+01 -6.3489E+01  1.5342E+02 -1.9235E+01 -3.0588E+01 -3.5924E+01 -4.3470E+01 -1.0317E+02
            -1.2975E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1344.49117926832        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0323E+00  9.9978E-01  8.2914E-01  1.1229E+00  8.4479E-01  9.9426E-01  1.0148E+00  1.0864E+00  9.5754E-01  1.0449E+00
             3.4924E+00
 PARAMETER:  1.3175E-01  9.9782E-02 -8.7364E-02  2.1592E-01 -6.8670E-02  9.4247E-02  1.1474E-01  1.8284E-01  5.6608E-02  1.4395E-01
             1.3506E+00
 GRADIENT:  -7.7634E+00  1.5533E+01 -1.7560E+01  4.6980E+01 -1.4153E+00 -2.1275E+00  4.4897E+00  6.8678E+00  1.0529E+01  2.0599E+01
             1.1824E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1355.40736084233        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.0398E+00  7.5599E-01  2.6726E-01  1.1525E+00  3.6839E-01  1.1363E+00  1.3156E+00  9.1789E-01  9.3928E-01  3.7437E-01
             2.9638E+00
 PARAMETER:  1.3904E-01 -1.7973E-01 -1.2196E+00  2.4195E-01 -8.9861E-01  2.2782E-01  3.7429E-01  1.4320E-02  3.7361E-02 -8.8252E-01
             1.1865E+00
 GRADIENT:   8.7706E+00  9.2090E+01  2.8210E-01  1.7000E+02 -7.4800E+01  2.7311E+01  4.3192E-01  6.0351E+00  7.9563E+00  4.6902E+00
             9.2842E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1393.97395983623        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0178E+00  6.8803E-01  2.2733E-01  1.0434E+00  3.3571E-01  1.0349E+00  1.4029E+00  1.5887E+00  1.0233E+00  3.8366E-01
             1.9812E+00
 PARAMETER:  1.1764E-01 -2.7392E-01 -1.3813E+00  1.4251E-01 -9.9150E-01  1.3427E-01  4.3857E-01  5.6292E-01  1.2307E-01 -8.5801E-01
             7.8369E-01
 GRADIENT:   2.0764E+01  4.6778E+01  1.1259E+01  4.6099E+01 -5.9161E+01  1.1341E+00  1.2293E+01  1.2764E+01  1.3552E+01  4.5018E+00
             1.9939E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1401.64209939888        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0042E+00  9.6197E-01  2.3069E-01  9.0588E-01  4.3829E-01  1.0299E+00  1.0646E+00  1.6814E+00  9.6877E-01  1.4363E-01
             2.0265E+00
 PARAMETER:  1.0421E-01  6.1230E-02 -1.3667E+00  1.1510E-03 -7.2487E-01  1.2943E-01  1.6264E-01  6.1965E-01  6.8273E-02 -1.8405E+00
             8.0632E-01
 GRADIENT:   6.8373E+00  2.2759E+01  5.2726E+00  2.1951E+01 -2.1158E+01  3.1991E+00 -8.8673E+00  1.4663E-01 -1.7502E+00  2.7626E-01
             2.0148E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1402.24781327885        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  9.9934E-01  9.6676E-01  2.2503E-01  8.8455E-01  4.4341E-01  1.0204E+00  1.1051E+00  1.6842E+00  9.7515E-01  9.8971E-02
             2.0123E+00
 PARAMETER:  9.9338E-02  6.6194E-02 -1.3915E+00 -2.2672E-02 -7.1327E-01  1.2021E-01  1.9998E-01  6.2131E-01  7.4835E-02 -2.2129E+00
             7.9928E-01
 GRADIENT:  -2.6637E-01 -4.8524E-02 -6.9547E-01  1.3266E+00  5.3375E-01  1.5405E-01 -3.3141E-01  4.8371E-01  1.0491E-01  1.5601E-01
            -5.4576E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1402.59656898559        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  1.0034E+00  1.0844E+00  2.2722E-01  8.3264E-01  4.8990E-01  1.0184E+00  1.0448E+00  1.8041E+00  9.9960E-01  4.6660E-02
             2.0602E+00
 PARAMETER:  1.0336E-01  1.8100E-01 -1.3818E+00 -8.3154E-02 -6.1355E-01  1.1826E-01  1.4386E-01  6.9006E-01  9.9604E-02 -2.9649E+00
             8.2278E-01
 GRADIENT:   4.1181E-01  5.0725E-01  1.0972E-01  2.0268E-01 -4.6135E-01 -3.6532E-03  2.9705E-02  1.5927E-01 -2.0083E-01  1.9112E-02
            -9.8918E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1402.60201303198        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  1.0031E+00  1.0835E+00  2.2685E-01  8.3246E-01  4.8971E-01  1.0184E+00  1.0451E+00  1.8028E+00  9.9934E-01  3.0484E-02
             2.0611E+00
 PARAMETER:  1.0306E-01  1.8021E-01 -1.3835E+00 -8.3370E-02 -6.1395E-01  1.1822E-01  1.4413E-01  6.8933E-01  9.9345E-02 -3.3906E+00
             8.2325E-01
 GRADIENT:  -1.4547E-01 -5.8217E-01 -2.7729E-01  8.3539E-03  5.9590E-01 -1.6551E-02  2.3328E-02  1.3707E-01 -2.0306E-01  8.1127E-03
             4.1722E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1402.60601148939        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      835
 NPARAMETR:  1.0031E+00  1.0843E+00  2.2687E-01  8.3222E-01  4.8978E-01  1.0185E+00  1.0447E+00  1.8014E+00  1.0012E+00  1.0000E-02
             2.0612E+00
 PARAMETER:  1.0314E-01  1.8094E-01 -1.3834E+00 -8.3660E-02 -6.1380E-01  1.1830E-01  1.4371E-01  6.8859E-01  1.0124E-01 -4.7997E+00
             8.2328E-01
 GRADIENT:   2.6140E-02  9.0137E-02  9.3020E-03  2.1345E-02 -1.0176E-01  9.0487E-03  9.5716E-03  1.9146E-02 -2.3080E-03  0.0000E+00
             1.9062E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      835
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3504E-04 -4.0036E-03 -1.0568E-02 -2.8788E-03 -2.7847E-04
 SE:             2.9431E-02  2.4914E-02  1.9186E-02  2.3034E-02  2.7358E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9363E-01  8.7233E-01  5.8177E-01  9.0054E-01  3.0873E-01

 ETASHRINKSD(%)  1.4034E+00  1.6534E+01  3.5725E+01  2.2835E+01  9.9083E+01
 ETASHRINKVR(%)  2.7872E+00  3.0335E+01  5.8687E+01  4.0455E+01  9.9992E+01
 EBVSHRINKSD(%)  1.5737E+00  1.6154E+01  3.6429E+01  2.2716E+01  9.9087E+01
 EBVSHRINKVR(%)  3.1227E+00  2.9699E+01  5.9587E+01  4.0272E+01  9.9992E+01
 RELATIVEINF(%)  9.5176E+01  5.1906E+00  1.3638E+01  9.3370E+00  6.6057E-04
 EPSSHRINKSD(%)  4.0726E+01
 EPSSHRINKVR(%)  6.4866E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1402.6060114893864     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -667.45518492564827     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     8.95
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.37
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1402.606       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.08E+00  2.27E-01  8.32E-01  4.90E-01  1.02E+00  1.04E+00  1.80E+00  1.00E+00  1.00E-02  2.06E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.24E+03
 
 TH 2
+        1.41E+01  6.17E+02
 
 TH 3
+        2.84E+02  6.28E+02  2.94E+03
 
 TH 4
+       -2.55E+01  1.91E+02 -9.03E+02  8.11E+02
 
 TH 5
+        9.05E+01 -1.34E+03 -2.43E+03  4.86E+02  4.11E+03
 
 TH 6
+       -4.19E+01 -1.08E+01 -3.79E+01 -1.47E+01 -7.45E+00  3.72E+00
 
 TH 7
+       -6.97E+00 -7.87E+00 -3.19E+01  3.06E+00  1.79E+01  1.07E+00  5.01E-01
 
 TH 8
+       -2.72E+01  8.42E+00 -4.51E+01  4.82E-01 -4.19E+01  3.61E+00  1.17E+00  4.78E+00
 
 TH 9
+       -1.44E+00 -1.03E+01 -1.67E+00 -1.04E+01  1.30E+01  4.19E-01  1.19E-01  2.90E-02  2.46E-01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.27E+01 -3.64E+00 -3.69E+00 -2.11E+01 -2.81E+01  2.75E+00  5.89E-01  2.55E+00  3.45E-01  0.00E+00  2.26E+00
 
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
+        1.03E+03
 
 TH 2
+       -1.36E+01  6.20E+02
 
 TH 3
+       -7.13E+01  5.08E+02  2.86E+03
 
 TH 4
+       -4.51E+01  2.24E+02 -8.47E+02  9.51E+02
 
 TH 5
+       -7.06E+00 -1.23E+03 -2.09E+03  5.20E+02  3.91E+03
 
 TH 6
+       -2.84E-01 -5.04E+00  1.61E+00 -9.20E+00  8.19E+00  1.78E+02
 
 TH 7
+       -1.93E+00  2.17E+01 -3.73E+01 -1.40E+01  2.26E+01  5.79E-01  9.11E+01
 
 TH 8
+        2.93E+00  1.66E+00 -4.84E+01 -1.66E+00 -5.50E+01  2.03E+00  2.12E+00  1.98E+01
 
 TH 9
+        3.25E+00 -2.13E+01  2.08E+01  1.33E+01  2.11E+01  1.16E+00  1.58E+01  1.70E+00  6.50E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.32E+01 -1.29E+01  1.78E+01 -3.38E+00 -2.38E+01  1.03E+00  7.81E+00  1.86E+00  1.40E+01  0.00E+00  5.27E+01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.03E+03
 
 TH 2
+       -6.65E+01  6.09E+02
 
 TH 3
+       -4.09E+02  3.93E+02  2.70E+03
 
 TH 4
+       -4.35E+01  3.44E+02 -8.73E+02  9.57E+02
 
 TH 5
+       -1.96E+02 -9.51E+02 -1.94E+03  3.65E+02  3.71E+03
 
 TH 6
+        3.50E+01  2.51E+01 -1.45E+02  5.62E+01 -1.13E+02  1.59E+02
 
 TH 7
+        1.72E+01  4.88E+01  1.14E+02 -7.97E+01 -1.42E+02 -1.43E+01  9.33E+01
 
 TH 8
+        6.29E+01  7.65E+00 -1.40E+02  3.85E+01 -8.98E+01  3.15E+01 -2.17E+00  3.35E+01
 
 TH 9
+        9.48E+01 -4.73E+01 -8.59E+01  1.86E+01 -1.31E+02  3.74E+01  1.12E+01  3.61E+01  1.21E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        1.44E+02 -6.46E+01 -7.99E+01 -3.61E+01 -2.09E+02  5.08E+01  1.36E+01  4.52E+01  1.23E+02  0.00E+00  1.64E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       15.388
Stop Time:
Sat Sep 18 09:49:35 CDT 2021