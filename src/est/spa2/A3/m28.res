Thu Sep 30 06:19:33 CDT 2021
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
$DATA ../../../../data/spa2/A3/dat28.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m28.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -153.184262940789        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6335E+02  6.0382E+01  1.2619E+02 -8.0768E+01  1.8372E+02  3.3448E+01 -1.4993E+02 -6.4549E+01 -4.2971E+01 -1.6059E+02
            -4.1157E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1733.60930676646        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.9321E-01  9.9502E-01  1.0038E+00  1.1926E+00  9.3772E-01  8.4655E-01  9.5496E-01  8.8679E-01  9.2131E-01  8.7482E-01
             4.0120E+00
 PARAMETER:  9.3184E-02  9.5012E-02  1.0382E-01  2.7611E-01  3.5697E-02 -6.6582E-02  5.3911E-02 -2.0148E-02  1.8040E-02 -3.3737E-02
             1.4893E+00
 GRADIENT:   3.6097E+01 -2.8190E+00 -1.8309E+01  2.6446E+01  1.5235E+01 -2.7726E+01  8.6962E+00  7.1602E+00  1.3461E+01  1.9364E+01
             2.7568E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1748.27416517781        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.7414E-01  6.5260E-01  4.6653E-01  1.4111E+00  4.8711E-01  9.3135E-01  1.3333E+00  1.6847E-01  9.8390E-01  4.5562E-01
             3.6968E+00
 PARAMETER:  7.3802E-02 -3.2679E-01 -6.6242E-01  4.4439E-01 -6.1926E-01  2.8883E-02  3.8766E-01 -1.6810E+00  8.3767E-02 -6.8610E-01
             1.4075E+00
 GRADIENT:  -7.4485E+00  5.9876E+01 -2.8109E+01  1.8284E+02  2.8563E+01 -2.0255E+00  1.3657E+01  6.9008E-01  7.3280E+00  4.4776E+00
             2.1895E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1783.45632090471        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      293
 NPARAMETR:  9.5859E-01  6.3381E-01  5.7181E-01  1.3233E+00  5.5247E-01  9.3073E-01  1.1678E+00  4.4202E-02  9.2940E-01  7.3921E-01
             2.9642E+00
 PARAMETER:  5.7703E-02 -3.5600E-01 -4.5896E-01  3.8013E-01 -4.9335E-01  2.8213E-02  2.5516E-01 -3.0190E+00  2.6782E-02 -2.0217E-01
             1.1866E+00
 GRADIENT:  -3.2091E+01  9.6153E+00 -2.9766E+01  6.0920E+01  5.4229E+01 -6.0206E+00  3.4348E+00  5.5012E-02 -7.5392E+00  8.5625E-02
             7.6647E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1801.18779817227        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      470
 NPARAMETR:  9.6451E-01  3.7947E-01  2.6721E-01  1.2470E+00  2.8866E-01  9.4732E-01  1.3527E+00  1.0000E-02  1.0998E+00  4.8499E-01
             2.7811E+00
 PARAMETER:  6.3864E-02 -8.6898E-01 -1.2197E+00  3.2075E-01 -1.1425E+00  4.5880E-02  4.0210E-01 -4.6144E+00  1.9511E-01 -6.2363E-01
             1.1228E+00
 GRADIENT:  -6.8251E+00  3.1209E+01 -4.2052E+00  2.1722E+01 -1.1573E+01 -1.7974E+00  2.1064E+00  0.0000E+00 -8.1106E+00 -4.5850E+00
            -1.9652E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1803.71786054013        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      646
 NPARAMETR:  9.6780E-01  3.2579E-01  2.4161E-01  1.2111E+00  2.6173E-01  9.5128E-01  1.3056E+00  1.0000E-02  1.1669E+00  5.1941E-01
             2.8064E+00
 PARAMETER:  6.7267E-02 -1.0215E+00 -1.3204E+00  2.9154E-01 -1.2404E+00  5.0052E-02  3.6663E-01 -5.3611E+00  2.5434E-01 -5.5506E-01
             1.1319E+00
 GRADIENT:  -3.0575E-02 -3.2760E-01 -2.9611E-01 -4.8202E-01  1.2503E+00  1.7411E-02 -5.2276E-02  0.0000E+00  1.2686E-01 -1.5928E-01
            -1.3064E-01

0ITERATION NO.:   26    OBJECTIVE VALUE:  -1803.71786054013        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      668
 NPARAMETR:  9.6780E-01  3.2579E-01  2.4161E-01  1.2111E+00  2.6173E-01  9.5128E-01  1.3056E+00  1.0000E-02  1.1669E+00  5.1941E-01
             2.8064E+00
 PARAMETER:  6.7267E-02 -1.0215E+00 -1.3204E+00  2.9154E-01 -1.2404E+00  5.0052E-02  3.6663E-01 -5.3611E+00  2.5434E-01 -5.5506E-01
             1.1319E+00
 GRADIENT:  -3.0575E-02 -3.2760E-01 -2.9611E-01 -4.8202E-01  1.2503E+00  1.7411E-02 -5.2276E-02  0.0000E+00  1.2686E-01 -1.5928E-01
            -1.3064E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      668
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0346E-03  1.8000E-02 -1.0668E-04 -1.1516E-02  1.1026E-02
 SE:             2.9060E-02  2.0068E-02  2.3331E-04  2.7011E-02  1.9984E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7160E-01  3.6972E-01  6.4749E-01  6.6986E-01  5.8111E-01

 ETASHRINKSD(%)  2.6438E+00  3.2771E+01  9.9218E+01  9.5089E+00  3.3051E+01
 ETASHRINKVR(%)  5.2177E+00  5.4803E+01  9.9994E+01  1.8114E+01  5.5179E+01
 EBVSHRINKSD(%)  2.5700E+00  3.2899E+01  9.9189E+01  8.1567E+00  3.2681E+01
 EBVSHRINKVR(%)  5.0739E+00  5.4975E+01  9.9993E+01  1.5648E+01  5.4681E+01
 RELATIVEINF(%)  9.4807E+01  7.5307E+00  3.7720E-04  4.9566E+01  1.5682E+00
 EPSSHRINKSD(%)  2.4109E+01
 EPSSHRINKVR(%)  4.2405E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1803.7178605401293     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -700.99162069452223     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.06
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     9.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1803.718       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.68E-01  3.26E-01  2.42E-01  1.21E+00  2.62E-01  9.51E-01  1.31E+00  1.00E-02  1.17E+00  5.19E-01  2.81E+00
 


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
+        1.25E+03
 
 TH 2
+        5.60E+00  2.79E+03
 
 TH 3
+       -3.94E+01  2.52E+03  1.13E+04
 
 TH 4
+       -1.81E+01  6.21E+01 -3.57E+02  4.68E+02
 
 TH 5
+        8.97E+01 -6.26E+03 -1.59E+04 -1.77E+02  2.77E+04
 
 TH 6
+        3.62E+00 -3.38E+00  3.68E+01 -9.33E+00 -8.97E+00  1.97E+02
 
 TH 7
+        2.49E-01  5.42E+01 -1.39E+01 -8.67E-01 -5.10E+01 -1.39E-01  2.53E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.14E+01 -1.89E+01  1.22E+02 -2.89E+00  3.48E+01  3.28E+00  1.07E+00  0.00E+00  9.31E+01
 
 TH10
+       -7.72E+00  2.49E+01 -2.84E+02  3.49E+00  2.39E+02 -1.28E+00  2.91E+01  0.00E+00 -4.35E-01  1.74E+02
 
 TH11
+       -1.92E+01 -9.72E+00 -7.97E+01 -8.22E+00  1.10E+02  2.27E+00  6.39E+00  0.00E+00  7.52E+00  1.55E+01  7.63E+01
 
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
 #CPUT: Total CPU Time in Seconds,       22.089
Stop Time:
Thu Sep 30 06:19:57 CDT 2021