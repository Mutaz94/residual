Fri Oct  1 20:48:58 CDT 2021
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
$DATA ../../../../data/SD3/TD1/dat13.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m13.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2197.51732305793        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1581E+02 -3.5938E+01  8.0767E+01 -5.2217E+01  3.7480E+01  3.7982E+01  4.4599E+00 -4.1985E+02 -8.2176E+01  3.7531E+01
            -6.9577E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2300.11072105150        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  8.8032E-01  1.0521E+00  1.0513E+00  1.0543E+00  1.1059E+00  7.2188E-01  9.6421E-01  1.7194E+00  9.3053E-01  8.8617E-01
             1.0468E+00
 PARAMETER: -2.7474E-02  1.5083E-01  1.5007E-01  1.5285E-01  2.0067E-01 -2.2589E-01  6.3553E-02  6.4199E-01  2.7994E-02 -2.0847E-02
             1.4571E-01
 GRADIENT:  -5.2625E+02 -4.7491E+01 -4.3172E+01  4.6800E+01  9.0697E+01 -2.4676E+02 -5.8837E+00 -1.8121E+02 -6.9511E+00  1.3817E+01
             8.0307E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2364.00469445352        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      332
 NPARAMETR:  9.3545E-01  5.8862E-01  3.7445E+00  1.5866E+00  1.2023E+00  6.6419E-01  3.0379E+00  2.8610E+00  5.6073E-01  9.8527E-01
             1.2175E+00
 PARAMETER:  3.3271E-02 -4.2997E-01  1.4203E+00  5.6162E-01  2.8426E-01 -3.0919E-01  1.2112E+00  1.1512E+00 -4.7851E-01  8.5164E-02
             2.9681E-01
 GRADIENT:  -3.0939E+02  1.0168E+02  1.7948E+01  4.1888E+02 -1.1490E+02 -2.6212E+02 -3.1365E+00  4.2424E+01 -4.8305E+01  2.5405E+01
             1.2957E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2398.68167668106        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      516
 NPARAMETR:  9.4078E-01  6.1911E-01  2.9447E+00  1.4948E+00  1.1202E+00  7.0744E-01  3.1863E+00  2.6610E+00  4.6036E-01  7.1566E-01
             1.1766E+00
 PARAMETER:  3.8959E-02 -3.7947E-01  1.1800E+00  5.0197E-01  2.1355E-01 -2.4610E-01  1.2589E+00  1.0787E+00 -6.7575E-01 -2.3456E-01
             2.6265E-01
 GRADIENT:  -2.4743E+02  8.8263E+01  2.2787E+01  3.4839E+02 -1.1522E+02 -2.0812E+02  8.2084E+00  3.5884E+01 -4.7229E+01  5.3745E+00
             1.1434E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2464.57126012532        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      614
 NPARAMETR:  9.5994E-01  6.2038E-01  2.2427E+00  1.4983E+00  1.1728E+00  1.0392E+00  1.9236E+00  1.6666E+00  7.9443E-01  7.1691E-01
             9.8799E-01
 PARAMETER:  5.9121E-02 -3.7742E-01  9.0770E-01  5.0435E-01  2.5937E-01  1.3849E-01  7.5421E-01  6.1078E-01 -1.3013E-01 -2.3281E-01
             8.7921E-02
 GRADIENT:   3.5946E+02  1.1797E+02  1.0443E+01  1.0528E+03  1.4037E+02  7.9312E+01  4.5145E+01 -5.9670E+00  1.4799E+01 -1.5171E+01
            -7.4920E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2472.35124702909        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      772
 NPARAMETR:  1.0020E+00  6.2037E-01  2.3272E+00  1.4979E+00  1.1404E+00  1.0029E+00  1.6451E+00  1.8970E+00  8.3641E-01  7.2746E-01
             1.0531E+00
 PARAMETER:  1.0200E-01 -3.7745E-01  9.4467E-01  5.0404E-01  2.3140E-01  1.0289E-01  5.9778E-01  7.4029E-01 -7.8640E-02 -2.1819E-01
             1.5176E-01
 GRADIENT:   1.7292E+01  6.5649E+01 -1.7547E+00  2.7500E+02  1.4834E+00 -4.2311E-01  5.3964E+00  1.8832E+00  2.3567E+00 -1.9745E+00
             6.5926E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2473.73582044701        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      947
 NPARAMETR:  9.9173E-01  6.2030E-01  2.3342E+00  1.4960E+00  1.1443E+00  9.9192E-01  1.1566E+00  1.9353E+00  9.1279E-01  7.3607E-01
             1.0417E+00
 PARAMETER:  9.1697E-02 -3.7755E-01  9.4767E-01  5.0282E-01  2.3475E-01  9.1890E-02  2.4545E-01  7.6027E-01  8.7507E-03 -2.0643E-01
             1.4088E-01
 GRADIENT:  -5.7307E+00  6.1537E+01  2.7325E+00  2.5974E+02 -3.1109E+00 -4.7181E+00  3.3853E+00 -2.3241E-01  4.7657E+00 -8.3798E-01
            -1.4463E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2481.22126923216        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1124
 NPARAMETR:  9.9636E-01  6.1862E-01  2.0392E+00  1.4557E+00  1.1002E+00  1.0092E+00  1.0000E-02  1.7709E+00  9.7258E-01  7.7003E-01
             1.0102E+00
 PARAMETER:  9.6349E-02 -3.8027E-01  8.1258E-01  4.7549E-01  1.9546E-01  1.0918E-01 -5.9134E+00  6.7150E-01  7.2197E-02 -1.6133E-01
             1.1019E-01
 GRADIENT:   4.8477E+00  4.3485E+01 -6.9930E+00  2.1693E+02 -6.0441E+00  2.3268E+00  0.0000E+00 -8.8391E+00  1.6583E+00  7.3089E+00
            -3.2243E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2493.53432176884        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1300
 NPARAMETR:  9.9379E-01  6.1297E-01  2.0966E+00  1.3288E+00  1.0986E+00  1.0021E+00  1.0000E-02  1.9165E+00  9.1129E-01  7.0185E-01
             1.0363E+00
 PARAMETER:  9.3769E-02 -3.8943E-01  8.4030E-01  3.8427E-01  1.9406E-01  1.0207E-01 -2.6111E+01  7.5050E-01  7.1069E-03 -2.5404E-01
             1.3566E-01
 GRADIENT:  -7.5463E-02 -1.4924E+01  8.9972E-02  1.5237E+00  1.0942E-01  1.9165E-02  0.0000E+00  5.6555E-02  1.9200E-01 -5.5887E-02
             2.9267E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2494.54204589703        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:     1439
 NPARAMETR:  9.8944E-01  6.5655E-01  2.0367E+00  1.2966E+00  1.1032E+00  1.0006E+00  1.0000E-02  1.9172E+00  9.2603E-01  7.0317E-01
             1.0351E+00
 PARAMETER:  8.9379E-02 -3.2075E-01  8.1131E-01  3.5972E-01  1.9822E-01  1.0055E-01 -2.6111E+01  7.5087E-01  2.3150E-02 -2.5216E-01
             1.3448E-01
 GRADIENT:  -1.0476E+01 -1.2991E+01  1.2531E-01 -2.5979E+00  7.0705E-01 -7.9889E-01  0.0000E+00 -2.2850E-02 -2.7779E+00 -4.2090E-01
             5.8064E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2496.15991914892        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1615
 NPARAMETR:  9.9526E-01  7.9740E-01  1.8549E+00  1.2003E+00  1.1265E+00  1.0039E+00  1.0000E-02  1.8979E+00  1.0112E+00  7.4427E-01
             1.0315E+00
 PARAMETER:  9.5244E-02 -1.2640E-01  7.1784E-01  2.8258E-01  2.1911E-01  1.0391E-01 -2.6111E+01  7.4076E-01  1.1112E-01 -1.9536E-01
             1.3103E-01
 GRADIENT:   4.5698E-01 -6.7005E-01 -6.0504E-01 -1.0437E+00 -7.3351E-01  7.2865E-02  0.0000E+00 -1.2546E-01 -1.6280E-01  1.6533E-02
             1.9396E-02

0ITERATION NO.:   51    OBJECTIVE VALUE:  -2496.15991914892        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1637
 NPARAMETR:  9.9526E-01  7.9740E-01  1.8549E+00  1.2003E+00  1.1265E+00  1.0039E+00  1.0000E-02  1.8979E+00  1.0112E+00  7.4427E-01
             1.0315E+00
 PARAMETER:  9.5244E-02 -1.2640E-01  7.1784E-01  2.8258E-01  2.1911E-01  1.0391E-01 -2.6111E+01  7.4076E-01  1.1112E-01 -1.9536E-01
             1.3103E-01
 GRADIENT:   4.5698E-01 -6.7005E-01 -6.0504E-01 -1.0437E+00 -7.3351E-01  7.2865E-02  0.0000E+00 -1.2546E-01 -1.6280E-01  1.6533E-02
             1.9396E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1637
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2686E-03 -5.7845E-04 -2.9379E-02 -1.3646E-03 -3.0552E-02
 SE:             2.9897E-02  2.0917E-04  2.2396E-02  2.9530E-02  2.0762E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6615E-01  5.6842E-03  1.8958E-01  9.6314E-01  1.4114E-01

 ETASHRINKSD(%)  1.0000E-10  9.9299E+01  2.4970E+01  1.0702E+00  3.0446E+01
 ETASHRINKVR(%)  1.0000E-10  9.9995E+01  4.3706E+01  2.1290E+00  5.1622E+01
 EBVSHRINKSD(%)  3.3019E-01  9.9389E+01  2.4723E+01  1.5649E+00  3.0416E+01
 EBVSHRINKVR(%)  6.5929E-01  9.9996E+01  4.3334E+01  3.1053E+00  5.1580E+01
 RELATIVEINF(%)  9.9301E+01  8.2836E-04  2.4553E+01  2.9466E+01  1.8938E+01
 EPSSHRINKSD(%)  2.9242E+01
 EPSSHRINKVR(%)  4.9934E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2496.1599191489167     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1393.4336793033096     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2496.160       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.95E-01  7.97E-01  1.85E+00  1.20E+00  1.13E+00  1.00E+00  1.00E-02  1.90E+00  1.01E+00  7.44E-01  1.03E+00
 


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
 #CPUT: Total CPU Time in Seconds,       29.421
Stop Time:
Fri Oct  1 20:49:29 CDT 2021