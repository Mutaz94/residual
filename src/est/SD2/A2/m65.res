Fri Oct  1 10:05:23 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat65.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m65.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -619.005593933837        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0268E+02  7.2694E+01  1.1260E+02  4.9476E+01  2.1467E+02  7.2584E+01 -4.3752E+01 -1.4363E+02 -5.6771E+01 -1.4317E+02
            -2.6274E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1613.11401226499        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0413E+00  9.7959E-01  9.6453E-01  1.0463E+00  9.1816E-01  8.4651E-01  9.7888E-01  9.9863E-01  1.0280E+00  1.0060E+00
             2.3273E+00
 PARAMETER:  1.4050E-01  7.9376E-02  6.3887E-02  1.4530E-01  1.4614E-02 -6.6633E-02  7.8658E-02  9.8625E-02  1.2758E-01  1.0600E-01
             9.4473E-01
 GRADIENT:   1.4367E+02  7.5719E+00  5.9740E+00  2.8495E+00  2.7625E+01 -3.2271E+00  3.1485E+00  5.1498E+00 -6.9561E+00 -8.9964E+00
            -2.4940E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1627.06025866964        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0344E+00  6.1654E-01  4.3661E-01  1.2513E+00  4.7172E-01  8.6654E-01  4.7777E-01  4.3806E-01  1.0860E+00  6.0971E-01
             2.3251E+00
 PARAMETER:  1.3385E-01 -3.8363E-01 -7.2872E-01  3.2415E-01 -6.5137E-01 -4.3250E-02 -6.3863E-01 -7.2540E-01  1.8254E-01 -3.9477E-01
             9.4375E-01
 GRADIENT:   1.0117E+02  4.5444E+01 -4.4323E+01  1.9754E+02  1.1539E+02  2.8530E+00 -6.0770E+00 -1.6737E+00 -2.3669E+01 -2.5244E+01
            -1.9394E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1649.49979051640        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      295
 NPARAMETR:  1.0222E+00  5.5886E-01  4.8495E-01  1.2490E+00  4.7452E-01  8.6238E-01  3.0189E-01  2.9048E-01  1.1500E+00  7.7687E-01
             2.5801E+00
 PARAMETER:  1.2198E-01 -4.8185E-01 -6.2371E-01  3.2235E-01 -6.4545E-01 -4.8062E-02 -1.0977E+00 -1.1362E+00  2.3980E-01 -1.5248E-01
             1.0478E+00
 GRADIENT:  -3.4221E+01  2.9110E+01 -9.8419E+00  6.9450E+01  1.0608E+01 -3.9097E-01 -1.1746E+00  1.1482E+00  4.1174E+00  2.9956E+00
            -6.5463E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1659.55253937310        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      470
 NPARAMETR:  1.0352E+00  4.4381E-01  4.3752E-01  1.2386E+00  4.1050E-01  8.5505E-01  1.5429E+00  5.3609E-02  1.0290E+00  6.7641E-01
             2.7430E+00
 PARAMETER:  1.3463E-01 -7.1237E-01 -7.2664E-01  3.1402E-01 -7.9038E-01 -5.6592E-02  5.3368E-01 -2.8260E+00  1.2862E-01 -2.9096E-01
             1.1091E+00
 GRADIENT:   9.4719E-01  1.5764E+01  7.9047E+00  7.3563E+00 -1.7739E+01  2.5324E-01  3.5190E+00  3.8555E-02  3.1859E+00  4.6917E+00
             4.0626E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1661.99224006988        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      646
 NPARAMETR:  1.0289E+00  2.4931E-01  4.5705E-01  1.3190E+00  3.9222E-01  8.4753E-01  2.1437E+00  1.9963E-02  9.6049E-01  6.7004E-01
             2.7598E+00
 PARAMETER:  1.2845E-01 -1.2891E+00 -6.8297E-01  3.7690E-01 -8.3593E-01 -6.5425E-02  8.6251E-01 -3.8139E+00  5.9687E-02 -3.0042E-01
             1.1151E+00
 GRADIENT:   3.1011E+00 -6.5294E-01 -1.8949E+00 -5.1943E+00  3.8832E+00 -3.6642E-01 -1.4421E+00  4.9835E-03 -1.1666E+00  2.3749E-01
             3.8509E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1662.22023830198        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  1.0225E+00  1.6696E-01  4.7771E-01  1.3693E+00  3.9317E-01  8.4621E-01  2.8571E+00  1.0000E-02  9.4797E-01  6.9056E-01
             2.7480E+00
 PARAMETER:  1.2226E-01 -1.6900E+00 -6.3876E-01  4.1429E-01 -8.3351E-01 -6.6989E-02  1.1498E+00 -4.6700E+00  4.6573E-02 -2.7025E-01
             1.1109E+00
 GRADIENT:  -2.6554E+00 -2.3423E+00  5.6912E+00  6.4152E+00 -5.3752E+00 -5.8732E-02 -5.1160E+00  0.0000E+00  2.4508E+00  2.0816E+00
             1.4055E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.76362296698        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1001
 NPARAMETR:  1.0223E+00  8.4278E-02  4.5383E-01  1.3979E+00  3.7176E-01  8.4487E-01  4.4676E+00  1.0000E-02  9.2072E-01  6.6515E-01
             2.7620E+00
 PARAMETER:  1.2205E-01 -2.3736E+00 -6.9003E-01  4.3497E-01 -8.8951E-01 -6.8576E-02  1.5969E+00 -6.1366E+00  1.7396E-02 -3.0775E-01
             1.1160E+00
 GRADIENT:   9.2874E+00  6.6145E+00 -9.0899E+00  1.2822E+01  4.8473E+00 -1.0072E+00  9.7353E+00  0.0000E+00 -1.0087E+01 -1.5638E-01
            -2.5563E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1663.09826104165        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1177
 NPARAMETR:  1.0179E+00  6.7966E-02  4.4264E-01  1.3839E+00  3.6378E-01  8.4595E-01  5.0039E+00  1.0000E-02  9.4367E-01  6.3506E-01
             2.7556E+00
 PARAMETER:  1.1769E-01 -2.5887E+00 -7.1500E-01  4.2488E-01 -9.1121E-01 -6.7298E-02  1.7102E+00 -6.5173E+00  4.2019E-02 -3.5404E-01
             1.1137E+00
 GRADIENT:   5.2306E-01  3.7439E+00 -2.5326E+00 -4.7918E+00  2.8955E+00 -1.4580E-01  6.2631E+00  0.0000E+00 -2.4222E+00 -1.9965E+00
            -2.0063E+00

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1663.09826104165        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1205
 NPARAMETR:  1.0167E+00  6.6472E-02  4.4559E-01  1.3894E+00  3.6113E-01  8.4652E-01  4.9369E+00  1.0000E-02  9.4461E-01  6.3731E-01
             2.7822E+00
 PARAMETER:  1.1769E-01 -2.5887E+00 -7.1500E-01  4.2488E-01 -9.1121E-01 -6.7298E-02  1.7102E+00 -6.5173E+00  4.2019E-02 -3.5404E-01
             1.1137E+00
 GRADIENT:   4.5476E+02  1.7121E+01 -7.2064E+01 -1.2016E+02  5.3637E+01 -1.6459E-01  2.3823E+01  0.0000E+00 -2.6792E+02 -7.5932E+01
            -4.5255E+01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1205
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4499E-03  1.6222E-02  6.7124E-05 -1.3137E-02 -4.0273E-03
 SE:             2.8860E-02  9.2743E-03  2.1747E-04  2.7197E-02  1.9503E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5993E-01  8.0274E-02  7.5758E-01  6.2908E-01  8.3640E-01

 ETASHRINKSD(%)  3.3165E+00  6.8930E+01  9.9271E+01  8.8853E+00  3.4663E+01
 ETASHRINKVR(%)  6.5231E+00  9.0347E+01  9.9995E+01  1.6981E+01  5.7311E+01
 EBVSHRINKSD(%)  3.0546E+00  7.8403E+01  9.9232E+01  7.5514E+00  3.3862E+01
 EBVSHRINKVR(%)  6.0159E+00  9.5336E+01  9.9994E+01  1.4533E+01  5.6257E+01
 RELATIVEINF(%)  9.1554E+01  2.0206E+00  3.4410E-04  3.1666E+01  2.5095E+00
 EPSSHRINKSD(%)  2.4923E+01
 EPSSHRINKVR(%)  4.3634E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1663.0982610416524     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -744.15972783697976     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.00
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1663.098       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  6.80E-02  4.43E-01  1.38E+00  3.64E-01  8.46E-01  5.00E+00  1.00E-02  9.44E-01  6.35E-01  2.76E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.526
Stop Time:
Fri Oct  1 10:05:51 CDT 2021