Fri Oct  1 13:37:02 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat50.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m50.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2138.06691753776        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2845E+02 -6.3927E+00 -3.0909E+01  2.7759E+01 -1.1491E+00  3.8865E+01  1.2791E+01  1.7711E+01  2.0930E+01  2.7190E+01
            -1.2520E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2145.72513600072        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  9.9492E-01  9.6752E-01  1.1576E+00  1.0526E+00  1.0482E+00  1.0058E+00  8.7392E-01  8.0381E-01  9.3674E-01  8.7011E-01
             9.8962E-01
 PARAMETER:  9.4908E-02  6.6977E-02  2.4634E-01  1.5130E-01  1.4705E-01  1.0577E-01 -3.4772E-02 -1.1840E-01  3.4655E-02 -3.9134E-02
             8.9566E-02
 GRADIENT:   4.2966E+02  3.2251E+01  5.6374E+00  1.0777E+02  1.2556E+01  4.5533E+01  2.5080E+00  3.2826E+00  9.1773E-01 -1.2006E+01
            -3.1950E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2147.93106124417        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.7488E-01  9.1086E-01  1.2375E+00  1.0750E+00  1.0981E+00  9.8675E-01  6.3206E-01  5.1085E-01  1.0256E+00  1.1123E+00
             1.0318E+00
 PARAMETER:  7.4558E-02  6.6375E-03  3.1306E-01  1.7231E-01  1.9362E-01  8.6657E-02 -3.5877E-01 -5.7168E-01  1.2523E-01  2.0641E-01
             1.3133E-01
 GRADIENT:   3.5232E+02  8.1542E-01 -2.3887E+01  1.0452E+02  2.9053E+01  3.4142E+01  5.3049E+00  3.5113E+00  1.9437E+01  1.0802E+01
             7.6569E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2151.05574784612        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      337
 NPARAMETR:  1.0007E+00  9.0493E-01  1.4978E+00  1.1014E+00  1.1891E+00  1.0070E+00  5.3039E-01  2.9506E-01  1.0113E+00  1.2298E+00
             1.0235E+00
 PARAMETER:  1.0068E-01  1.0539E-04  5.0396E-01  1.9657E-01  2.7322E-01  1.0702E-01 -5.3415E-01 -1.1206E+00  1.1127E-01  3.0684E-01
             1.2322E-01
 GRADIENT:   1.2605E+01 -2.6791E-01  5.5492E+00 -8.7782E+00 -7.2261E+00  1.1954E+00  6.9770E-01  5.0534E-01  4.2421E+00  4.2444E+00
            -4.5349E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2152.01110866638        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      515
 NPARAMETR:  9.9277E-01  7.0052E-01  1.4932E+00  1.2388E+00  1.1054E+00  1.0010E+00  4.8823E-01  4.7297E-02  9.1104E-01  1.1709E+00
             1.0305E+00
 PARAMETER:  9.2740E-02 -2.5593E-01  5.0094E-01  3.1413E-01  2.0017E-01  1.0104E-01 -6.1697E-01 -2.9513E+00  6.8292E-03  2.5777E-01
             1.3002E-01
 GRADIENT:  -7.4495E-01  4.8982E+00  2.6374E+00  7.4900E+00 -5.0141E+00 -2.5905E-01  2.0729E-02  9.8834E-03  4.6196E-01  7.2606E-01
             5.3047E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2152.06295860311        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      697
 NPARAMETR:  9.9243E-01  6.3151E-01  1.5119E+00  1.2783E+00  1.0916E+00  1.0009E+00  4.5382E-01  1.4531E-02  8.8371E-01  1.1676E+00
             1.0298E+00
 PARAMETER:  9.2402E-02 -3.5964E-01  5.1338E-01  3.4557E-01  1.8764E-01  1.0088E-01 -6.9005E-01 -4.1315E+00 -2.3629E-02  2.5499E-01
             1.2941E-01
 GRADIENT:   4.2750E-01  2.1599E-01  1.8018E-01 -1.1380E+00  1.4305E-01  5.8235E-02  8.2880E-03  8.3763E-04 -4.2948E-02  5.5965E-02
             3.2173E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2152.06368365906        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  9.9309E-01  6.3208E-01  1.5106E+00  1.2779E+00  1.0907E+00  1.0011E+00  4.5182E-01  1.0000E-02  8.8355E-01  1.1670E+00
             1.0297E+00
 PARAMETER:  9.3069E-02 -3.5874E-01  5.1250E-01  3.4523E-01  1.8686E-01  1.0105E-01 -6.9448E-01 -4.6670E+00 -2.3803E-02  2.5446E-01
             1.2930E-01
 GRADIENT:   1.8717E+00  3.7121E-01  4.0790E-01 -1.1561E+00 -4.0779E-01  1.2176E-01 -3.7085E-03  0.0000E+00 -2.4885E-01  8.5334E-02
            -1.0486E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2152.06416421710        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  9.9239E-01  6.3398E-01  1.5082E+00  1.2774E+00  1.0891E+00  1.0009E+00  4.5311E-01  1.0000E-02  8.8387E-01  1.1654E+00
             1.0297E+00
 PARAMETER:  9.2976E-02 -3.5934E-01  5.1202E-01  3.4500E-01  1.8702E-01  1.0104E-01 -6.8754E-01 -4.6670E+00 -2.3408E-02  2.5426E-01
             1.2936E-01
 GRADIENT:   2.0288E-01 -1.8681E-01  7.8923E-02  6.6962E-02  3.0625E-01  8.3446E-03  7.9902E-04  0.0000E+00  1.7347E-03  3.8163E-02
             1.0581E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      986
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.0338E-04 -1.1677E-02 -2.0211E-04 -1.5119E-03 -2.7704E-02
 SE:             2.9875E-02  5.5433E-03  1.3051E-04  2.9001E-02  2.4673E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8389E-01  3.5166E-02  1.2148E-01  9.5842E-01  2.6151E-01

 ETASHRINKSD(%)  1.0000E-10  8.1429E+01  9.9563E+01  2.8442E+00  1.7342E+01
 ETASHRINKVR(%)  1.0000E-10  9.6551E+01  9.9998E+01  5.6075E+00  3.1676E+01
 EBVSHRINKSD(%)  3.4517E-01  8.2476E+01  9.9551E+01  2.8885E+00  1.3608E+01
 EBVSHRINKVR(%)  6.8916E-01  9.6929E+01  9.9998E+01  5.6936E+00  2.5364E+01
 RELATIVEINF(%)  9.8596E+01  1.8045E-01  4.4480E-04  6.4420E+00  1.3335E+01
 EPSSHRINKSD(%)  3.1161E+01
 EPSSHRINKVR(%)  5.2612E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2152.0641642170958     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1233.1256310124231     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.29
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2152.064       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  6.32E-01  1.51E+00  1.28E+00  1.09E+00  1.00E+00  4.55E-01  1.00E-02  8.84E-01  1.17E+00  1.03E+00
 


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
1THERE ARE ERROR MESSAGES IN FILE PRDERR                                                                  
 #CPUT: Total CPU Time in Seconds,       14.332
Stop Time:
Fri Oct  1 13:37:19 CDT 2021
