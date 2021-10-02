Sat Oct  2 01:15:04 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat70.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m70.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   116.976849368922        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3024E+02  8.2125E+01  4.3965E+01  2.7505E+01  1.3390E+02  5.2845E+01 -4.8178E+01 -1.7597E+01 -1.5906E+02 -7.2730E+01
            -3.2538E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1245.74009786030        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0960E+00  9.9838E-01  1.0160E+00  1.1895E+00  1.0031E+00  8.4911E-01  9.8603E-01  9.5144E-01  1.2131E+00  8.7445E-01
             4.4667E+00
 PARAMETER:  1.9164E-01  9.8384E-02  1.1584E-01  2.7355E-01  1.0308E-01 -6.3565E-02  8.5935E-02  5.0226E-02  2.9321E-01 -3.4163E-02
             1.5967E+00
 GRADIENT:   1.4298E+02  2.4421E+01 -1.4404E+01  6.6033E+01 -1.5528E+00 -2.1364E+01  8.3236E+00  7.3051E+00  1.3101E+01  1.6988E+01
             9.0900E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1263.22598401313        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0643E+00  8.1976E-01  6.0888E-01  1.1985E+00  6.5689E-01  9.1731E-01  5.4038E-01  2.0097E-01  1.2796E+00  4.3051E-01
             4.3070E+00
 PARAMETER:  1.6231E-01 -9.8744E-02 -3.9614E-01  2.8104E-01 -3.2024E-01  1.3689E-02 -5.1549E-01 -1.5046E+00  3.4652E-01 -7.4279E-01
             1.5602E+00
 GRADIENT:   6.7187E+01  1.9597E+01 -1.3218E+01  5.5142E+01 -8.1316E-01  3.9661E+00  2.0111E+00  8.5205E-01  1.2944E+01  7.7278E+00
             9.3954E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1273.52322124468        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.0034E+00  5.2833E-01  4.9312E-01  1.2449E+00  4.8906E-01  9.1821E-01  5.0261E-01  1.0579E-01  1.1658E+00  2.4148E-01
             3.6083E+00
 PARAMETER:  1.0340E-01 -5.3804E-01 -6.0701E-01  3.1908E-01 -6.1528E-01  1.4669E-02 -5.8794E-01 -2.1463E+00  2.5344E-01 -1.3210E+00
             1.3832E+00
 GRADIENT:  -3.3852E+01  1.9232E+01 -6.4587E+00  3.6375E+01  1.9915E+01  1.5836E+00 -6.7267E-01  2.7878E-01 -5.7274E+00 -4.9240E-01
            -1.8090E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1277.40205163401        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      391
 NPARAMETR:  1.0582E+00  3.4182E-01  5.0988E-01  1.3769E+00  4.5082E-01  9.2057E-01  1.8616E-01  8.3389E-02  1.1714E+00  2.1167E-01
             3.7006E+00
 PARAMETER:  1.5660E-01 -9.7348E-01 -5.7357E-01  4.1981E-01 -6.9668E-01  1.7233E-02 -1.5811E+00 -2.3842E+00  2.5822E-01 -1.4527E+00
             1.4085E+00
 GRADIENT:   6.3942E+01  1.1860E+01  8.5964E+00  3.6509E+01 -1.1214E+01  9.9427E-01 -3.9107E-02  1.7237E-01  5.2619E+00 -9.8167E-01
            -9.1404E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1282.78072314036        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      568
 NPARAMETR:  1.0201E+00  1.4184E-01  4.2326E-01  1.3893E+00  3.7357E-01  9.1507E-01  1.0000E-02  2.7178E-02  1.0969E+00  1.3914E-01
             3.6607E+00
 PARAMETER:  1.1991E-01 -1.8531E+00 -7.5977E-01  4.2879E-01 -8.8466E-01  1.1250E-02 -4.6455E+00 -3.5053E+00  1.9246E-01 -1.8723E+00
             1.3977E+00
 GRADIENT:  -4.8441E-01  1.4634E+00 -2.3858E+01  1.1289E+01  2.6195E+01  9.7195E-01  0.0000E+00  1.7473E-02 -5.0987E-01 -2.3833E-01
            -3.6866E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1283.99099811460        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      744
 NPARAMETR:  1.0132E+00  4.8029E-02  4.2056E-01  1.4087E+00  3.5661E-01  9.0729E-01  1.0000E-02  1.0000E-02  1.0601E+00  1.9742E-01
             3.7029E+00
 PARAMETER:  1.1313E-01 -2.9359E+00 -7.6616E-01  4.4265E-01 -9.3113E-01  2.7072E-03 -8.7627E+00 -4.8286E+00  1.5836E-01 -1.5224E+00
             1.4091E+00
 GRADIENT:  -7.4246E+00  3.9645E-01 -3.1696E+00 -3.7667E+00 -1.2248E+00 -3.4234E-01  0.0000E+00  0.0000E+00 -1.4865E+00  1.9983E-01
             1.2609E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1284.22370507837        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      920
 NPARAMETR:  1.0138E+00  3.9863E-02  4.4180E-01  1.4317E+00  3.6663E-01  9.0654E-01  1.0000E-02  1.0000E-02  1.0528E+00  2.3533E-01
             3.6374E+00
 PARAMETER:  1.1370E-01 -3.1223E+00 -7.1691E-01  4.5884E-01 -9.0339E-01  1.8825E-03 -8.7003E+00 -4.7618E+00  1.5149E-01 -1.3468E+00
             1.3913E+00
 GRADIENT:  -3.3944E+00  4.8057E-01  5.1396E+00  3.6887E+00 -9.0640E+00 -4.5720E-01  0.0000E+00  0.0000E+00 -1.3986E+00  1.5589E-01
            -4.8805E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1284.46527018990        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1097
 NPARAMETR:  1.0127E+00  1.0000E-02  4.4162E-01  1.4403E+00  3.6521E-01  9.0556E-01  1.0000E-02  1.0000E-02  1.0490E+00  1.7526E-01
             3.6524E+00
 PARAMETER:  1.1264E-01 -4.5225E+00 -7.1730E-01  4.6486E-01 -9.0729E-01  7.9490E-04 -1.1429E+01 -5.2760E+00  1.4784E-01 -1.6415E+00
             1.3954E+00
 GRADIENT:   2.3930E-01  2.1389E-02 -5.3173E-01 -8.6479E-01  1.2606E+00  4.7924E-02  0.0000E+00  0.0000E+00  1.7736E-01 -5.6664E-02
            -3.5138E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1284.46846369229        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  1.0127E+00  1.0000E-02  4.4156E-01  1.4410E+00  3.6494E-01  9.0569E-01  1.0000E-02  1.0000E-02  1.0484E+00  1.9233E-01
             3.6504E+00
 PARAMETER:  1.1260E-01 -4.5688E+00 -7.1744E-01  4.6533E-01 -9.0803E-01  9.4394E-04 -1.1714E+01 -5.3877E+00  1.4729E-01 -1.5486E+00
             1.3948E+00
 GRADIENT:  -3.1406E-01  0.0000E+00 -2.7642E-01 -1.2384E-01  4.4440E-01 -1.1118E-02  0.0000E+00  0.0000E+00  4.9095E-02  1.0365E-02
             2.8411E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1154
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -9.1000E-04 -3.3144E-06  1.2627E-04 -1.4060E-02  2.8891E-04
 SE:             2.8271E-02  1.4936E-06  2.0449E-04  2.6493E-02  5.9797E-03
 N:                     100         100         100         100         100

 P VAL.:         9.7432E-01  2.6476E-02  5.3692E-01  5.9562E-01  9.6146E-01

 ETASHRINKSD(%)  5.2890E+00  9.9995E+01  9.9315E+01  1.1246E+01  7.9967E+01
 ETASHRINKVR(%)  1.0298E+01  1.0000E+02  9.9995E+01  2.1227E+01  9.5987E+01
 EBVSHRINKSD(%)  5.0432E+00  9.9995E+01  9.9238E+01  1.0548E+01  7.9838E+01
 EBVSHRINKVR(%)  9.8321E+00  1.0000E+02  9.9994E+01  1.9984E+01  9.5935E+01
 RELATIVEINF(%)  7.1616E+01  1.3926E-08  1.7630E-04  2.0129E+01  7.2305E-02
 EPSSHRINKSD(%)  2.2583E+01
 EPSSHRINKVR(%)  4.0066E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1284.4684636922855     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -549.31763712854729     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1284.468       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.00E-02  4.42E-01  1.44E+00  3.65E-01  9.06E-01  1.00E-02  1.00E-02  1.05E+00  1.92E-01  3.65E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.019
Stop Time:
Sat Oct  2 01:15:20 CDT 2021