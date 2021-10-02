Fri Oct  1 22:55:45 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD3/All/dat10.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]

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
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   1761.52107683515        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   4.1561E+02  8.3072E+01 -1.2901E+03 -2.4095E+02 -2.2299E+02 -1.0688E+03 -6.9454E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1371.28072642767        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  9.5369E-01  1.0399E+00  1.8001E+01  1.9813E+00  1.5857E+00  3.7891E+00  3.8509E+00
 PARAMETER:  5.2588E-02  1.3908E-01  2.9904E+00  7.8377E-01  5.6101E-01  1.4321E+00  1.4483E+00
 GRADIENT:  -2.3848E+01 -1.2056E+02 -7.6017E-01  1.1254E+02  2.3363E+01 -1.3617E-03 -1.6015E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1404.09729886845        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  1.0471E+00  1.1971E+00  2.9521E+01  1.4718E+00  1.4386E+00  1.1355E+00  4.2925E+00
 PARAMETER:  1.4599E-01  2.7991E-01  3.4851E+00  4.8648E-01  4.6369E-01  2.2703E-01  1.5569E+00
 GRADIENT:   2.9102E+01 -1.5161E+00 -1.5004E-01  7.8217E-01  7.4982E+00 -8.4837E-04  8.6305E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1405.45594856717        NO. OF FUNC. EVALS.: 107
 CUMULATIVE NO. OF FUNC. EVALS.:      219
 NPARAMETR:  1.0520E+00  1.2382E+00  2.4547E+02  1.5765E+00  1.4264E+00  1.1862E+00  4.3124E+00
 PARAMETER:  1.5066E-01  3.1365E-01  5.6032E+00  5.5522E-01  4.5516E-01  2.7078E-01  1.5615E+00
 GRADIENT:   3.2437E+01  3.7980E+01 -5.2699E-03  2.4301E+01  8.3294E+00 -1.1112E-05  1.4551E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1405.47293375638        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      311
 NPARAMETR:  1.0486E+00  1.2354E+00  6.1061E+03  1.5721E+00  1.4271E+00  1.1907E+00  4.3232E+00
 PARAMETER:  1.4745E-01  3.1138E-01  8.8170E+00  5.5238E-01  4.5568E-01  2.7451E-01  1.5640E+00
 GRADIENT:  -9.7216E-02 -1.0668E-01 -2.8336E-04  5.6827E-03  3.3110E-03 -1.9051E-08 -6.7039E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1405.47348519530        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      425
 NPARAMETR:  1.0489E+00  1.2353E+00  6.7871E+06  1.5739E+00  1.4271E+00  1.1797E+00  4.3231E+00
 PARAMETER:  1.4775E-01  3.1131E-01  1.5831E+01  5.5357E-01  4.5561E-01  2.6526E-01  1.5640E+00
 GRADIENT:   1.5539E-01 -1.7324E-01 -2.5254E-07  3.8555E-01  1.2254E-02  0.0000E+00 -9.5441E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      425
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.1588E-03 -6.8018E-03  1.4668E-10
 SE:             2.9445E-02  2.8713E-02  4.7439E-10
 N:                     100         100         100

 P VAL.:         9.1457E-01  8.1274E-01  7.5717E-01

 ETASHRINKSD(%)  1.3550E+00  3.8095E+00  1.0000E+02
 ETASHRINKVR(%)  2.6917E+00  7.4738E+00  1.0000E+02
 EBVSHRINKSD(%)  2.0243E+00  3.4411E+00  1.0000E+02
 EBVSHRINKVR(%)  4.0076E+00  6.7638E+00  1.0000E+02
 RELATIVEINF(%)  8.8765E+01  8.5112E+01  0.0000E+00
 EPSSHRINKSD(%)  1.5466E+01
 EPSSHRINKVR(%)  2.8540E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1405.4734851953035     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -302.74724534969641     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     4.85
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1405.473       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.05E+00  1.24E+00  6.79E+06  1.57E+00  1.43E+00  1.18E+00  4.32E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,        4.895
Stop Time:
Fri Oct  1 22:55:52 CDT 2021
