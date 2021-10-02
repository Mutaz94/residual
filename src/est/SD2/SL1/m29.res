Fri Oct  1 11:36:47 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat29.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m29.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2026.85601294021        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8051E+02 -1.7123E+01 -3.1643E+01  3.8983E+01  7.1497E+01  1.7944E+01 -2.7062E+01  4.7606E+00 -1.8216E+01 -9.6323E+00
            -8.0596E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2038.19840589746        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.8670E-01  1.0469E+00  1.0337E+00  1.0244E+00  9.9984E-01  1.0827E+00  1.1219E+00  9.7881E-01  1.0874E+00  1.0086E+00
             1.0889E+00
 PARAMETER:  8.6612E-02  1.4581E-01  1.3312E-01  1.2409E-01  9.9841E-02  1.7947E-01  2.1499E-01  7.8581E-02  1.8375E-01  1.0856E-01
             1.8513E-01
 GRADIENT:   5.4682E+00 -1.7669E+00 -1.5795E+01  2.6242E+01  1.9894E+01  2.1312E+00 -1.4980E+01  4.0540E+00  6.3816E-01 -3.3293E+00
            -7.1078E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2040.42054447756        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.8778E-01  1.0850E+00  1.0427E+00  9.9188E-01  1.0219E+00  1.0671E+00  1.3767E+00  8.7533E-01  1.0338E+00  1.0721E+00
             1.0773E+00
 PARAMETER:  8.7700E-02  1.8159E-01  1.4181E-01  9.1843E-02  1.2168E-01  1.6495E-01  4.1966E-01 -3.3159E-02  1.3326E-01  1.6966E-01
             1.7442E-01
 GRADIENT:   8.2928E+00  4.5776E+00 -3.2067E+00  9.6551E+00  2.7704E+00 -3.9315E+00  3.0449E+00  2.4624E+00  3.4817E+00  2.9507E+00
            -1.5015E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2041.45299664867        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  9.8564E-01  1.2874E+00  7.4814E-01  8.5104E-01  9.6433E-01  1.0851E+00  1.2416E+00  4.3392E-01  1.0635E+00  9.6382E-01
             1.1038E+00
 PARAMETER:  8.5537E-02  3.5259E-01 -1.9017E-01 -6.1302E-02  6.3678E-02  1.8169E-01  3.1644E-01 -7.3490E-01  1.6153E-01  6.3146E-02
             1.9876E-01
 GRADIENT:  -1.2855E+00  1.1463E+01  3.3406E+00  5.5630E+00 -1.1356E+01  1.8346E+00  3.9736E-01  3.5410E-01 -1.2078E+00  1.5632E+00
             6.2966E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2041.67515002264        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.8706E-01  1.3939E+00  6.7802E-01  7.7323E-01  9.9775E-01  1.0807E+00  1.1728E+00  2.6700E-01  1.1265E+00  9.6736E-01
             1.0942E+00
 PARAMETER:  8.6972E-02  4.3210E-01 -2.8858E-01 -1.5717E-01  9.7751E-02  1.7761E-01  2.5936E-01 -1.2205E+00  2.1909E-01  6.6813E-02
             1.9005E-01
 GRADIENT:   3.4260E-01 -3.9982E-01 -6.3402E-01 -8.1091E-02  7.1313E-01 -1.5586E-01  1.4408E-01  1.7821E-01  3.2414E-01  1.4853E-01
            -4.2740E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2041.74698401477        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  9.8656E-01  1.3815E+00  6.8328E-01  7.7774E-01  9.9669E-01  1.0819E+00  1.1796E+00  8.5813E-02  1.1228E+00  9.7134E-01
             1.0964E+00
 PARAMETER:  8.6468E-02  4.2317E-01 -2.8085E-01 -1.5137E-01  9.6689E-02  1.7876E-01  2.6517E-01 -2.3556E+00  2.1587E-01  7.0921E-02
             1.9199E-01
 GRADIENT:  -4.6335E-01 -3.5205E+00  3.3948E-01 -2.9935E+00  1.1900E+00  3.3978E-01  2.5559E-02  1.3430E-02  1.1748E-01 -2.9200E-01
             8.7702E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2041.76154335870        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1063
 NPARAMETR:  9.8687E-01  1.3838E+00  6.7610E-01  7.7879E-01  9.9123E-01  1.0811E+00  1.1794E+00  3.5797E-02  1.1208E+00  9.6642E-01
             1.0948E+00
 PARAMETER:  8.6786E-02  4.2480E-01 -2.9141E-01 -1.5001E-01  9.1192E-02  1.7795E-01  2.6502E-01 -3.2299E+00  2.1402E-01  6.5845E-02
             1.9058E-01
 GRADIENT:   2.0325E-02 -2.8015E-01  7.4744E-02 -3.3090E-01  4.8971E-02 -9.4662E-03  5.0584E-02  2.5718E-03 -2.0674E-02 -8.4951E-02
            -1.1824E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2041.76174344873        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1238
 NPARAMETR:  9.8687E-01  1.3846E+00  6.7561E-01  7.7850E-01  9.9131E-01  1.0811E+00  1.1787E+00  2.2539E-02  1.1212E+00  9.6684E-01
             1.0949E+00
 PARAMETER:  8.6784E-02  4.2539E-01 -2.9213E-01 -1.5039E-01  9.1274E-02  1.7797E-01  2.6443E-01 -3.6925E+00  2.1438E-01  6.6276E-02
             1.9066E-01
 GRADIENT:   5.3715E-03 -8.6330E-02  1.8963E-02 -9.8854E-02  1.5250E-02 -2.1202E-03  1.5949E-02  1.0457E-03 -5.1776E-03 -2.3173E-02
            -3.2654E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2041.76187030301        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1417
 NPARAMETR:  9.8687E-01  1.3849E+00  6.7541E-01  7.7838E-01  9.9134E-01  1.0811E+00  1.1784E+00  1.0000E-02  1.1214E+00  9.6702E-01
             1.0949E+00
 PARAMETER:  8.6784E-02  4.2564E-01 -2.9244E-01 -1.5054E-01  9.1307E-02  1.7798E-01  2.6417E-01 -4.5553E+00  2.1454E-01  6.6464E-02
             1.9070E-01
 GRADIENT:  -6.8542E-04 -3.4043E-05 -3.2833E-03  2.5508E-03 -1.4159E-05  7.0728E-04  3.4617E-04  0.0000E+00  1.0724E-03  2.4480E-03
             3.1695E-03

0ITERATION NO.:   41    OBJECTIVE VALUE:  -2041.76187030301        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1439
 NPARAMETR:  9.8687E-01  1.3849E+00  6.7541E-01  7.7838E-01  9.9134E-01  1.0811E+00  1.1784E+00  1.0000E-02  1.1214E+00  9.6702E-01
             1.0949E+00
 PARAMETER:  8.6784E-02  4.2564E-01 -2.9244E-01 -1.5054E-01  9.1307E-02  1.7798E-01  2.6417E-01 -4.5553E+00  2.1454E-01  6.6464E-02
             1.9070E-01
 GRADIENT:  -6.8542E-04 -3.4043E-05 -3.2833E-03  2.5508E-03 -1.4159E-05  7.0728E-04  3.4617E-04  0.0000E+00  1.0724E-03  2.4480E-03
             3.1695E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1439
 NO. OF SIG. DIGITS IN FINAL EST.:  3.9
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1115E-03 -1.2632E-02 -3.4739E-04  1.0477E-02 -2.2553E-02
 SE:             2.9864E-02  2.4353E-02  1.3321E-04  2.3137E-02  2.2130E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7031E-01  6.0397E-01  9.1098E-03  6.5067E-01  3.0814E-01

 ETASHRINKSD(%)  1.0000E-10  1.8414E+01  9.9554E+01  2.2487E+01  2.5863E+01
 ETASHRINKVR(%)  1.0000E-10  3.3438E+01  9.9998E+01  3.9918E+01  4.5036E+01
 EBVSHRINKSD(%)  3.7508E-01  1.7851E+01  9.9612E+01  2.4112E+01  2.4493E+01
 EBVSHRINKVR(%)  7.4876E-01  3.2515E+01  9.9998E+01  4.2410E+01  4.2987E+01
 RELATIVEINF(%)  9.9085E+01  5.9091E+00  1.9878E-04  4.5354E+00  9.8205E+00
 EPSSHRINKSD(%)  3.3305E+01
 EPSSHRINKVR(%)  5.5517E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2041.7618703030141     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1122.8233370983414     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2041.762       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.87E-01  1.38E+00  6.75E-01  7.78E-01  9.91E-01  1.08E+00  1.18E+00  1.00E-02  1.12E+00  9.67E-01  1.09E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.984
Stop Time:
Fri Oct  1 11:37:10 CDT 2021