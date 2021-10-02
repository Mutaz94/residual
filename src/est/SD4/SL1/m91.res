Sat Oct  2 02:27:38 CDT 2021
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
$DATA ../../../../data/SD4/SL1/dat91.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m91.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1629.87059622368        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2272E+02 -5.1644E+01 -5.2455E+01 -7.9209E+00  5.8532E+01  1.3491E+01 -2.0456E+00  1.6371E+01 -2.8536E+00  1.8029E+01
             9.0928E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1640.22926834052        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.3455E-01  1.0753E+00  1.2295E+00  1.0012E+00  1.0682E+00  1.0844E+00  1.0089E+00  8.8056E-01  1.0591E+00  8.6237E-01
             9.5720E-01
 PARAMETER:  3.2306E-02  1.7263E-01  3.0663E-01  1.0120E-01  1.6596E-01  1.8105E-01  1.0884E-01 -2.7194E-02  1.5747E-01 -4.8076E-02
             5.6256E-02
 GRADIENT:  -1.6876E+00 -8.4005E-01  1.8188E+01 -2.0607E+01  6.4739E+00  1.9339E+01  2.2574E+00 -3.7076E-01 -3.4571E+00 -2.4194E+01
            -2.1715E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1641.88916877502        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.2690E-01  1.0346E+00  1.2884E+00  1.0364E+00  1.0866E+00  1.0216E+00  8.1601E-01  4.4554E-01  1.0590E+00  1.0694E+00
             9.9245E-01
 PARAMETER:  2.4087E-02  1.3403E-01  3.5339E-01  1.3576E-01  1.8309E-01  1.2140E-01 -1.0333E-01 -7.0846E-01  1.5731E-01  1.6708E-01
             9.2423E-02
 GRADIENT:  -1.9272E+01  8.9462E+00  2.1744E+01 -7.6038E+00 -5.9693E+00 -2.6831E+00 -2.2383E+00 -2.7441E+00 -1.1055E+01 -3.6857E+00
            -1.0244E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1644.21143179295        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      523
 NPARAMETR:  9.3540E-01  9.6009E-01  1.0459E+00  1.0824E+00  9.6824E-01  1.0261E+00  1.0700E+00  3.2951E-01  9.9313E-01  9.6917E-01
             9.8759E-01
 PARAMETER:  3.3224E-02  5.9268E-02  1.4487E-01  1.7919E-01  6.7727E-02  1.2572E-01  1.6762E-01 -1.0101E+00  9.3111E-02  6.8682E-02
             8.7515E-02
 GRADIENT:  -1.9520E+00 -4.2168E+00 -9.1924E+00  6.7106E+00  1.7129E+01 -1.4134E+00 -1.7443E+00  2.6624E-03 -1.9021E+00  4.2627E+00
            -7.6740E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1644.56189513772        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  9.3562E-01  8.7099E-01  1.0065E+00  1.1323E+00  8.9955E-01  1.0296E+00  1.2220E+00  3.4237E-01  9.4411E-01  8.8383E-01
             9.8968E-01
 PARAMETER:  3.3452E-02 -3.8124E-02  1.0644E-01  2.2429E-01 -5.8619E-03  1.2921E-01  3.0048E-01 -9.7188E-01  4.2487E-02 -2.3490E-02
             8.9631E-02
 GRADIENT:  -1.0091E+00  2.5485E-01 -1.1394E+00  1.0389E+00  4.5999E-01  8.6047E-02 -2.1853E-01  2.6777E-01 -3.9548E-01  3.8654E-01
             2.2801E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1644.58959481950        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      880             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3640E-01  8.4280E-01  9.9122E-01  1.1475E+00  8.8119E-01  1.0294E+00  1.2676E+00  2.3237E-01  9.3093E-01  8.7441E-01
             9.9015E-01
 PARAMETER:  3.4284E-02 -7.1029E-02  9.1180E-02  2.3755E-01 -2.6478E-02  1.2898E-01  3.3709E-01 -1.3594E+00  2.8426E-02 -3.4203E-02
             9.0101E-02
 GRADIENT:   3.8213E+02  2.2274E+01  3.4409E+00  1.8647E+02  7.2254E+00  5.2665E+01  9.9355E+00  1.4521E-01  6.1665E+00  2.7224E-01
             4.5334E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1644.59201505805        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1056            RESET HESSIAN, TYPE II
 NPARAMETR:  9.3665E-01  8.4318E-01  9.8882E-01  1.1468E+00  8.8093E-01  1.0297E+00  1.2685E+00  2.1807E-01  9.3100E-01  8.7702E-01
             9.9096E-01
 PARAMETER:  3.4551E-02 -7.0578E-02  8.8753E-02  2.3694E-01 -2.6773E-02  1.2929E-01  3.3780E-01 -1.4229E+00  2.8503E-02 -3.1221E-02
             9.0919E-02
 GRADIENT:   3.8196E+02  2.1662E+01  2.5074E+00  1.8522E+02  8.2580E+00  5.2781E+01  1.0057E+01  1.4171E-01  6.2571E+00  8.0231E-01
             9.4270E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1644.59202055141        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1146
 NPARAMETR:  9.3652E-01  8.4351E-01  9.8869E-01  1.1471E+00  8.8093E-01  1.0296E+00  1.2678E+00  2.1499E-01  9.3091E-01  8.7650E-01
             9.9079E-01
 PARAMETER:  3.4417E-02 -7.0185E-02  8.8629E-02  2.3725E-01 -2.6772E-02  1.2918E-01  3.3732E-01 -1.4372E+00  2.8407E-02 -3.1814E-02
             9.0751E-02
 GRADIENT:   1.0786E+00 -1.9063E-02  3.1750E-01  2.6407E-01  9.7016E-02  1.4718E-01  4.2665E-02  9.1484E-04 -1.7208E-03  1.8684E-02
            -6.5719E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1146
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6513E-04 -1.6528E-03 -7.7677E-03 -4.4656E-03 -1.7416E-02
 SE:             2.9806E-02  1.8678E-02  3.9201E-03  2.5300E-02  2.3415E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9558E-01  9.2949E-01  4.7532E-02  8.5990E-01  4.5698E-01

 ETASHRINKSD(%)  1.4756E-01  3.7427E+01  8.6867E+01  1.5242E+01  2.1558E+01
 ETASHRINKVR(%)  2.9490E-01  6.0846E+01  9.8275E+01  2.8161E+01  3.8468E+01
 EBVSHRINKSD(%)  4.2740E-01  3.7904E+01  8.7650E+01  1.5109E+01  1.9828E+01
 EBVSHRINKVR(%)  8.5298E-01  6.1440E+01  9.8475E+01  2.7936E+01  3.5725E+01
 RELATIVEINF(%)  9.8631E+01  1.7960E+00  1.9544E-01  4.4520E+00  5.8908E+00
 EPSSHRINKSD(%)  4.3009E+01
 EPSSHRINKVR(%)  6.7520E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1644.5920205514133     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -909.44119398767509     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.31
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1644.592       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.37E-01  8.44E-01  9.89E-01  1.15E+00  8.81E-01  1.03E+00  1.27E+00  2.15E-01  9.31E-01  8.77E-01  9.91E-01
 


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
 #CPUT: Total CPU Time in Seconds,       14.353
Stop Time:
Sat Oct  2 02:27:54 CDT 2021
