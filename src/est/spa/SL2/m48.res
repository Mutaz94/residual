Sat Sep 18 12:17:53 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat48.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1630.32940449552        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6606E+01 -3.9884E+01  3.0794E+00 -4.8776E+01  9.6094E+00 -2.8494E+01 -6.4286E+00 -5.0103E+00  6.0300E+00  6.1720E+00
            -5.6464E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1637.32296302919        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0101E+00  1.0863E+00  9.5913E-01  9.8692E-01  9.9943E-01  1.0593E+00  1.0907E+00  1.0583E+00  9.1691E-01  8.8272E-01
             1.1151E+00
 PARAMETER:  1.1007E-01  1.8279E-01  5.8267E-02  8.6830E-02  9.9433E-02  1.5758E-01  1.8678E-01  1.5665E-01  1.3259E-02 -2.4747E-02
             2.0893E-01
 GRADIENT:   4.8419E+01  1.1316E+01  6.9014E+00  6.7392E+00  3.1312E+00 -2.5127E+00 -1.6885E+00 -3.6111E+00 -5.3053E+00 -1.9284E+00
            -7.2356E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1637.58996271849        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0069E+00  1.0683E+00  8.8806E-01  9.9034E-01  9.4983E-01  1.0669E+00  1.1517E+00  1.0583E+00  9.3098E-01  8.0932E-01
             1.1078E+00
 PARAMETER:  1.0687E-01  1.6610E-01 -1.8715E-02  9.0298E-02  4.8530E-02  1.6471E-01  2.4121E-01  1.5665E-01  2.8487E-02 -1.1156E-01
             2.0239E-01
 GRADIENT:   4.0577E+01  7.2141E+00  1.7319E+00  5.1651E+00 -5.4225E-02  5.6441E-01  3.9669E+00  6.0925E-01  1.5047E+00 -2.2107E+00
            -8.3116E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1637.85112459516        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      277
 NPARAMETR:  1.0041E+00  1.1241E+00  8.0988E-01  9.5271E-01  9.3767E-01  1.0776E+00  1.0871E+00  9.4207E-01  9.5033E-01  8.1581E-01
             1.1254E+00
 PARAMETER:  1.0414E-01  2.1698E-01 -1.1087E-01  5.1559E-02  3.5641E-02  1.7478E-01  1.8349E-01  4.0322E-02  4.9054E-02 -1.0358E-01
             2.1812E-01
 GRADIENT:  -4.4891E+00  1.3142E+00 -4.4309E-02  2.5632E+00 -9.2445E-01 -1.5169E+00  1.0680E-01  2.4891E-01 -1.0745E-02 -1.5164E-01
            -1.2384E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1638.00161520948        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      457
 NPARAMETR:  1.0063E+00  1.3440E+00  6.2090E-01  8.0247E-01  9.4681E-01  1.0800E+00  9.5993E-01  7.2320E-01  1.0540E+00  7.9909E-01
             1.1264E+00
 PARAMETER:  1.0625E-01  3.9569E-01 -3.7658E-01 -1.2006E-01  4.5340E-02  1.7697E-01  5.9108E-02 -2.2407E-01  1.5260E-01 -1.2428E-01
             2.1905E-01
 GRADIENT:  -3.3395E+00  1.4238E+00  1.7619E-01  1.2519E+00 -5.7424E-01 -1.2642E+00 -8.2534E-02  7.7645E-02 -5.4398E-02 -2.4691E-01
            -1.1390E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1638.03428551230        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      632
 NPARAMETR:  1.0084E+00  1.4467E+00  5.4414E-01  7.3112E-01  9.6078E-01  1.0842E+00  9.1112E-01  6.0050E-01  1.1148E+00  8.0081E-01
             1.1303E+00
 PARAMETER:  1.0838E-01  4.6932E-01 -5.0855E-01 -2.1318E-01  5.9994E-02  1.8081E-01  6.9189E-03 -4.0999E-01  2.0871E-01 -1.2214E-01
             2.2245E-01
 GRADIENT:   1.2874E-01 -8.7681E-01 -1.7537E-01 -7.0039E-01  1.5623E-02  1.3344E-01 -5.1100E-02  1.7188E-01 -2.7842E-02  1.1257E-01
             2.3808E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1638.07242191088        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      810
 NPARAMETR:  1.0084E+00  1.4924E+00  4.8844E-01  6.9697E-01  9.5344E-01  1.0846E+00  8.9411E-01  3.3944E-01  1.1393E+00  7.8865E-01
             1.1301E+00
 PARAMETER:  1.0834E-01  5.0040E-01 -6.1653E-01 -2.6102E-01  5.2326E-02  1.8118E-01 -1.1930E-02 -9.8047E-01  2.3045E-01 -1.3743E-01
             2.2231E-01
 GRADIENT:  -1.4715E-01 -1.3336E+00 -4.9579E-01 -1.4782E-01  2.2759E+00  1.8846E-01 -2.0302E-01  4.4976E-02 -6.0972E-01 -4.1914E-01
             1.6355E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1638.10150075481        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      985
 NPARAMETR:  1.0084E+00  1.4889E+00  4.7238E-01  6.9675E-01  9.3915E-01  1.0843E+00  8.9732E-01  1.0631E-01  1.1378E+00  7.8086E-01
             1.1295E+00
 PARAMETER:  1.0840E-01  4.9803E-01 -6.4997E-01 -2.6134E-01  3.7220E-02  1.8095E-01 -8.3483E-03 -2.1414E+00  2.2907E-01 -1.4736E-01
             2.2181E-01
 GRADIENT:  -3.3473E-02 -1.0013E+00 -3.4810E-01 -1.2572E-01  5.9131E-01  6.4241E-02  5.8829E-02  7.1948E-03 -3.9929E-02  6.1753E-02
             1.4487E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1638.10531513989        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1160
 NPARAMETR:  1.0085E+00  1.4981E+00  4.6861E-01  6.9124E-01  9.4196E-01  1.0842E+00  8.9285E-01  1.7580E-02  1.1447E+00  7.8224E-01
             1.1293E+00
 PARAMETER:  1.0842E-01  5.0420E-01 -6.5798E-01 -2.6927E-01  4.0205E-02  1.8083E-01 -1.3341E-02 -3.9410E+00  2.3516E-01 -1.4560E-01
             2.2162E-01
 GRADIENT:   1.9977E-02  7.3044E-02 -8.0651E-03  1.2580E-01  2.4552E-02  1.5424E-02 -1.0725E-01  1.8183E-04 -1.0086E-02 -1.8224E-02
            -1.0632E-02

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1638.10541031609        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1287
 NPARAMETR:  1.0084E+00  1.4988E+00  4.6837E-01  6.9073E-01  9.4226E-01  1.0841E+00  8.9303E-01  1.0000E-02  1.1453E+00  7.8245E-01
             1.1293E+00
 PARAMETER:  1.0841E-01  5.0464E-01 -6.5849E-01 -2.7001E-01  4.0522E-02  1.8079E-01 -1.3140E-02 -4.6561E+00  2.3564E-01 -1.4533E-01
             2.2162E-01
 GRADIENT:  -2.0523E-03 -1.3646E-02 -9.7970E-03  5.0847E-03  3.0776E-03 -8.7723E-04 -1.3386E-03  0.0000E+00  6.3742E-03  5.3493E-03
             1.7942E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1287
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1013E-04 -1.8018E-02 -3.1373E-04  1.4694E-02 -2.6799E-02
 SE:             2.9824E-02  2.4468E-02  1.3314E-04  2.3632E-02  2.0356E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9438E-01  4.6150E-01  1.8451E-02  5.3410E-01  1.8800E-01

 ETASHRINKSD(%)  8.6949E-02  1.8029E+01  9.9554E+01  2.0829E+01  3.1804E+01
 ETASHRINKVR(%)  1.7382E-01  3.2808E+01  9.9998E+01  3.7319E+01  5.3493E+01
 EBVSHRINKSD(%)  4.6899E-01  1.7910E+01  9.9608E+01  2.1390E+01  3.1690E+01
 EBVSHRINKVR(%)  9.3577E-01  3.2612E+01  9.9998E+01  3.8204E+01  5.3337E+01
 RELATIVEINF(%)  9.9039E+01  4.3697E+00  1.2649E-04  3.8705E+00  5.5828E+00
 EPSSHRINKSD(%)  4.3617E+01
 EPSSHRINKVR(%)  6.8209E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1638.1054103160877     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -902.95458375234955     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.25
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     5.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1638.105       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.50E+00  4.68E-01  6.91E-01  9.42E-01  1.08E+00  8.93E-01  1.00E-02  1.15E+00  7.82E-01  1.13E+00
 


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
+        1.04E+03
 
 TH 2
+       -4.55E+00  4.39E+02
 
 TH 3
+        3.84E+01  2.57E+02  8.50E+02
 
 TH 4
+       -2.04E+01  3.38E+02 -5.82E+02  1.18E+03
 
 TH 5
+        1.53E+01 -3.40E+02 -7.38E+02  4.47E+02  9.47E+02
 
 TH 6
+        1.31E+02  2.43E+00 -1.57E+01  2.18E+01  8.10E-01  1.71E+02
 
 TH 7
+       -3.51E+01  4.75E+00 -4.94E+01  3.33E+01 -1.91E+01 -9.23E+00  2.69E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.61E+01  5.27E+00 -6.22E+01  5.42E+01 -8.49E+00  9.82E-01  1.76E+01  0.00E+00  1.75E+01
 
 TH10
+       -2.65E+01 -1.00E+01 -5.84E+01 -2.45E+00 -8.36E+01  5.11E+00  3.21E+01  0.00E+00  3.18E+01  6.91E+01
 
 TH11
+       -3.07E+01  5.09E+01 -4.59E+01  8.98E+01 -1.85E+01  3.20E+01  4.70E+01  0.00E+00  1.84E+01  2.52E+01  1.43E+02
 
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
+        9.20E+02
 
 TH 2
+       -6.00E+00  4.31E+02
 
 TH 3
+        5.13E+00  2.63E+02  8.45E+02
 
 TH 4
+       -1.41E+01  2.85E+02 -5.51E+02  1.11E+03
 
 TH 5
+       -4.48E+00 -3.29E+02 -7.46E+02  4.59E+02  9.56E+02
 
 TH 6
+        6.08E-01 -1.20E+00  2.43E+00 -5.34E+00 -2.40E+00  1.66E+02
 
 TH 7
+        6.72E-01  1.77E+01 -4.14E+01 -9.09E+00  4.35E+00 -1.03E+00  1.18E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.22E+00 -1.91E+01 -4.25E+01  5.55E+01 -9.44E+00 -5.31E-02  1.54E+01  0.00E+00  6.61E+01
 
 TH10
+        1.14E-01 -1.41E+01 -4.54E+01 -1.77E+01 -7.57E+01 -1.02E+00  1.92E+01  0.00E+00  1.22E+01  8.40E+01
 
 TH11
+       -6.45E+00 -1.48E+01 -2.85E+01 -8.52E-01 -7.49E+00  2.29E+00  8.45E+00  0.00E+00  8.39E+00  2.00E+01  1.67E+02
 
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
+        9.21E+02
 
 TH 2
+       -1.85E+01  4.20E+02
 
 TH 3
+       -3.97E+01  2.67E+02  8.28E+02
 
 TH 4
+       -2.44E+01  2.78E+02 -5.48E+02  1.10E+03
 
 TH 5
+       -1.42E+01 -3.34E+02 -7.52E+02  4.58E+02  9.71E+02
 
 TH 6
+       -1.36E+02 -4.30E+00  1.83E+01 -2.09E+01 -8.99E+00  1.79E+02
 
 TH 7
+        2.83E+01 -3.36E+01 -4.14E+01 -6.45E+01  2.31E+01 -2.04E+01  1.13E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.15E+00 -4.09E+01 -4.11E+01  1.87E+01  4.94E+00 -7.79E+00  2.18E+01  0.00E+00  5.77E+01
 
 TH10
+        3.02E+01 -8.94E+00 -4.26E+01 -1.67E+01 -7.55E+01 -7.15E+00  2.28E+01  0.00E+00  7.79E+00  7.23E+01
 
 TH11
+        4.49E+01 -5.40E+01 -6.93E+00 -8.65E+01  1.29E+01 -1.95E+01  4.18E+01  0.00E+00  1.51E+01  1.12E+01  1.73E+02
 
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
 #CPUT: Total CPU Time in Seconds,       21.149
Stop Time:
Sat Sep 18 12:18:16 CDT 2021