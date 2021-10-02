Sat Oct  2 02:51:20 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat58.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1591.57168297901        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1929E+02  9.9046E+00  1.1612E+01  2.4347E+01 -8.7625E+00  5.4357E+01 -6.2154E+00  1.7456E+00  5.9782E+00  5.6618E+00
            -5.4885E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1600.05271057010        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.3358E-01  1.0803E+00  9.5021E-01  9.6662E-01  1.0355E+00  8.6958E-01  1.1799E+00  9.2729E-01  9.0236E-01  8.7177E-01
             1.1089E+00
 PARAMETER:  3.1269E-02  1.7728E-01  4.8926E-02  6.6050E-02  1.3484E-01 -3.9746E-02  2.6543E-01  2.4508E-02 -2.7390E-03 -3.7227E-02
             2.0338E-01
 GRADIENT:   2.8770E+02  4.9188E+01  3.0600E+00  4.3742E+01  3.4562E+01  3.7134E+00  5.7478E+00 -5.1960E-01 -9.4907E-01 -9.2899E+00
            -1.0570E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1601.07315421633        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      223
 NPARAMETR:  9.3386E-01  9.8046E-01  8.9936E-01  1.0308E+00  9.4686E-01  9.2295E-01  1.3255E+00  7.0416E-01  8.7321E-01  7.5853E-01
             1.2473E+00
 PARAMETER:  3.1574E-02  8.0271E-02 -6.0770E-03  1.3036E-01  4.5392E-02  1.9822E-02  3.8180E-01 -2.5074E-01 -3.5579E-02 -1.7638E-01
             3.2101E-01
 GRADIENT:  -1.9411E+01  8.9671E+00  6.6232E+00  4.2652E+00  1.7084E+01 -1.0128E+01  2.8252E+00 -1.0343E+00  2.1286E+00 -1.0733E+01
             3.1437E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1605.17329393581        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      401
 NPARAMETR:  9.4143E-01  9.4724E-01  6.9312E-01  1.0295E+00  8.0591E-01  9.4614E-01  1.3147E+00  3.5526E-01  8.5754E-01  7.3037E-01
             1.1242E+00
 PARAMETER:  3.9643E-02  4.5793E-02 -2.6656E-01  1.2908E-01 -1.1578E-01  4.4634E-02  3.7360E-01 -9.3492E-01 -5.3692E-02 -2.1421E-01
             2.1711E-01
 GRADIENT:  -9.3594E-01  5.9952E+00 -1.9532E+00  4.0774E+00  1.4719E+00 -1.7510E+00 -7.4433E-01  4.0714E-01  8.4843E-01 -7.0782E-03
            -2.0974E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1606.59872368281        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      576
 NPARAMETR:  9.3746E-01  6.1284E-01  7.3499E-01  1.2241E+00  7.0032E-01  9.4424E-01  1.8771E+00  6.3990E-02  7.4027E-01  7.4585E-01
             1.1383E+00
 PARAMETER:  3.5417E-02 -3.8966E-01 -2.0790E-01  3.0223E-01 -2.5621E-01  4.2624E-02  7.2973E-01 -2.6490E+00 -2.0074E-01 -1.9323E-01
             2.2952E-01
 GRADIENT:  -4.7542E+00  6.4335E+00  5.4538E+00  8.0236E+00 -1.0171E+01 -1.3391E+00  1.9427E-01 -1.5751E-02 -8.9026E-01 -3.0536E-01
            -7.5196E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1606.69621639658        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      751
 NPARAMETR:  9.3794E-01  5.5107E-01  7.6005E-01  1.2563E+00  7.0033E-01  9.4512E-01  2.0226E+00  4.0922E-02  7.2868E-01  7.6936E-01
             1.1415E+00
 PARAMETER:  3.5935E-02 -4.9590E-01 -1.7437E-01  3.2816E-01 -2.5620E-01  4.3554E-02  8.0436E-01 -3.0961E+00 -2.1652E-01 -1.6220E-01
             2.3231E-01
 GRADIENT:  -7.7053E-01  9.1793E-01  1.1253E+00  8.4820E-01 -1.7239E+00 -5.2420E-01  1.9257E-02 -7.1448E-03 -1.2539E-01 -6.3901E-02
            -2.8907E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1606.70170045302        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      934
 NPARAMETR:  9.3875E-01  5.5052E-01  7.5975E-01  1.2549E+00  7.0064E-01  9.4651E-01  2.0287E+00  4.9379E-02  7.2868E-01  7.6898E-01
             1.1410E+00
 PARAMETER:  3.6791E-02 -4.9690E-01 -1.7477E-01  3.2708E-01 -2.5577E-01  4.5022E-02  8.0738E-01 -2.9082E+00 -2.1652E-01 -1.6269E-01
             2.3192E-01
 GRADIENT:   1.3857E+00  1.1286E-01  4.0560E-01 -2.3307E+00 -4.1496E-01  5.4129E-02  4.6076E-01 -1.0018E-02  1.2727E-02  2.1483E-02
            -7.2883E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1606.72317268896        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1113
 NPARAMETR:  9.3647E-01  5.4656E-01  7.6124E-01  1.2614E+00  7.0002E-01  9.4607E-01  2.0076E+00  2.4437E-01  7.2936E-01  7.6793E-01
             1.1416E+00
 PARAMETER:  3.4365E-02 -5.0411E-01 -1.7281E-01  3.3223E-01 -2.5665E-01  4.4560E-02  7.9693E-01 -1.3091E+00 -2.1558E-01 -1.6405E-01
             2.3241E-01
 GRADIENT:  -4.6784E+00 -3.3168E-01 -6.9640E+00  7.5140E+00  3.8841E+00 -1.3998E-01 -1.8005E+00  2.9727E-02  6.7486E-01  2.7567E+00
             2.1471E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1606.86582008001        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1292
 NPARAMETR:  9.3708E-01  5.4401E-01  7.7097E-01  1.2590E+00  7.0188E-01  9.4519E-01  2.0414E+00  3.8924E-01  7.2235E-01  7.2929E-01
             1.1365E+00
 PARAMETER:  3.5014E-02 -5.0879E-01 -1.6011E-01  3.3034E-01 -2.5400E-01  4.3631E-02  8.1364E-01 -8.4357E-01 -2.2525E-01 -2.1569E-01
             2.2799E-01
 GRADIENT:  -2.4434E+00 -2.9478E-01 -2.4890E-01 -4.5384E+00 -2.1485E+00 -4.0619E-01 -2.7047E-01  2.3487E-02 -3.3114E-01  1.9993E-01
             5.1814E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1606.87169903930        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1385
 NPARAMETR:  9.3837E-01  5.4474E-01  7.7112E-01  1.2600E+00  7.0255E-01  9.4647E-01  2.0489E+00  3.8725E-01  7.2374E-01  7.2804E-01
             1.1352E+00
 PARAMETER:  3.6394E-02 -5.0745E-01 -1.5991E-01  3.3114E-01 -2.5304E-01  4.4983E-02  8.1730E-01 -8.4867E-01 -2.2332E-01 -2.1740E-01
             2.2679E-01
 GRADIENT:   9.6652E-01  4.0999E-01 -1.4021E+00 -1.2461E+00 -3.0016E-01  1.0382E-01  3.8648E-01 -2.3066E-02  5.8319E-02 -1.9249E-01
            -9.4678E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1385
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.9309E-04  2.6460E-02 -1.8072E-02 -2.5939E-02  2.8893E-04
 SE:             2.9799E-02  2.1037E-02  8.6898E-03  2.3899E-02  2.0868E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8144E-01  2.0847E-01  3.7557E-02  2.7777E-01  9.8895E-01

 ETASHRINKSD(%)  1.7107E-01  2.9522E+01  7.0888E+01  1.9935E+01  3.0089E+01
 ETASHRINKVR(%)  3.4185E-01  5.0329E+01  9.1525E+01  3.5895E+01  5.1125E+01
 EBVSHRINKSD(%)  6.0521E-01  3.0947E+01  7.2152E+01  1.8680E+01  2.8066E+01
 EBVSHRINKVR(%)  1.2068E+00  5.2317E+01  9.2245E+01  3.3870E+01  4.8255E+01
 RELATIVEINF(%)  9.8144E+01  7.2150E+00  6.4139E-01  1.2153E+01  3.7565E+00
 EPSSHRINKSD(%)  4.2481E+01
 EPSSHRINKVR(%)  6.6916E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1606.8716990392986     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -871.72087247556044     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.21
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1606.872       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.38E-01  5.45E-01  7.71E-01  1.26E+00  7.03E-01  9.46E-01  2.05E+00  3.87E-01  7.24E-01  7.28E-01  1.14E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.240
Stop Time:
Sat Oct  2 02:51:39 CDT 2021