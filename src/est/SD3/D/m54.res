Fri Oct  1 22:11:55 CDT 2021
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
$DATA ../../../../data/SD3/D/dat54.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m54.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   25951.4541424668        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.2403E+02  6.2020E+02 -2.3034E+01  5.2982E+02  1.3063E+02 -2.2996E+03 -9.8216E+02 -4.3753E+01 -1.5551E+03 -6.6105E+02
            -5.0763E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -614.011524250359        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.5857E+00  1.1746E+00  1.0047E+00  1.3379E+00  1.0077E+00  1.9226E+00  1.2543E+00  9.7361E-01  1.2074E+00  1.0337E+00
             1.4581E+01
 PARAMETER:  5.6104E-01  2.6091E-01  1.0469E-01  3.9109E-01  1.0764E-01  7.5370E-01  3.2656E-01  7.3259E-02  2.8845E-01  1.3316E-01
             2.7797E+00
 GRADIENT:   8.1013E+01 -5.8504E+00 -3.0416E+00 -1.7152E+00  3.3181E-01  4.4632E+01 -1.6412E+01  4.4359E+00 -1.1896E+01  1.3402E+01
             1.4974E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -676.797565704161        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.4634E+00  7.9433E-01  3.9989E+00  1.6732E+00  1.4527E+00  2.5587E+00  4.9399E+00  2.5939E-01  2.1794E+00  3.0778E-01
             1.3491E+01
 PARAMETER:  4.8078E-01 -1.3025E-01  1.4860E+00  6.1475E-01  4.7343E-01  1.0395E+00  1.6973E+00 -1.2494E+00  8.7904E-01 -1.0784E+00
             2.7020E+00
 GRADIENT:   1.2767E+01 -9.3991E+00 -1.6258E+00 -3.7195E-01 -1.2488E+01  6.8023E+01  2.4820E+01  6.8057E-02  4.3974E+01  1.1203E+00
             2.6800E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -697.812959738243        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.3320E+00  1.1114E+00  2.9018E+00  1.3144E+00  1.5531E+00  2.0642E+00  4.1602E+00  1.6325E-02  1.2681E+00  8.8869E-01
             1.2500E+01
 PARAMETER:  3.8670E-01  2.0561E-01  1.1653E+00  3.7335E-01  5.4025E-01  8.2473E-01  1.5256E+00 -4.0151E+00  3.3756E-01 -1.8008E-02
             2.6257E+00
 GRADIENT:  -1.1474E+01 -9.8386E+00 -1.3386E+00 -5.4067E+00 -6.8108E+00  4.1055E+00  4.2320E+00  2.9424E-04  1.8834E+01  9.0752E+00
             2.0588E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -709.067356087700        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:      356             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3203E+00  1.1230E+00  3.0387E+00  1.2980E+00  1.5802E+00  2.0375E+00  4.1393E+00  1.0128E-02  9.0215E-01  6.4306E-01
             1.2365E+01
 PARAMETER:  3.7785E-01  2.1601E-01  1.2114E+00  3.6080E-01  5.5758E-01  8.1174E-01  1.5205E+00 -4.4924E+00 -2.9778E-03 -3.4151E-01
             2.6148E+00
 GRADIENT:  -7.4531E+00 -6.2293E+00  1.1823E+00  9.0881E+00 -8.3990E+00  1.0836E+01 -6.5045E-01  1.0936E-04  7.6827E+00  4.5423E+00
             1.8782E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -709.311148873741        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      492             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3203E+00  1.1230E+00  3.0277E+00  1.2980E+00  1.5803E+00  2.0375E+00  4.1392E+00  1.0232E-02  8.8966E-01  6.3105E-01
             1.2361E+01
 PARAMETER:  3.7786E-01  2.1601E-01  1.2078E+00  3.6079E-01  5.5758E-01  8.1174E-01  1.5205E+00 -4.4823E+00 -1.6921E-02 -3.6037E-01
             2.6145E+00
 GRADIENT:  -7.4311E+00 -6.1178E+00  1.1891E+00  1.0002E+01 -8.2742E+00  1.0842E+01 -9.8964E-01  1.1274E-04  7.3266E+00  4.3680E+00
             1.8719E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -713.236328099140        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:      647
 NPARAMETR:  1.3233E+00  1.1216E+00  3.0489E+00  1.2952E+00  1.5855E+00  2.0375E+00  4.1061E+00  1.0000E-02  8.9017E-01  1.4912E-01
             1.2196E+01
 PARAMETER:  3.8016E-01  2.1476E-01  1.2148E+00  3.5865E-01  5.6093E-01  8.1171E-01  1.5125E+00 -4.5710E+00 -1.6341E-02 -1.8030E+00
             2.6011E+00
 GRADIENT:  -2.7043E+01 -7.6428E+00  1.2428E+00  8.5124E+00 -7.7375E+00 -3.0843E+01 -3.9252E+01  0.0000E+00  6.4399E+00  2.4279E-01
             1.4799E+02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -713.250527028001        NO. OF FUNC. EVALS.: 122
 CUMULATIVE NO. OF FUNC. EVALS.:      769
 NPARAMETR:  1.3234E+00  1.1216E+00  3.0494E+00  1.2951E+00  1.5857E+00  2.0373E+00  4.1058E+00  1.0000E-02  8.8746E-01  1.4557E-01
             1.2198E+01
 PARAMETER:  3.8017E-01  2.1475E-01  1.2148E+00  3.5864E-01  5.6095E-01  8.1171E-01  1.5125E+00 -4.5710E+00 -1.9405E-02 -1.8090E+00
             2.6011E+00
 GRADIENT:  -9.3129E+02  3.2020E+03 -5.6627E+02  9.6979E+02 -6.2283E+02  1.0492E+03  2.9133E+02  0.0000E+00 -6.8885E+03  2.3752E-01
            -1.9184E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      769
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.7738E-02  3.8816E-02 -1.0819E-06 -5.5641E-02  5.4617E-04
 SE:             3.0777E-02  2.6577E-02  1.1849E-05  9.9345E-03  7.2960E-04
 N:                     100         100         100         100         100

 P VAL.:         2.2012E-01  1.4415E-01  9.2725E-01  2.1394E-08  4.5410E-01

 ETASHRINKSD(%)  1.0000E-10  1.0964E+01  9.9960E+01  6.6718E+01  9.7556E+01
 ETASHRINKVR(%)  1.0000E-10  2.0727E+01  1.0000E+02  8.8923E+01  9.9940E+01
 EBVSHRINKSD(%)  5.5693E+00  1.7787E+01  9.9917E+01  6.5834E+01  9.5793E+01
 EBVSHRINKVR(%)  1.0829E+01  3.2411E+01  1.0000E+02  8.8327E+01  9.9823E+01
 RELATIVEINF(%)  8.7711E+01  2.5357E+01  8.1795E-06  4.5989E+00  2.0565E-02
 EPSSHRINKSD(%)  1.3042E+01
 EPSSHRINKVR(%)  2.4384E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -713.25052702800087     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       389.47571281760622     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.80
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -713.251       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.32E+00  1.12E+00  3.05E+00  1.30E+00  1.59E+00  2.04E+00  4.11E+00  1.00E-02  8.87E-01  1.48E-01  1.22E+01
 


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
 #CPUT: Total CPU Time in Seconds,       17.854
Stop Time:
Fri Oct  1 22:12:15 CDT 2021