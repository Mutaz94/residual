Fri Oct  1 04:08:57 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat84.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      985
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

 TOT. NO. OF OBS RECS:      885
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
 RAW OUTPUT FILE (FILE): m84.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   221.443156395659        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7142E+02  3.6187E+01  1.4041E+02  1.6810E+02  1.8867E+02  7.2058E+01 -1.2069E+02 -2.6060E+02 -9.6529E+01 -6.0795E+01
            -7.6068E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2364.33031918670        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1256E+00  1.3923E+00  9.5334E-01  9.2320E-01  1.0852E+00  6.5218E-01  1.3012E+00  1.0018E+00  9.0680E-01  9.5682E-01
             5.2352E+00
 PARAMETER:  2.1832E-01  4.3096E-01  5.2221E-02  2.0091E-02  1.8178E-01 -3.2743E-01  3.6328E-01  1.0178E-01  2.1687E-03  5.5856E-02
             1.7554E+00
 GRADIENT:   1.0213E+02  6.0609E+01 -1.1513E+01  3.9131E+01 -1.2526E+01 -7.2730E+01  3.0589E+01  5.7159E+00  1.6487E+01  1.4322E+01
             7.8443E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2570.78148231444        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0376E+00  1.0141E+00  8.2548E-01  9.5655E-01  8.8445E-01  8.8982E-01  1.3234E+00  9.2883E-01  3.3667E-01  8.4251E-01
             3.5787E+00
 PARAMETER:  1.3693E-01  1.1399E-01 -9.1788E-02  5.5580E-02 -2.2786E-02 -1.6733E-02  3.8022E-01  2.6166E-02 -9.8865E-01 -7.1365E-02
             1.3750E+00
 GRADIENT:  -1.7479E+01 -7.2547E+01  1.0363E+00 -1.0624E+02 -6.1780E+01  2.2938E+01 -2.7657E+01  8.0508E+00 -3.0816E+01 -1.1838E+01
             3.1680E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2647.47727758400        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.0144E+00  1.2169E+00  1.0117E+00  8.8452E-01  1.0780E+00  9.0266E-01  1.1602E+00  3.3264E-01  9.4887E-01  1.0394E+00
             2.8726E+00
 PARAMETER:  1.1427E-01  2.9629E-01  1.1167E-01 -2.2708E-02  1.7514E-01 -2.4087E-03  2.4856E-01 -1.0007E+00  4.7513E-02  1.3862E-01
             1.1552E+00
 GRADIENT:  -4.4101E+01  2.8477E-01 -1.8977E+00 -1.4966E+01  3.6374E+00  1.6016E+01  1.3492E+00  8.0383E-01 -7.3483E+00  5.8179E-01
            -1.8458E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2655.48493263112        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      391
 NPARAMETR:  1.0627E+00  1.4735E+00  1.2659E+00  7.7734E-01  1.3179E+00  8.6529E-01  1.0056E+00  2.6771E-01  1.1275E+00  1.2626E+00
             2.9092E+00
 PARAMETER:  1.6079E-01  4.8766E-01  3.3582E-01 -1.5188E-01  3.7606E-01 -4.4688E-02  1.0555E-01 -1.2179E+00  2.2001E-01  3.3318E-01
             1.1679E+00
 GRADIENT:   9.9054E+00 -6.7313E-02  2.1935E+00  1.8310E+01 -2.7083E+00  2.1457E+00  2.7305E+00  1.7680E-02  1.4408E+00  1.1341E+00
            -2.3984E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2661.42447683776        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      567
 NPARAMETR:  1.0645E+00  2.1139E+00  8.8538E-01  3.7967E-01  1.7144E+00  8.6737E-01  7.5471E-01  3.5323E-02  1.8044E+00  1.5544E+00
             2.8811E+00
 PARAMETER:  1.6255E-01  8.4855E-01 -2.1738E-02 -8.6844E-01  6.3908E-01 -4.2295E-02 -1.8142E-01 -3.2432E+00  6.9020E-01  5.4111E-01
             1.1582E+00
 GRADIENT:   1.3098E+01  4.5324E+01  6.7930E-01  1.5746E+01  1.6225E+00  2.3522E+00 -4.8512E+00 -6.6873E-05 -1.5925E+00 -1.8755E-01
            -5.3995E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2662.85724537516        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      742
 NPARAMETR:  1.0580E+00  2.3316E+00  5.1986E-01  2.1382E-01  1.8452E+00  8.6086E-01  7.2766E-01  1.0000E-02  2.4358E+00  1.6544E+00
             2.8743E+00
 PARAMETER:  1.5637E-01  9.4655E-01 -5.5420E-01 -1.4426E+00  7.1260E-01 -4.9818E-02 -2.1792E-01 -5.4539E+00  9.9027E-01  6.0346E-01
             1.1558E+00
 GRADIENT:  -3.5308E+00  1.0321E+01 -2.1694E+00  4.4837E+00  4.9146E+00 -3.5869E-01 -9.9135E-01  0.0000E+00 -1.0446E-01  1.0637E+00
            -2.8557E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2662.99970715483        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      924             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0591E+00  2.3925E+00  4.9014E-01  1.6431E-01  1.8819E+00  8.6126E-01  7.2118E-01  1.0000E-02  2.7685E+00  1.6849E+00
             2.8759E+00
 PARAMETER:  1.5738E-01  9.7235E-01 -6.1305E-01 -1.7060E+00  7.3230E-01 -4.9363E-02 -2.2686E-01 -6.0374E+00  1.1183E+00  6.2168E-01
             1.1564E+00
 GRADIENT:   9.0575E+01  3.4014E+02  1.5522E-01  8.0477E+00  2.3514E+01  3.6356E+00  4.2145E+00  0.0000E+00  4.8447E+00  4.7307E+00
             2.0431E+01

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2662.99970715483        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      981
 NPARAMETR:  1.0591E+00  2.3925E+00  4.9014E-01  1.6431E-01  1.8819E+00  8.6126E-01  7.2118E-01  1.0000E-02  2.7685E+00  1.6849E+00
             2.8759E+00
 PARAMETER:  1.5738E-01  9.7235E-01 -6.1305E-01 -1.7060E+00  7.3230E-01 -4.9363E-02 -2.2686E-01 -6.0374E+00  1.1183E+00  6.2168E-01
             1.1564E+00
 GRADIENT:   1.3394E-01 -3.4477E+00  7.1468E-03 -5.6271E-01 -1.0792E+00  1.5525E-02  4.3912E-02  0.0000E+00 -1.2119E-01 -3.0522E-01
            -3.5764E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      981
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5817E-03 -2.5729E-02 -3.0355E-05  3.1790E-02 -2.1488E-02
 SE:             2.9195E-02  2.5527E-02  1.5921E-05  1.6115E-02  2.5993E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5679E-01  3.1349E-01  5.6577E-02  4.8522E-02  4.0842E-01

 ETASHRINKSD(%)  2.1923E+00  1.4482E+01  9.9947E+01  4.6014E+01  1.2920E+01
 ETASHRINKVR(%)  4.3365E+00  2.6866E+01  1.0000E+02  7.0855E+01  2.4171E+01
 EBVSHRINKSD(%)  2.3315E+00  1.2730E+01  9.9930E+01  5.6539E+01  1.0042E+01
 EBVSHRINKVR(%)  4.6087E+00  2.3840E+01  1.0000E+02  8.1112E+01  1.9076E+01
 RELATIVEINF(%)  9.5274E+01  1.5088E+01  3.0709E-05  3.4317E+00  4.9319E+01
 EPSSHRINKSD(%)  1.6040E+01
 EPSSHRINKVR(%)  2.9507E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          885
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1626.5212037722706     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2662.9997071548273     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1036.4785033825567     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.05
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2663.000       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  2.39E+00  4.90E-01  1.64E-01  1.88E+00  8.61E-01  7.21E-01  1.00E-02  2.77E+00  1.68E+00  2.88E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.119
Stop Time:
Fri Oct  1 04:09:40 CDT 2021
