Fri Oct  1 15:09:32 CDT 2021
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
$DATA ../../../../data/SD2/D/dat6.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1822.17608716453        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1715E+02 -5.8268E+01 -1.1698E+02  6.0612E+01  2.3492E+02 -8.0428E+01 -1.3181E+02 -8.9910E+00 -1.9892E+02 -6.9231E+01
             3.2009E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1934.39339814256        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      131
 NPARAMETR:  1.0572E+00  1.1474E+00  1.1235E+00  1.0199E+00  8.8124E-01  1.1808E+00  1.4709E+00  9.8872E-01  1.2530E+00  1.0496E+00
             9.8011E-01
 PARAMETER:  1.5563E-01  2.3751E-01  2.1646E-01  1.1968E-01 -2.6430E-02  2.6619E-01  4.8591E-01  8.8654E-02  3.2554E-01  1.4838E-01
             7.9910E-02
 GRADIENT:   7.5145E+01  4.6935E+01  2.6478E+01  6.5040E+01 -1.0610E+02 -7.2300E+01 -9.3785E+01 -9.2679E-01 -2.8240E+01 -2.5346E+00
            -1.4338E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1965.25352089896        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      309
 NPARAMETR:  1.0457E+00  1.1639E+00  1.2009E+00  9.5608E-01  9.9924E-01  1.4984E+00  2.4920E+00  9.9165E-01  9.8307E-01  1.1394E+00
             9.7914E-01
 PARAMETER:  1.4473E-01  2.5182E-01  2.8305E-01  5.5091E-02  9.9237E-02  5.0442E-01  1.0131E+00  9.1617E-02  8.2928E-02  2.3046E-01
             7.8920E-02
 GRADIENT:   3.8109E+01  2.6263E+01  3.3071E+00  1.0969E+01 -9.0952E+00  3.7458E+01  1.8666E+01 -2.2261E+00 -1.3207E+01  3.2429E+00
             2.2913E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1969.99302156601        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      486
 NPARAMETR:  1.0060E+00  1.0581E+00  1.3073E+00  9.8574E-01  1.0081E+00  1.3438E+00  2.2609E+00  1.1179E+00  1.1218E+00  1.1022E+00
             9.7700E-01
 PARAMETER:  1.0600E-01  1.5647E-01  3.6800E-01  8.5639E-02  1.0807E-01  3.9552E-01  9.1576E-01  2.1143E-01  2.1497E-01  1.9728E-01
             7.6733E-02
 GRADIENT:  -2.4063E+00  2.5996E+00  3.2869E-01  2.9927E+00 -2.1111E+00 -4.4789E+00 -4.0495E+00  5.7394E-02 -4.9599E+00 -1.1969E+00
             1.8906E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1970.65283188734        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      664
 NPARAMETR:  1.0092E+00  8.9496E-01  1.5953E+00  1.0939E+00  1.0257E+00  1.3575E+00  2.5129E+00  1.2731E+00  1.1541E+00  1.1473E+00
             9.7602E-01
 PARAMETER:  1.0913E-01 -1.0975E-02  5.6709E-01  1.8976E-01  1.2538E-01  4.0563E-01  1.0214E+00  3.4146E-01  2.4331E-01  2.3740E-01
             7.5728E-02
 GRADIENT:   3.2492E+00  9.3821E-01  1.0532E-01  2.2621E-01 -7.0523E-02  3.2936E-01  1.0340E+00 -4.6160E-02  6.5174E-01 -1.5544E-01
            -7.3218E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1970.68412925566        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      840
 NPARAMETR:  1.0076E+00  8.7073E-01  1.6255E+00  1.1083E+00  1.0256E+00  1.3566E+00  2.5429E+00  1.2880E+00  1.1490E+00  1.1502E+00
             9.7647E-01
 PARAMETER:  1.0758E-01 -3.8418E-02  5.8581E-01  2.0280E-01  1.2528E-01  4.0499E-01  1.0333E+00  3.5306E-01  2.3886E-01  2.3995E-01
             7.6185E-02
 GRADIENT:   1.5281E+00  9.0833E-02 -8.5732E-03 -3.6370E-01  2.5811E-01  1.2819E-01  5.2403E-01 -6.1508E-02  3.6101E-01 -8.4788E-02
            -3.5427E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1970.77939240710        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1003
 NPARAMETR:  1.0060E+00  8.3918E-01  1.6720E+00  1.1241E+00  1.0253E+00  1.3811E+00  2.6388E+00  1.3136E+00  1.1458E+00  1.1542E+00
             9.7690E-01
 PARAMETER:  1.0601E-01 -7.5328E-02  6.1405E-01  2.1696E-01  1.2503E-01  4.2288E-01  1.0703E+00  3.7280E-01  2.3607E-01  2.4345E-01
             7.6631E-02
 GRADIENT:   4.9423E+02  3.5716E+01  7.3770E+00  2.5405E+02  8.7863E+00  4.3222E+02  2.6503E+02  7.4318E-01  3.1995E+01  2.8402E+00
             1.1475E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1970.79627031859        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1163
 NPARAMETR:  1.0080E+00  8.3835E-01  1.6677E+00  1.1274E+00  1.0259E+00  1.3785E+00  2.6274E+00  1.3137E+00  1.1376E+00  1.1538E+00
             9.7684E-01
 PARAMETER:  1.0800E-01 -7.6316E-02  6.1145E-01  2.1991E-01  1.2553E-01  4.2101E-01  1.0660E+00  3.7283E-01  2.2892E-01  2.4306E-01
             7.6569E-02
 GRADIENT:   2.3432E+00  7.4409E-02 -1.9127E-01 -2.2865E+00  9.5538E-01  7.1110E+00  2.9619E+00  5.5986E-02  6.8782E-02  3.8445E-03
             5.1661E-02

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1970.79627031859        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1187
 NPARAMETR:  1.0080E+00  8.3835E-01  1.6677E+00  1.1274E+00  1.0259E+00  1.3785E+00  2.6274E+00  1.3137E+00  1.1376E+00  1.1538E+00
             9.7684E-01
 PARAMETER:  1.0800E-01 -7.6316E-02  6.1145E-01  2.1991E-01  1.2553E-01  4.2101E-01  1.0660E+00  3.7283E-01  2.2892E-01  2.4306E-01
             7.6569E-02
 GRADIENT:   2.2988E-01  8.5058E-02 -1.5360E-01 -7.0449E-01  6.3533E-01  3.0409E-01 -5.5212E-01  5.2039E-02 -2.6865E-02 -5.0311E-03
             5.2174E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1187
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.7143E-04  1.7287E-02 -4.0908E-02 -2.3034E-02 -2.3191E-02
 SE:             2.9926E-02  2.3155E-02  1.3281E-02  2.1033E-02  2.2394E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8743E-01  4.5531E-01  2.0686E-03  2.7347E-01  3.0039E-01

 ETASHRINKSD(%)  1.0000E-10  2.2429E+01  5.5508E+01  2.9536E+01  2.4977E+01
 ETASHRINKVR(%)  1.0000E-10  3.9828E+01  8.0204E+01  5.0349E+01  4.3716E+01
 EBVSHRINKSD(%)  1.8113E-01  2.2860E+01  6.2352E+01  2.9084E+01  2.0241E+01
 EBVSHRINKVR(%)  3.6193E-01  4.0495E+01  8.5826E+01  4.9710E+01  3.6384E+01
 RELATIVEINF(%)  9.9481E+01  1.0070E+01  3.6614E+00  7.7979E+00  2.2081E+01
 EPSSHRINKSD(%)  3.4463E+01
 EPSSHRINKVR(%)  5.7049E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1970.7962703185917     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1051.8577371139190     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.68
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1970.796       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  8.38E-01  1.67E+00  1.13E+00  1.03E+00  1.38E+00  2.63E+00  1.31E+00  1.14E+00  1.15E+00  9.77E-01
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       19.714
Stop Time:
Fri Oct  1 15:09:53 CDT 2021