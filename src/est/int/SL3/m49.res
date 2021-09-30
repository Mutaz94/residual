Wed Sep 29 04:23:42 CDT 2021
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
$DATA ../../../../data/int/SL3/dat49.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      976
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

 TOT. NO. OF OBS RECS:      876
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
 RAW OUTPUT FILE (FILE): m49.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   94.7653744144389        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0458E+02  1.3480E+02  1.4591E+02  2.1725E+01  1.8718E+02  1.4225E+01 -1.2405E+02 -5.1736E+02 -1.6665E+02 -5.6661E+01
            -6.7323E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2454.88677233027        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.4717E-01  1.0712E+00  1.4072E+00  1.0352E+00  1.0744E+00  9.8487E-01  1.7845E+00  1.0790E+00  1.1851E+00  1.1491E+00
             3.9820E+00
 PARAMETER:  4.5725E-02  1.6875E-01  4.4159E-01  1.3459E-01  1.7174E-01  8.4758E-02  6.7912E-01  1.7605E-01  2.6980E-01  2.3900E-01
             1.4818E+00
 GRADIENT:  -6.7787E+01  1.0140E+01 -7.0543E-01 -4.4404E-01 -2.5654E+01 -9.5232E+00  5.3197E+01  6.1318E+00  4.0442E+01  2.6437E+01
             6.5696E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2519.71591652134        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  9.7533E-01  6.6447E-01  1.6327E+01  1.4102E+00  2.1061E+00  1.0790E+00  1.2063E+00  2.5991E+00  1.1038E+00  1.7904E+00
             3.6121E+00
 PARAMETER:  7.5021E-02 -3.0877E-01  2.8928E+00  4.4372E-01  8.4484E-01  1.7601E-01  2.8757E-01  1.0552E+00  1.9875E-01  6.8246E-01
             1.3843E+00
 GRADIENT:   1.7037E+01  2.3789E+00 -4.3637E+00  8.3012E+01  6.7627E+01  2.8148E+01  4.0126E+00  2.5934E+00  4.0023E+01  1.8258E+01
             5.4481E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2616.71981826552        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  9.2207E-01  1.0802E+00  2.9206E+00  1.0515E+00  1.3645E+00  1.0029E+00  1.2091E+00  2.5480E+00  1.0337E+00  1.2985E+00
             2.5825E+00
 PARAMETER:  1.8870E-02  1.7717E-01  1.1718E+00  1.5018E-01  4.1080E-01  1.0292E-01  2.8986E-01  1.0353E+00  1.3315E-01  3.6123E-01
             1.0488E+00
 GRADIENT:  -3.6584E+01  2.3114E+01 -7.7006E-01  4.2702E+01 -8.3426E+00 -2.8826E+00  1.5048E+00  6.7571E+00  6.1415E+00  8.3335E+00
            -9.0377E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2622.30980304540        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      383
 NPARAMETR:  9.6278E-01  1.0808E+00  3.8387E+00  1.0533E+00  1.5143E+00  1.0172E+00  1.2761E+00  2.7301E+00  9.8009E-01  1.3309E+00
             2.6044E+00
 PARAMETER:  6.2068E-02  1.7768E-01  1.4451E+00  1.5194E-01  5.1496E-01  1.1701E-01  3.4385E-01  1.1043E+00  7.9891E-02  3.8584E-01
             1.0572E+00
 GRADIENT:  -1.3289E+01 -2.6346E+00 -1.6087E+00  5.8343E+00  5.5704E+00 -5.3938E+00 -1.1051E+00 -3.5626E+00  1.1180E-01 -1.6736E-01
            -8.2791E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2622.38864613900        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      522
 NPARAMETR:  9.6374E-01  1.0820E+00  3.8743E+00  1.0512E+00  1.5154E+00  1.0307E+00  1.2739E+00  2.7293E+00  9.7952E-01  1.3339E+00
             2.6187E+00
 PARAMETER:  6.3068E-02  1.7885E-01  1.4544E+00  1.4990E-01  5.1568E-01  1.3023E-01  3.4210E-01  1.1041E+00  7.9310E-02  3.8813E-01
             1.0627E+00
 GRADIENT:  -1.1148E+01 -3.6680E+00 -6.4195E-01  3.1665E+00  3.8479E+00 -2.9177E-01 -1.2354E+00 -3.7683E+00 -6.1360E-03  2.5895E-01
             3.9034E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2622.49131772777        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.6960E-01  1.0939E+00  3.8390E+00  1.0418E+00  1.5152E+00  1.0310E+00  1.2877E+00  2.7484E+00  9.6719E-01  1.3279E+00
             2.6248E+00
 PARAMETER:  6.9133E-02  1.8978E-01  1.4452E+00  1.4095E-01  5.1556E-01  1.3053E-01  3.5287E-01  1.1110E+00  6.6635E-02  3.8360E-01
             1.0650E+00
 GRADIENT:   9.7225E-01 -3.6412E+00 -4.5854E-01  9.0640E-01  2.3142E+00 -6.0347E-02 -6.3899E-01 -3.3357E+00 -8.2364E-01 -2.0139E-01
             8.1104E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2622.65183334448        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.6889E-01  1.1853E+00  3.6029E+00  9.8314E-01  1.5313E+00  1.0320E+00  1.2358E+00  2.7483E+00  1.0027E+00  1.3396E+00
             2.6246E+00
 PARAMETER:  6.8400E-02  2.6996E-01  1.3817E+00  8.2994E-02  5.2610E-01  1.3148E-01  3.1172E-01  1.1110E+00  1.0274E-01  3.9237E-01
             1.0649E+00
 GRADIENT:  -7.3174E-01  1.7192E+00  1.4255E-02  1.7346E+00 -1.6401E+00  1.5072E-01  3.9438E-01 -3.0294E+00 -2.5184E-01 -6.3903E-01
             5.7023E+00

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2622.66467098424        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      971
 NPARAMETR:  9.6915E-01  1.2036E+00  3.5833E+00  9.6943E-01  1.5429E+00  1.0323E+00  1.2119E+00  2.7484E+00  1.0188E+00  1.3532E+00
             2.6246E+00
 PARAMETER:  6.8666E-02  2.8534E-01  1.3763E+00  6.8958E-02  5.3365E-01  1.3182E-01  2.9219E-01  1.1110E+00  1.1859E-01  4.0250E-01
             1.0649E+00
 GRADIENT:  -2.2677E-01  7.0651E-02 -1.3177E-02  1.1650E-01  3.5557E-03  2.7828E-01 -5.2905E-02 -3.1472E+00 -4.0023E-03 -1.1970E-03
             5.5686E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      971
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9707E-03 -1.6955E-02 -3.4928E-02  7.5773E-03 -3.2829E-02
 SE:             2.9374E-02  2.0874E-02  1.6214E-02  2.1954E-02  2.3096E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4651E-01  4.1663E-01  3.1228E-02  7.2999E-01  1.5520E-01

 ETASHRINKSD(%)  1.5947E+00  3.0070E+01  4.5681E+01  2.6451E+01  2.2624E+01
 ETASHRINKVR(%)  3.1640E+00  5.1097E+01  7.0494E+01  4.5906E+01  4.0130E+01
 EBVSHRINKSD(%)  1.5970E+00  3.0121E+01  5.1032E+01  2.8891E+01  1.9780E+01
 EBVSHRINKVR(%)  3.1686E+00  5.1169E+01  7.6021E+01  4.9436E+01  3.5648E+01
 RELATIVEINF(%)  9.6785E+01  4.6489E+00  7.4152E+00  4.8368E+00  3.0516E+01
 EPSSHRINKSD(%)  1.7535E+01
 EPSSHRINKVR(%)  3.1996E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          876
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1609.9803101745865     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2622.6646709842425     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1012.6843608096560     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.59
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    14.63
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2622.665       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.69E-01  1.20E+00  3.58E+00  9.69E-01  1.54E+00  1.03E+00  1.21E+00  2.75E+00  1.02E+00  1.35E+00  2.62E+00
 


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
+        1.08E+03
 
 TH 2
+        1.31E+02  1.18E+06
 
 TH 3
+       -9.53E+00 -8.17E+04  5.68E+03
 
 TH 4
+       -1.22E+01  4.16E+06  8.39E+01  1.48E+07
 
 TH 5
+       -2.76E+00  4.90E+05 -1.74E+01  3.45E+01  1.64E+02
 
 TH 6
+        6.06E+00  2.97E+06 -1.51E+01 -4.14E+00 -1.70E+00  1.74E+02
 
 TH 7
+        1.37E+00  1.14E+06 -2.51E+01 -5.10E+00 -1.14E+00 -5.75E-01  3.80E+01
 
 TH 8
+        1.56E+01 -7.26E+01  3.46E+01 -1.49E+02  8.01E+00  2.42E+01  4.05E+01  1.46E+04
 
 TH 9
+        1.90E+00  3.34E+06 -1.17E+01  4.35E+00  3.97E+00 -8.98E-03  2.69E+01  2.03E+01  5.51E+01
 
 TH10
+        1.46E-02 -7.41E+05  5.15E+04 -2.63E+06 -2.82E+01  9.22E-01  4.27E+00 -1.88E+00 -2.01E+00  4.67E+05
 
 TH11
+       -3.18E+01  6.27E+01 -4.08E+01  1.59E+02 -1.15E+01 -2.44E+01 -4.38E+01 -1.63E+04 -1.42E+01  8.73E+00  1.83E+04
 
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
 #CPUT: Total CPU Time in Seconds,       41.344
Stop Time:
Wed Sep 29 04:24:25 CDT 2021
