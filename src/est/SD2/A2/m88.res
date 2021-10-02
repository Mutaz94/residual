Fri Oct  1 10:13:02 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat88.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -945.756691874884        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1553E+02  2.6586E-01  2.5935E+00  3.6370E+01  1.9358E+02  4.8556E+01 -3.1771E+01 -2.5531E+01  9.1974E-01 -6.6086E+01
            -2.1977E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1695.11873772832        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0005E+00  1.0358E+00  1.0537E+00  1.0412E+00  9.2377E-01  8.7524E-01  9.8041E-01  9.7249E-01  9.3233E-01  8.1956E-01
             2.2902E+00
 PARAMETER:  1.0046E-01  1.3520E-01  1.5234E-01  1.4034E-01  2.0705E-02 -3.3256E-02  8.0213E-02  7.2101E-02  2.9928E-02 -9.8989E-02
             9.2866E-01
 GRADIENT:   4.4848E+01  1.9315E+01  3.5425E+00  2.4737E+01  5.9533E+00 -3.1894E+01 -3.7877E+00 -1.5276E+00 -6.2825E+00  3.1137E+00
            -1.0719E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1699.83180651169        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.9962E-01  9.3482E-01  8.7326E-01  1.0696E+00  7.8185E-01  9.7029E-01  1.2261E+00  1.1633E+00  8.3523E-01  4.5215E-01
             2.3422E+00
 PARAMETER:  9.9619E-02  3.2596E-02 -3.5525E-02  1.6732E-01 -1.4609E-01  6.9843E-02  3.0385E-01  2.5128E-01 -8.0045E-02 -6.9375E-01
             9.5107E-01
 GRADIENT:   4.2888E+01  7.5576E+00  1.4594E+01 -1.2105E+00 -3.1383E+01  9.5255E+00  6.4925E-01  7.5567E+00 -2.8497E+00  1.0678E+00
            -9.0431E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1705.36109178887        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      252
 NPARAMETR:  9.8670E-01  9.9990E-01  7.0910E-01  1.0174E+00  7.4487E-01  9.6893E-01  1.1911E+00  8.2934E-01  8.6046E-01  3.5448E-01
             2.5521E+00
 PARAMETER:  8.6609E-02  9.9896E-02 -2.4376E-01  1.1729E-01 -1.9454E-01  6.8441E-02  2.7485E-01 -8.7123E-02 -5.0286E-02 -9.3709E-01
             1.0369E+00
 GRADIENT:  -7.0082E+01 -4.7794E+00  4.8018E+00 -2.2360E+01 -1.4783E+01  6.5353E-01  7.1998E-01  2.0506E+00  2.3904E+00  1.3800E+00
            -1.2309E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1708.84157956848        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      430
 NPARAMETR:  1.0181E+00  1.1263E+00  1.3345E+00  9.9702E-01  1.0690E+00  9.5935E-01  1.0152E+00  1.6586E+00  9.2724E-01  2.8165E-01
             2.6392E+00
 PARAMETER:  1.1796E-01  2.1894E-01  3.8852E-01  9.7013E-02  1.6676E-01  5.8498E-02  1.1509E-01  6.0595E-01  2.4458E-02 -1.1671E+00
             1.0705E+00
 GRADIENT:   3.6247E+00 -1.1331E+01 -6.4295E+00 -7.9420E+00  1.0773E+01  4.1067E-01  1.6354E+00  7.1290E-01  1.3649E+00  1.2118E+00
            -3.9200E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1710.54942411177        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      605
 NPARAMETR:  1.0178E+00  1.0085E+00  2.8583E+00  1.1137E+00  1.2580E+00  9.5882E-01  7.9332E-01  2.9028E+00  9.6617E-01  1.0231E-01
             2.6852E+00
 PARAMETER:  1.1765E-01  1.0851E-01  1.1502E+00  2.0773E-01  3.2952E-01  5.7952E-02 -1.3153E-01  1.1657E+00  6.5586E-02 -2.1797E+00
             1.0878E+00
 GRADIENT:   1.1380E+00  2.4896E+00 -2.4509E+00  1.0102E+01  7.5717E+00  6.9282E-01  1.7561E+00  1.7324E+00  4.7279E+00  1.3381E-01
            -2.2381E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1710.82109677447        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      780
 NPARAMETR:  1.0179E+00  9.7687E-01  3.3677E+00  1.1263E+00  1.2658E+00  9.5594E-01  6.3402E-01  3.1053E+00  9.6766E-01  5.9388E-02
             2.6906E+00
 PARAMETER:  1.1775E-01  7.6600E-02  1.3142E+00  2.1893E-01  3.3567E-01  5.4941E-02 -3.5567E-01  1.2331E+00  6.7125E-02 -2.7237E+00
             1.0898E+00
 GRADIENT:   1.1761E+00 -1.0564E+00  8.7457E-01 -2.5247E+00 -2.1776E+00 -1.5420E-01  3.8818E-01 -8.0571E-03 -1.1127E-02  4.3462E-02
            -2.2471E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1710.87902297791        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      955
 NPARAMETR:  1.0177E+00  1.0418E+00  3.1405E+00  1.0805E+00  1.2689E+00  9.5638E-01  5.3412E-01  3.0497E+00  1.0242E+00  4.8938E-02
             2.6919E+00
 PARAMETER:  1.1759E-01  1.4090E-01  1.2444E+00  1.7744E-01  3.3816E-01  5.5401E-02 -5.2714E-01  1.2150E+00  1.2395E-01 -2.9172E+00
             1.0902E+00
 GRADIENT:   2.7882E-01  4.6781E-01  5.2816E-01 -4.2806E-01 -8.8699E-01 -1.1368E-01  1.5237E-01 -2.7510E-01  3.1163E-01  2.9018E-02
             2.1955E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1711.00007574827        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1136
 NPARAMETR:  1.0164E+00  8.6782E-01  3.0592E+00  1.1936E+00  1.2295E+00  9.5693E-01  3.0040E-01  2.8381E+00  9.7824E-01  2.0240E-02
             2.6816E+00
 PARAMETER:  1.1622E-01 -4.1771E-02  1.2181E+00  2.7700E-01  3.0658E-01  5.5975E-02 -1.1026E+00  1.1431E+00  7.8003E-02 -3.8001E+00
             1.0864E+00
 GRADIENT:  -2.9150E-01  7.7996E-01 -1.1759E-01  2.2692E+00 -3.4995E-01  1.4952E-01  1.0177E-01  2.6489E-01  3.9494E-01  5.0618E-03
            -6.5609E-04

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1711.03966627969        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1313
 NPARAMETR:  1.0163E+00  8.5852E-01  2.9959E+00  1.1960E+00  1.2215E+00  9.5652E-01  1.3138E-01  2.7794E+00  9.8692E-01  1.0000E-02
             2.6810E+00
 PARAMETER:  1.1620E-01 -5.2542E-02  1.1972E+00  2.7900E-01  3.0005E-01  5.5542E-02 -1.9297E+00  1.1222E+00  8.6834E-02 -5.0994E+00
             1.0862E+00
 GRADIENT:   8.4514E-02 -1.9322E-02  2.7578E-01  4.2528E-02 -1.1433E+00  2.5039E-02  2.5147E-02 -2.6411E-01  4.5175E-01  0.0000E+00
             5.4360E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1711.05309074382        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1488
 NPARAMETR:  1.0164E+00  8.6427E-01  3.0587E+00  1.1927E+00  1.2294E+00  9.5637E-01  2.1170E-02  2.8286E+00  9.9082E-01  1.0000E-02
             2.6811E+00
 PARAMETER:  1.1628E-01 -4.5873E-02  1.2180E+00  2.7622E-01  3.0652E-01  5.5392E-02 -3.7552E+00  1.1398E+00  9.0778E-02 -8.0175E+00
             1.0862E+00
 GRADIENT:   1.7645E-02 -3.5440E-02  2.0339E-02  4.5091E-02  1.8835E-01 -5.2339E-02  8.0958E-04 -6.5147E-02  1.2755E-01  0.0000E+00
            -8.0894E-02

0ITERATION NO.:   54    OBJECTIVE VALUE:  -1711.05328472103        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1615
 NPARAMETR:  1.0164E+00  8.6262E-01  3.0542E+00  1.1937E+00  1.2285E+00  9.5652E-01  1.0000E-02  2.8263E+00  9.8952E-01  1.0000E-02
             2.6813E+00
 PARAMETER:  1.1626E-01 -4.7782E-02  1.2165E+00  2.7706E-01  3.0576E-01  5.5550E-02 -4.8261E+00  1.1390E+00  8.9463E-02 -9.7247E+00
             1.0863E+00
 GRADIENT:  -1.8155E-03 -9.8313E-03 -5.6802E-03 -2.4958E-02 -2.1614E-02  9.6349E-03  0.0000E+00  1.2897E-02 -1.0847E-02  0.0000E+00
             1.4371E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1615
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.8454E-03 -4.4396E-04 -3.2556E-02  1.4446E-03 -1.8013E-04
 SE:             2.9337E-02  1.6090E-04  1.4363E-02  2.7492E-02  1.6040E-04
 N:                     100         100         100         100         100

 P VAL.:         9.2273E-01  5.7950E-03  2.3414E-02  9.5809E-01  2.6145E-01

 ETASHRINKSD(%)  1.7166E+00  9.9461E+01  5.1881E+01  7.8995E+00  9.9463E+01
 ETASHRINKVR(%)  3.4037E+00  9.9997E+01  7.6845E+01  1.5175E+01  9.9997E+01
 EBVSHRINKSD(%)  2.1847E+00  9.9508E+01  5.8947E+01  8.4692E+00  9.9385E+01
 EBVSHRINKVR(%)  4.3217E+00  9.9998E+01  8.3146E+01  1.6221E+01  9.9996E+01
 RELATIVEINF(%)  9.4979E+01  1.7330E-04  6.8257E+00  6.4196E+00  1.4217E-03
 EPSSHRINKSD(%)  2.1841E+01
 EPSSHRINKVR(%)  3.8912E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1711.0532847210334     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -792.11475151636068     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.31
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1711.053       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  8.63E-01  3.05E+00  1.19E+00  1.23E+00  9.57E-01  1.00E-02  2.83E+00  9.90E-01  1.00E-02  2.68E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.352
Stop Time:
Fri Oct  1 10:13:28 CDT 2021