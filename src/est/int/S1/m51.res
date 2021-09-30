Wed Sep 29 01:10:49 CDT 2021
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
$DATA ../../../../data/int/S1/dat51.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m51.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3278.00980417116        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3115E+02  1.2792E+02  1.1428E+02  9.1934E+01  1.5299E+02  5.4465E+01 -2.2494E+01 -5.2114E+02 -1.4424E+02 -4.3383E+01
            -3.1477E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3540.89222776272        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      149
 NPARAMETR:  9.6106E-01  8.8395E-01  9.2207E-01  9.9166E-01  9.1427E-01  9.0782E-01  1.0703E+00  2.4057E+00  1.0571E+00  1.1101E+00
             1.1775E+00
 PARAMETER:  6.0279E-02 -2.3357E-02  1.8867E-02  9.1620E-02  1.0374E-02  3.2889E-03  1.6798E-01  9.7784E-01  1.5553E-01  2.0444E-01
             2.6336E-01
 GRADIENT:   2.5666E+01 -4.9779E+01 -1.1932E+01 -6.8312E+01  1.8450E+00 -1.6955E+01 -1.0358E+01 -6.0039E+01  3.3307E-01 -1.9788E+01
             1.5171E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3546.31122052199        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      328
 NPARAMETR:  9.4857E-01  9.3963E-01  1.0158E+00  1.0053E+00  9.7357E-01  9.0906E-01  1.1233E+00  2.5025E+00  1.0232E+00  1.2162E+00
             1.1902E+00
 PARAMETER:  4.7205E-02  3.7729E-02  1.1564E-01  1.0525E-01  7.3215E-02  4.6538E-03  2.1629E-01  1.0173E+00  1.2296E-01  2.9574E-01
             2.7411E-01
 GRADIENT:  -1.0069E+01 -1.7109E+01 -2.0285E+00 -6.8902E+00  7.7991E+00 -1.6440E+01 -2.1231E+00 -5.7130E+01  2.8164E-01 -8.7250E+00
             1.6789E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3549.06458440289        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:      496
 NPARAMETR:  9.4543E-01  9.5172E-01  1.0053E+00  9.9849E-01  9.8210E-01  9.0921E-01  1.0852E+00  2.5674E+00  1.0073E+00  1.2759E+00
             1.1799E+00
 PARAMETER:  4.3882E-02  5.0514E-02  1.0526E-01  9.8484E-02  8.1941E-02  4.8209E-03  1.8176E-01  1.0429E+00  1.0728E-01  3.4362E-01
             2.6547E-01
 GRADIENT:   2.8181E+02  3.7191E+01  7.7141E-01  5.8238E+01  5.5533E+01  1.5708E+01  3.8647E-01 -3.6162E-01  2.7072E+00  8.8029E+01
             1.5886E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3559.17405359381        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      681            RESET HESSIAN, TYPE II
 NPARAMETR:  9.4439E-01  9.5172E-01  1.0289E+00  9.9849E-01  9.8211E-01  9.4725E-01  1.0852E+00  2.9644E+00  1.0084E+00  1.2829E+00
             1.0779E+00
 PARAMETER:  4.2780E-02  5.0514E-02  1.2847E-01  9.8488E-02  8.1945E-02  4.5803E-02  1.8175E-01  1.1867E+00  1.0839E-01  3.4916E-01
             1.7505E-01
 GRADIENT:   3.4143E+02  5.2772E+01  7.4051E+00  7.1995E+01  5.7397E+01  3.8307E+01 -1.1160E+00  5.4433E+01  4.7162E+00  1.1194E+02
            -8.3673E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3559.28978109105        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      861
 NPARAMETR:  9.4442E-01  9.5172E-01  1.0364E+00  9.9849E-01  9.8211E-01  9.4594E-01  1.0852E+00  3.0008E+00  1.0084E+00  1.3159E+00
             1.0855E+00
 PARAMETER:  4.2814E-02  5.0515E-02  1.3578E-01  9.8488E-02  8.1945E-02  4.4423E-02  1.8175E-01  1.1989E+00  1.0839E-01  3.7455E-01
             1.8204E-01
 GRADIENT:  -1.7973E+01 -1.2646E+01 -2.8570E-01 -8.1686E+00 -5.4731E+00 -8.6014E-01 -1.1142E+01 -1.5305E+00 -2.1638E+00 -1.9980E+00
             3.8089E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3559.44623418508        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1034
 NPARAMETR:  9.4637E-01  9.5162E-01  1.0368E+00  9.9899E-01  9.8370E-01  9.4624E-01  1.0966E+00  2.9964E+00  1.0098E+00  1.3131E+00
             1.0849E+00
 PARAMETER:  4.4879E-02  5.0410E-02  1.3618E-01  9.8984E-02  8.3568E-02  4.4740E-02  1.9222E-01  1.1974E+00  1.0971E-01  3.7238E-01
             1.8146E-01
 GRADIENT:  -1.2859E+01 -1.2883E+01 -5.1438E-01 -6.8888E+00 -4.3413E+00 -6.6848E-01 -9.3921E+00 -2.1395E+00 -1.4943E+00 -2.3281E+00
             2.6252E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3559.62202067025        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1219
 NPARAMETR:  9.4590E-01  9.7696E-01  1.0492E+00  9.9849E-01  9.9909E-01  9.4347E-01  1.0977E+00  3.0026E+00  1.0092E+00  1.3319E+00
             1.0852E+00
 PARAMETER:  4.4379E-02  7.6688E-02  1.4801E-01  9.8485E-02  9.9087E-02  4.1812E-02  1.9318E-01  1.1995E+00  1.0916E-01  3.8658E-01
             1.8175E-01
 GRADIENT:  -1.4332E+01  5.1646E+00  1.6924E-01  1.0584E+01 -3.8149E+00 -1.9032E+00 -1.0200E+01 -2.9847E+00 -1.2217E+00 -2.3295E+00
             7.7590E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3559.62713471872        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:     1364
 NPARAMETR:  9.4590E-01  9.7696E-01  1.0492E+00  9.9849E-01  9.9909E-01  9.4764E-01  1.0977E+00  3.0029E+00  1.0092E+00  1.3345E+00
             1.0842E+00
 PARAMETER:  4.4379E-02  7.6688E-02  1.4801E-01  9.8484E-02  9.9087E-02  4.6221E-02  1.9319E-01  1.1996E+00  1.0916E-01  3.8853E-01
             1.8084E-01
 GRADIENT:  -1.4163E+01  5.1047E+00  2.3032E-01  1.0629E+01 -3.8338E+00 -1.6377E-01 -1.0199E+01 -3.0369E+00 -1.1897E+00 -1.9740E+00
            -9.1826E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1364
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.0646E-03 -4.7074E-02 -3.8230E-02  1.6092E-02 -5.3609E-02
 SE:             2.9885E-02  2.2277E-02  2.5845E-02  2.7223E-02  2.4251E-02
 N:                     100         100         100         100         100

 P VAL.:         8.1313E-01  3.4590E-02  1.3909E-01  5.5444E-01  2.7064E-02

 ETASHRINKSD(%)  1.0000E-10  2.5369E+01  1.3415E+01  8.8000E+00  1.8756E+01
 ETASHRINKVR(%)  1.0000E-10  4.4303E+01  2.5030E+01  1.6826E+01  3.3994E+01
 EBVSHRINKSD(%)  3.3588E-01  2.7368E+01  1.3994E+01  1.0809E+01  1.8038E+01
 EBVSHRINKVR(%)  6.7063E-01  4.7246E+01  2.6030E+01  2.0449E+01  3.2822E+01
 RELATIVEINF(%)  9.9327E+01  2.9750E+01  6.7710E+01  5.4581E+01  4.1839E+01
 EPSSHRINKSD(%)  2.3592E+01
 EPSSHRINKVR(%)  4.1619E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3559.6271347187230     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1905.5377749503123     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    42.99
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    15.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3559.627       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.46E-01  9.77E-01  1.05E+00  9.98E-01  9.99E-01  9.48E-01  1.10E+00  3.00E+00  1.01E+00  1.33E+00  1.08E+00
 


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
+        1.54E+07
 
 TH 2
+       -2.58E+00  1.44E+07
 
 TH 3
+       -9.36E+06  5.97E+00  5.70E+06
 
 TH 4
+        1.46E+07  2.99E+02 -2.00E+01  1.38E+07
 
 TH 5
+       -1.33E+00 -1.99E+02 -8.86E+06  1.03E+02  1.38E+07
 
 TH 6
+        1.81E+01 -1.07E+00  1.27E-01 -6.17E-01 -3.66E-01  2.19E+02
 
 TH 7
+        1.18E-01  7.35E+00 -6.85E+00  3.77E+00 -2.27E+01 -3.61E-01  3.06E+06
 
 TH 8
+       -4.52E-02  1.99E+05 -8.21E+00  1.31E+00 -8.86E+00 -1.68E-01 -2.07E+00  1.06E+04
 
 TH 9
+        9.27E-01 -1.05E+01  5.55E+00  1.35E+01  1.06E+01 -1.74E-02  1.69E+01  4.01E+00  1.13E+07
 
 TH10
+        5.94E-02 -2.72E+01  4.91E+00  1.18E+01 -6.78E+00 -2.46E-02  3.82E+00 -3.35E+00  8.63E+00  5.12E+05
 
 TH11
+       -8.11E+00 -4.40E+01 -1.81E+01  4.53E+00 -2.67E+01  1.98E+00  8.87E+00  7.72E+00  8.26E+00 -1.35E+06  3.58E+06
 
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
 #CPUT: Total CPU Time in Seconds,       58.124
Stop Time:
Wed Sep 29 01:11:48 CDT 2021
