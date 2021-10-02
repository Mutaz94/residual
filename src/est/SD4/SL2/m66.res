Sat Oct  2 02:54:09 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat66.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m66.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1619.89954616663        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8315E+02 -5.0313E+01 -7.3929E+00 -2.6044E+01  3.0482E+01  4.1614E+01 -7.2991E+00  3.9211E+00  2.6529E+01 -1.6249E+01
            -2.3896E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1630.16714309612        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.3116E-01  1.1745E+00  1.0068E+00  9.7670E-01  1.0864E+00  9.6044E-01  1.1283E+00  9.4895E-01  7.6391E-01  1.1665E+00
             1.0590E+00
 PARAMETER:  2.8677E-02  2.6088E-01  1.0679E-01  7.6427E-02  1.8285E-01  5.9637E-02  2.2072E-01  4.7602E-02 -1.6930E-01  2.5401E-01
             1.5735E-01
 GRADIENT:  -5.5871E+01  2.6834E+01 -4.3981E+00  3.4545E+01  1.1246E+01 -4.1134E+00 -3.9560E+00  3.8441E-02 -6.8408E+00 -1.1694E+00
            -2.7278E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1630.84057396710        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.3996E-01  9.2304E-01  1.1468E+00  1.1312E+00  1.0250E+00  9.4676E-01  1.4526E+00  8.0175E-01  6.4729E-01  1.1746E+00
             1.0345E+00
 PARAMETER:  3.8086E-02  1.9918E-02  2.3696E-01  2.2325E-01  1.2469E-01  4.5286E-02  4.7333E-01 -1.2096E-01 -3.3496E-01  2.6092E-01
             1.3388E-01
 GRADIENT:  -2.8231E+01  2.7153E+01  1.6873E+01  2.4292E+01 -5.5700E+00 -8.0133E+00 -8.0910E-01 -6.3651E+00 -8.8846E+00 -7.9195E-01
            -1.6617E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1633.41991227872        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.5221E-01  8.2555E-01  8.7629E-01  1.1627E+00  8.4708E-01  9.7117E-01  1.5591E+00  5.4086E-01  6.5563E-01  9.7152E-01
             1.0582E+00
 PARAMETER:  5.1031E-02 -9.1710E-02 -3.2060E-02  2.5078E-01 -6.5960E-02  7.0745E-02  5.4412E-01 -5.1460E-01 -3.2216E-01  7.1109E-02
             1.5661E-01
 GRADIENT:  -9.7510E-01  1.0498E+01 -5.4451E+00  1.7236E+01  7.4264E+00  2.0157E+00 -1.9578E-01  1.8252E-01 -5.1790E+00 -8.8624E-01
            -1.9274E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1634.49720606509        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.5158E-01  6.1680E-01  7.9012E-01  1.2647E+00  7.1373E-01  9.6458E-01  1.9241E+00  3.5958E-01  6.5128E-01  8.6566E-01
             1.0594E+00
 PARAMETER:  5.0369E-02 -3.8321E-01 -1.3557E-01  3.3480E-01 -2.3725E-01  6.3941E-02  7.5448E-01 -9.2283E-01 -3.2882E-01 -4.4263E-02
             1.5769E-01
 GRADIENT:  -3.3301E-01  4.8525E+00  3.0591E+00  7.7729E+00 -6.2999E+00 -9.5485E-02 -6.4503E-01  5.1185E-02  1.0512E+00 -6.2805E-01
            -1.2602E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1634.60423909505        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  9.5101E-01  5.5559E-01  7.8769E-01  1.2915E+00  6.9706E-01  9.6386E-01  2.0899E+00  3.0791E-01  6.3402E-01  8.6644E-01
             1.0637E+00
 PARAMETER:  4.9768E-02 -4.8772E-01 -1.3865E-01  3.5583E-01 -2.6088E-01  6.3196E-02  8.3713E-01 -1.0779E+00 -3.5567E-01 -4.3367E-02
             1.6176E-01
 GRADIENT:  -2.0081E-02  6.4815E-01  2.0933E+00 -1.9286E+00 -2.3043E+00  5.1852E-03  7.1237E-02 -2.1574E-01 -1.9973E-02 -5.5809E-01
            -4.2524E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1634.60513112865        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1053
 NPARAMETR:  9.5082E-01  5.4816E-01  7.9697E-01  1.2973E+00  7.0094E-01  9.6366E-01  2.1114E+00  3.1577E-01  6.3196E-01  8.7525E-01
             1.0639E+00
 PARAMETER:  4.9568E-02 -5.0120E-01 -1.2693E-01  3.6026E-01 -2.5534E-01  6.2988E-02  8.4736E-01 -1.0527E+00 -3.5894E-01 -3.3244E-02
             1.6194E-01
 GRADIENT:   1.2036E-02  5.6745E-01  1.3493E+00 -3.3739E-01 -1.2154E+00  5.2682E-03  2.7391E-02 -2.6277E-01 -4.2169E-02 -2.7738E-01
            -3.8793E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1634.60749443970        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1228
 NPARAMETR:  9.5024E-01  5.3224E-01  8.3026E-01  1.3112E+00  7.1663E-01  9.6317E-01  2.1608E+00  3.7104E-01  6.2661E-01  8.9876E-01
             1.0636E+00
 PARAMETER:  4.8959E-02 -5.3066E-01 -8.6013E-02  3.7096E-01 -2.3320E-01  6.2479E-02  8.7048E-01 -8.9144E-01 -3.6744E-01 -6.7431E-03
             1.6166E-01
 GRADIENT:   5.7965E-02  5.4171E-01  6.2876E-03  2.6096E+00  5.4502E-01  1.2433E-02 -3.5460E-02 -3.6281E-01 -6.9547E-02  3.1513E-01
            -3.0805E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1634.64265503841        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1414             RESET HESSIAN, TYPE I
 NPARAMETR:  9.5016E-01  5.2245E-01  8.5957E-01  1.3184E+00  7.2974E-01  9.6301E-01  2.2002E+00  4.6489E-01  6.2217E-01  9.0121E-01
             1.0624E+00
 PARAMETER:  4.8876E-02 -5.4923E-01 -5.1325E-02  3.7640E-01 -2.1507E-01  6.2307E-02  8.8853E-01 -6.6596E-01 -3.7454E-01 -4.0197E-03
             1.6056E-01
 GRADIENT:   3.1673E+02  4.1802E+01  3.2475E+00  3.4195E+02  1.9063E+01  3.1962E+01  3.8004E+01  4.0630E-01  1.2765E+01  6.6737E-01
             1.2466E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1634.64265503841        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1469
 NPARAMETR:  9.5016E-01  5.2245E-01  8.5957E-01  1.3184E+00  7.2974E-01  9.6301E-01  2.2002E+00  4.6489E-01  6.2217E-01  9.0121E-01
             1.0624E+00
 PARAMETER:  4.8876E-02 -5.4923E-01 -5.1325E-02  3.7640E-01 -2.1507E-01  6.2307E-02  8.8853E-01 -6.6596E-01 -3.7454E-01 -4.0197E-03
             1.6056E-01
 GRADIENT:   1.0612E+00 -1.7762E-02 -1.4652E-01 -2.1608E+00 -6.8922E-02  7.0395E-02  4.2726E-01 -2.6191E-02  1.1082E-01 -6.6211E-02
            -3.7939E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1469
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.3491E-04  2.7771E-02 -2.0304E-02 -3.1213E-02 -3.4605E-03
 SE:             2.9823E-02  2.1119E-02  9.6647E-03  2.2314E-02  2.2663E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7767E-01  1.8852E-01  3.5654E-02  1.6187E-01  8.7864E-01

 ETASHRINKSD(%)  8.7920E-02  2.9247E+01  6.7622E+01  2.5246E+01  2.4077E+01
 ETASHRINKVR(%)  1.7576E-01  4.9941E+01  8.9517E+01  4.4119E+01  4.2356E+01
 EBVSHRINKSD(%)  5.2639E-01  3.0646E+01  7.0025E+01  2.3455E+01  2.1494E+01
 EBVSHRINKVR(%)  1.0500E+00  5.1900E+01  9.1015E+01  4.1409E+01  3.8369E+01
 RELATIVEINF(%)  9.8288E+01  7.8349E+00  9.2172E-01  1.0012E+01  6.1117E+00
 EPSSHRINKSD(%)  4.3327E+01
 EPSSHRINKVR(%)  6.7882E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1634.6426550384053     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -899.49182847466716     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.26
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1634.643       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.50E-01  5.22E-01  8.60E-01  1.32E+00  7.30E-01  9.63E-01  2.20E+00  4.65E-01  6.22E-01  9.01E-01  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.297
Stop Time:
Sat Oct  2 02:54:29 CDT 2021
