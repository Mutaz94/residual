Sat Oct  2 05:19:51 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat95.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m95.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1644.33085945998        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9398E+02 -5.3118E+01 -4.2466E+01 -4.2199E+01  8.3337E+01  4.6233E+01 -1.1715E+01  1.4481E+01 -5.5630E+01  5.8580E+00
             2.2810E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1658.27936435577        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.9918E-01  9.8524E-01  1.0691E+00  1.0681E+00  9.5557E-01  9.6229E-01  1.0431E+00  9.3188E-01  1.2886E+00  9.5005E-01
             9.1456E-01
 PARAMETER:  9.9177E-02  8.5129E-02  1.6684E-01  1.6587E-01  5.4554E-02  6.1561E-02  1.4224E-01  2.9445E-02  3.5355E-01  4.8764E-02
             1.0691E-02
 GRADIENT:  -1.9478E+00 -7.0282E+00  1.4829E+00 -1.0486E+01 -1.7489E+00 -5.3541E+00  5.5798E+00  9.1284E+00  1.3828E+01 -3.9540E-01
            -1.1458E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1661.21715736437        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.9443E-01  8.9666E-01  9.9497E-01  1.1409E+00  9.0125E-01  9.7352E-01  9.7406E-01  4.7607E-01  1.2380E+00  1.0020E+00
             8.8835E-01
 PARAMETER:  9.4415E-02 -9.0756E-03  9.4954E-02  2.3183E-01 -3.9695E-03  7.3165E-02  7.3722E-02 -6.4220E-01  3.1351E-01  1.0196E-01
            -1.8392E-02
 GRADIENT:  -1.2596E+01  5.4178E-01 -4.5960E+00  1.3820E+01  8.9000E+00 -5.3381E-01  7.4798E-01  1.4871E+00  1.1978E+01  3.2757E-01
            -2.4513E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1663.21237293597        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  1.0030E+00  8.3801E-01  8.8892E-01  1.1576E+00  8.1705E-01  9.7834E-01  1.3360E+00  3.3518E-01  1.0836E+00  8.7168E-01
             9.4841E-01
 PARAMETER:  1.0297E-01 -7.6723E-02 -1.7743E-02  2.4633E-01 -1.0206E-01  7.8100E-02  3.8970E-01 -9.9310E-01  1.8027E-01 -3.7332E-02
             4.7027E-02
 GRADIENT:   5.0935E+00  2.9208E+00 -2.0903E+00 -3.8899E+00 -9.0410E-01  1.6850E+00  1.8950E+00  1.4248E+00 -3.7239E+00  2.9269E+00
             4.4096E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1663.87363859810        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      700
 NPARAMETR:  9.9919E-01  6.6035E-01  8.7490E-01  1.2627E+00  7.4807E-01  9.7069E-01  1.5766E+00  1.3680E-01  1.0254E+00  8.5176E-01
             9.4004E-01
 PARAMETER:  9.9186E-02 -3.1499E-01 -3.3649E-02  3.3324E-01 -1.9026E-01  7.0252E-02  5.5525E-01 -1.8892E+00  1.2511E-01 -6.0448E-02
             3.8164E-02
 GRADIENT:  -6.2616E-01  1.0355E+00 -2.3760E-01  7.5125E-02 -1.6590E+00 -5.4522E-01  3.0897E-01  1.3240E-01  8.8863E-01 -2.9359E-02
            -6.5844E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1663.88856567910        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      879             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9983E-01  6.1883E-01  8.7932E-01  1.2817E+00  7.4137E-01  9.7194E-01  1.6337E+00  5.0089E-02  1.0088E+00  8.6002E-01
             9.4297E-01
 PARAMETER:  9.9829E-02 -3.7992E-01 -2.8606E-02  3.4815E-01 -1.9926E-01  7.1537E-02  5.9082E-01 -2.8940E+00  1.0873E-01 -5.0796E-02
             4.1275E-02
 GRADIENT:   4.3333E+02  5.1745E+01 -7.0565E-01  3.7701E+02  3.0080E+01  3.8472E+01  1.8532E+01  4.1602E-02  1.0286E+01  6.4965E-01
             1.0887E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1663.91732163836        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  9.9947E-01  6.2282E-01  8.8056E-01  1.2837E+00  7.4046E-01  9.7143E-01  1.6361E+00  1.8120E-02  1.0090E+00  8.6203E-01
             9.4278E-01
 PARAMETER:  9.9475E-02 -3.7350E-01 -2.7197E-02  3.4975E-01 -2.0048E-01  7.1018E-02  5.9231E-01 -3.9107E+00  1.0897E-01 -4.8470E-02
             4.1081E-02
 GRADIENT:   1.0685E+00 -1.3403E-01 -1.3750E-01 -2.0427E+00 -3.5500E-02  6.3864E-02  1.2363E-01  1.8048E-03  6.8566E-03 -1.0419E-02
             2.1233E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1663.91845449364        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     1157
 NPARAMETR:  9.9966E-01  6.2320E-01  8.8066E-01  1.2829E+00  7.4045E-01  9.7150E-01  1.6361E+00  1.0000E-02  1.0091E+00  8.6208E-01
             9.4273E-01
 PARAMETER:  9.9664E-02 -3.7289E-01 -2.7083E-02  3.4911E-01 -2.0049E-01  7.1083E-02  5.9229E-01 -4.9143E+00  1.0901E-01 -4.8406E-02
             4.1030E-02
 GRADIENT:   1.5141E+00 -1.8088E-01  4.4015E-01 -2.9763E+00 -7.2091E-01  9.0076E-02  1.6273E-01  0.0000E+00 -3.1348E-02  8.8949E-03
            -1.0687E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1157
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.1605E-05  8.2658E-03 -4.7870E-04 -7.2687E-03 -8.0031E-03
 SE:             2.9850E-02  1.7440E-02  2.2304E-04  2.6742E-02  2.4102E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9889E-01  6.3553E-01  3.1854E-02  7.8577E-01  7.3985E-01

 ETASHRINKSD(%)  1.0000E-10  4.1575E+01  9.9253E+01  1.0410E+01  1.9256E+01
 ETASHRINKVR(%)  1.0000E-10  6.5865E+01  9.9994E+01  1.9736E+01  3.4803E+01
 EBVSHRINKSD(%)  4.0525E-01  4.3800E+01  9.9287E+01  9.7809E+00  1.6944E+01
 EBVSHRINKVR(%)  8.0886E-01  6.8416E+01  9.9995E+01  1.8605E+01  3.1017E+01
 RELATIVEINF(%)  9.8549E+01  2.7032E+00  7.6791E-04  1.1203E+01  5.5597E+00
 EPSSHRINKSD(%)  4.4221E+01
 EPSSHRINKVR(%)  6.8887E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1663.9184544936422     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -928.76762792990405     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.14
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1663.918       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.23E-01  8.81E-01  1.28E+00  7.40E-01  9.71E-01  1.64E+00  1.00E-02  1.01E+00  8.62E-01  9.43E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.186
Stop Time:
Sat Oct  2 05:20:07 CDT 2021
