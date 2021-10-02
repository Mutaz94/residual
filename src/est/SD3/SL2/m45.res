Fri Oct  1 19:32:43 CDT 2021
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
$DATA ../../../../data/SD3/SL2/dat45.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
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
 RAW OUTPUT FILE (FILE): m45.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1802.99077504733        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8921E+02 -2.8855E+01  8.9886E+01  6.3917E+01  1.5253E+02 -4.8697E+00 -3.1068E+01 -4.7681E+02 -1.0802E+02 -2.1635E+01
            -6.0793E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2094.59862925448        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.1100E+00  1.2142E+00  7.8869E-01  1.0453E+00  9.9938E-01  1.3908E+00  9.8913E-01  3.9696E+00  1.0802E+00  8.9994E-01
             1.5124E+00
 PARAMETER:  2.0433E-01  2.9409E-01 -1.3738E-01  1.4431E-01  9.9381E-02  4.2988E-01  8.9067E-02  1.4787E+00  1.7712E-01 -5.4228E-03
             5.1368E-01
 GRADIENT:   5.4277E+02  1.7916E+02 -1.5890E+01  2.0523E+02 -4.5756E+01  1.5476E+02  6.4343E+00  2.5316E+01  1.0317E+01 -6.6472E+00
             8.2121E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2102.08657642954        NO. OF FUNC. EVALS.: 122
 CUMULATIVE NO. OF FUNC. EVALS.:      211
 NPARAMETR:  1.1063E+00  1.2325E+00  8.4863E-01  1.0075E+00  1.0274E+00  1.3990E+00  9.6130E-01  4.0624E+00  9.7385E-01  9.3005E-01
             1.5354E+00
 PARAMETER:  2.0103E-01  3.0905E-01 -6.4132E-02  1.0744E-01  1.2708E-01  4.3575E-01  6.0527E-02  1.5018E+00  7.3503E-02  2.7483E-02
             5.2882E-01
 GRADIENT:   1.4073E+02  5.5706E+01 -1.3026E+01  1.4664E+02 -5.0649E+01  4.4946E+01 -1.4933E+00 -4.0596E+01 -7.7374E+00 -7.3146E+00
             8.8897E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2126.50849212713        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      390
 NPARAMETR:  1.1067E+00  1.2380E+00  1.1587E+00  1.0039E+00  1.0355E+00  1.4006E+00  1.0148E+00  4.0410E+00  1.1105E+00  9.5039E-01
             1.5387E+00
 PARAMETER:  2.0139E-01  3.1350E-01  2.4734E-01  1.0385E-01  1.3490E-01  4.3689E-01  1.1468E-01  1.4965E+00  2.0477E-01  4.9122E-02
             5.3092E-01
 GRADIENT:   5.2585E+02  1.8705E+02  9.3690E+00  1.4233E+02 -8.7914E+01  1.6153E+02  1.7444E+01  3.7639E+01  2.4701E+01 -8.2507E-01
             9.9456E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2130.82508235139        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      570             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0932E+00  1.2379E+00  1.1587E+00  9.9972E-01  1.0355E+00  1.3739E+00  9.9995E-01  4.0419E+00  1.0967E+00  9.5238E-01
             1.5219E+00
 PARAMETER:  1.8912E-01  3.1345E-01  2.4730E-01  9.9723E-02  1.3492E-01  4.1766E-01  9.9954E-02  1.4967E+00  1.9232E-01  5.1204E-02
             5.1999E-01
 GRADIENT:   5.0129E+02  1.8944E+02  9.6318E+00  1.3967E+02 -8.8309E+01  1.5857E+02  1.5422E+01  3.8194E+01  2.2173E+01 -1.6521E+00
             8.9816E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2131.96172574716        NO. OF FUNC. EVALS.: 146
 CUMULATIVE NO. OF FUNC. EVALS.:      716
 NPARAMETR:  1.0893E+00  1.2379E+00  1.1587E+00  9.9972E-01  1.0355E+00  1.3619E+00  9.9655E-01  4.0419E+00  1.0938E+00  9.5476E-01
             1.5175E+00
 PARAMETER:  1.8558E-01  3.1345E-01  2.4730E-01  9.9723E-02  1.3492E-01  4.0891E-01  9.6544E-02  1.4967E+00  1.8963E-01  5.3709E-02
             5.1708E-01
 GRADIENT:   1.3034E+02  7.0261E+01  5.7019E+00  1.1129E+02 -1.0170E+02  4.0069E+01  1.1956E+01 -1.9457E+01  1.6356E+01 -2.5235E+00
             8.1522E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2143.38168340227        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:      913
 NPARAMETR:  1.0892E+00  1.2381E+00  1.1601E+00  9.9946E-01  1.0376E+00  1.2359E+00  9.9370E-01  4.0140E+00  1.0905E+00  9.5500E-01
             1.5179E+00
 PARAMETER:  1.8542E-01  3.1355E-01  2.4854E-01  9.9462E-02  1.3696E-01  3.1181E-01  9.3675E-02  1.4898E+00  1.8662E-01  5.3952E-02
             5.1736E-01
 GRADIENT:   1.5708E+02  7.9374E+01 -4.3250E+00  1.0493E+02 -1.1883E+02  5.7897E+00  1.5844E+01 -2.2133E+01  1.8034E+01  1.5622E+01
             6.7273E+01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2143.41645524228        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:      971
 NPARAMETR:  1.0892E+00  1.2381E+00  1.1602E+00  9.9945E-01  1.0376E+00  1.2206E+00  9.9370E-01  4.0135E+00  1.0905E+00  9.5500E-01
             1.5179E+00
 PARAMETER:  1.8541E-01  3.1354E-01  2.4858E-01  9.9448E-02  1.3695E-01  2.9933E-01  9.3684E-02  1.4897E+00  1.8660E-01  5.3960E-02
             5.1735E-01
 GRADIENT:   1.6090E+02  7.9395E+01 -4.3173E+00  1.0493E+02 -1.1881E+02  9.2792E-01  1.5859E+01 -2.2158E+01  1.8046E+01  1.5622E+01
             6.7136E+01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      971
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -8.5764E-02 -6.4324E-02 -2.6242E-02 -3.5356E-02 -7.6517E-03
 SE:             2.8508E-02  1.7603E-02  2.5277E-02  2.1906E-02  1.6978E-02
 N:                     100         100         100         100         100

 P VAL.:         2.6259E-03  2.5810E-04  2.9920E-01  1.0653E-01  6.5221E-01

 ETASHRINKSD(%)  4.4953E+00  4.1028E+01  1.5317E+01  2.6611E+01  4.3123E+01
 ETASHRINKVR(%)  8.7886E+00  6.5223E+01  2.8289E+01  4.6141E+01  6.7650E+01
 EBVSHRINKSD(%)  5.1221E-01  3.4015E+01  1.8783E+01  1.9943E+01  3.6560E+01
 EBVSHRINKVR(%)  1.0218E+00  5.6460E+01  3.4038E+01  3.5908E+01  5.9753E+01
 RELATIVEINF(%)  9.8961E+01  1.0596E+01  4.3994E+01  1.8598E+01  1.7762E+01
 EPSSHRINKSD(%)  3.4298E+01
 EPSSHRINKVR(%)  5.6832E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2143.4164552422772     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1040.6902153966701     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.53
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2143.416       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.09E+00  1.24E+00  1.16E+00  9.99E-01  1.04E+00  1.22E+00  9.94E-01  4.01E+00  1.09E+00  9.55E-01  1.52E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       21.580
Stop Time:
Fri Oct  1 19:33:06 CDT 2021