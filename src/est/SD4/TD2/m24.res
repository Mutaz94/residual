Sat Oct  2 04:55:05 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat24.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m24.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1623.43638347971        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5287E+02 -2.8248E+01  3.0199E+01 -7.1926E+01 -3.2891E+01  3.2686E+01 -7.4142E+00  1.2430E+00 -1.7645E+01  2.3465E+00
            -1.7511E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1631.20965930527        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7384E-01  1.0335E+00  9.8907E-01  1.0641E+00  1.0241E+00  1.0126E+00  1.0326E+00  9.8960E-01  1.0432E+00  1.0032E+00
             1.0467E+00
 PARAMETER:  7.3495E-02  1.3291E-01  8.9007E-02  1.6215E-01  1.2378E-01  1.1255E-01  1.3205E-01  8.9542E-02  1.4231E-01  1.0318E-01
             1.4561E-01
 GRADIENT:   1.3470E-01  4.7878E-02  3.8238E+00 -1.8268E+00 -9.4798E+00  5.4627E-01 -4.9032E+00  2.5712E+00 -1.6902E+00  2.6968E-01
             2.3904E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1632.29660199524        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.7786E-01  1.0418E+00  8.9542E-01  1.0513E+00  9.8851E-01  1.0054E+00  1.2902E+00  7.2897E-01  1.0197E+00  9.8197E-01
             1.0223E+00
 PARAMETER:  7.7613E-02  1.4094E-01 -1.0461E-02  1.5001E-01  8.8440E-02  1.0542E-01  3.5481E-01 -2.1612E-01  1.1953E-01  8.1803E-02
             1.2208E-01
 GRADIENT:   8.5984E+00  4.4417E+00  3.8972E+00 -3.2241E+00 -3.1934E+00 -2.6107E+00  7.0354E+00  8.0989E-01  7.2076E+00  2.5295E+00
            -6.3113E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1633.27527814821        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.7459E-01  9.5603E-01  7.7851E-01  1.0952E+00  8.7260E-01  1.0073E+00  1.3310E+00  4.3960E-01  9.4501E-01  8.6824E-01
             1.0394E+00
 PARAMETER:  7.4259E-02  5.5038E-02 -1.5037E-01  1.9095E-01 -3.6283E-02  1.0726E-01  3.8594E-01 -7.2189E-01  4.3443E-02 -4.1282E-02
             1.3862E-01
 GRADIENT:  -8.5258E-01  3.6733E+00  5.2700E-01  4.3355E+00  1.7068E+00 -1.9374E+00  6.2870E-01 -2.1996E-01  4.7478E-01 -1.1332E+00
            -6.5963E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1633.47841954458        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.7336E-01  7.5085E-01  8.0091E-01  1.2135E+00  7.9483E-01  1.0104E+00  1.6064E+00  4.4458E-01  8.6399E-01  8.3927E-01
             1.0412E+00
 PARAMETER:  7.3003E-02 -1.8655E-01 -1.2201E-01  2.9347E-01 -1.2963E-01  1.1033E-01  5.7399E-01 -7.1063E-01 -4.6191E-02 -7.5220E-02
             1.4037E-01
 GRADIENT:  -1.2887E-01  2.7494E+00  5.4304E+00 -8.9003E-01 -6.8488E+00  3.4032E-02 -1.7903E-01 -7.3801E-01  2.5312E-01 -6.1327E-01
            -6.0547E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1633.55538964486        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.7167E-01  6.4462E-01  8.7697E-01  1.2890E+00  7.9563E-01  1.0071E+00  1.8161E+00  6.2229E-01  8.3044E-01  8.5139E-01
             1.0414E+00
 PARAMETER:  7.1265E-02 -3.3910E-01 -3.1282E-02  3.5386E-01 -1.2862E-01  1.0707E-01  6.9667E-01 -3.7436E-01 -8.5799E-02 -6.0885E-02
             1.4060E-01
 GRADIENT:   3.5150E-01  7.1514E+00  7.7803E+00  6.5116E+00 -1.5285E+01 -4.9387E-01  5.1159E-01  1.4545E-01  7.4455E-01  2.0847E-01
             7.4785E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1633.72417920778        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.6905E-01  5.3183E-01  9.9922E-01  1.3659E+00  8.3591E-01  1.0064E+00  2.0774E+00  7.8332E-01  7.9179E-01  9.0872E-01
             1.0429E+00
 PARAMETER:  6.8561E-02 -5.3142E-01  9.9220E-02  4.1181E-01 -7.9234E-02  1.0638E-01  8.3110E-01 -1.4421E-01 -1.3346E-01  4.2823E-03
             1.4201E-01
 GRADIENT:   4.6688E-01  3.7472E+00 -3.1843E-01  8.4892E+00 -2.0690E+00  2.9087E-01  2.5128E-01  3.5243E-01 -1.0517E+00  7.4654E-01
             5.9289E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1633.74565691446        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1238
 NPARAMETR:  9.6704E-01  4.5204E-01  1.0840E+00  1.4188E+00  8.5708E-01  1.0044E+00  2.2919E+00  8.8684E-01  7.7438E-01  9.3483E-01
             1.0424E+00
 PARAMETER:  6.6484E-02 -6.9399E-01  1.8063E-01  4.4980E-01 -5.4226E-02  1.0435E-01  9.2936E-01 -2.0095E-02 -1.5569E-01  3.2604E-02
             1.4156E-01
 GRADIENT:   1.8310E-01  2.8847E+00  9.7219E-02  6.9559E+00 -5.6448E-01  2.6384E-01  1.4827E-01 -7.7097E-02 -1.1806E+00  2.1860E-01
             8.3667E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1633.78433624995        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1423
 NPARAMETR:  9.6723E-01  4.4648E-01  1.0833E+00  1.4155E+00  8.5641E-01  1.0039E+00  2.3002E+00  8.8787E-01  7.7749E-01  9.3236E-01
             1.0420E+00
 PARAMETER:  6.6681E-02 -7.0635E-01  1.8005E-01  4.4750E-01 -5.5012E-02  1.0384E-01  9.3300E-01 -1.8930E-02 -1.5169E-01  2.9960E-02
             1.4111E-01
 GRADIENT:   8.6969E-01  3.0963E-01 -3.0859E-01 -4.7137E+00  1.0913E+00  1.2199E-01  8.3139E-02  4.5872E-02  6.5742E-03  3.6672E-02
             5.1597E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1633.78643859952        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1606             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6738E-01  4.4551E-01  1.0828E+00  1.4153E+00  8.5465E-01  1.0038E+00  2.3113E+00  8.8493E-01  7.7703E-01  9.3121E-01
             1.0417E+00
 PARAMETER:  6.6836E-02 -7.0853E-01  1.7958E-01  4.4734E-01 -5.7066E-02  1.0376E-01  9.3779E-01 -2.2244E-02 -1.5228E-01  2.8730E-02
             1.4090E-01
 GRADIENT:   3.5119E+02  4.5934E+01  6.3126E+00  4.9556E+02  6.0614E+00  3.7670E+01  3.1120E+01  6.8692E-02  1.1477E+01  6.8688E-01
             1.0505E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1633.78785566172        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1783             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6736E-01  4.4438E-01  1.0820E+00  1.4159E+00  8.5407E-01  1.0037E+00  2.3149E+00  8.8406E-01  7.7682E-01  9.3064E-01
             1.0417E+00
 PARAMETER:  6.6819E-02 -7.1109E-01  1.7879E-01  4.4779E-01 -5.7748E-02  1.0373E-01  9.3937E-01 -2.3233E-02 -1.5254E-01  2.8118E-02
             1.4089E-01
 GRADIENT:   3.5114E+02  4.5883E+01  6.0200E+00  4.9665E+02  6.4201E+00  3.7652E+01  3.1188E+01  7.4266E-02  1.1502E+01  6.4607E-01
             1.0413E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1633.78908750827        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1963             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6735E-01  4.4323E-01  1.0812E+00  1.4165E+00  8.5356E-01  1.0037E+00  2.3183E+00  8.8364E-01  7.7665E-01  9.3009E-01
             1.0417E+00
 PARAMETER:  6.6803E-02 -7.1366E-01  1.7810E-01  4.4820E-01 -5.8343E-02  1.0371E-01  9.4085E-01 -2.3701E-02 -1.5276E-01  2.7530E-02
             1.4090E-01
 GRADIENT:   3.5110E+02  4.5804E+01  5.6858E+00  4.9754E+02  6.8055E+00  3.7636E+01  3.1241E+01  1.0199E-01  1.1531E+01  6.1375E-01
             1.0483E+00

0ITERATION NO.:   58    OBJECTIVE VALUE:  -1633.78909149865        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     2055
 NPARAMETR:  9.6705E-01  4.4275E-01  1.0810E+00  1.4171E+00  8.5357E-01  1.0036E+00  2.3151E+00  8.8453E-01  7.7659E-01  9.3028E-01
             1.0418E+00
 PARAMETER:  6.6499E-02 -7.1474E-01  1.7785E-01  4.4862E-01 -5.8329E-02  1.0356E-01  9.3944E-01 -2.2701E-02 -1.5285E-01  2.7730E-02
             1.4094E-01
 GRADIENT:  -6.5702E-01  1.9232E-01  1.7443E-01  6.8805E-01  4.3526E-01 -5.9298E-02 -2.5165E-01 -2.6476E-02 -7.4641E-02 -1.1692E-02
            -4.1224E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2055
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2722E-03  2.4809E-02 -3.2905E-02 -2.2635E-02 -2.3160E-02
 SE:             2.9843E-02  1.8163E-02  1.5766E-02  2.4549E-02  2.0341E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6600E-01  1.7196E-01  3.6885E-02  3.5651E-01  2.5487E-01

 ETASHRINKSD(%)  2.3175E-02  3.9153E+01  4.7180E+01  1.7756E+01  3.1856E+01
 ETASHRINKVR(%)  4.6346E-02  6.2976E+01  7.2101E+01  3.2360E+01  5.3563E+01
 EBVSHRINKSD(%)  4.9377E-01  4.3969E+01  4.9474E+01  1.5369E+01  2.8515E+01
 EBVSHRINKVR(%)  9.8509E-01  6.8606E+01  7.4472E+01  2.8376E+01  4.8899E+01
 RELATIVEINF(%)  9.8107E+01  4.1064E+00  4.7125E+00  1.1113E+01  7.8452E+00
 EPSSHRINKSD(%)  4.4582E+01
 EPSSHRINKVR(%)  6.9289E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1633.7890914986526     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -898.63826493491445     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.28
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1633.789       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.67E-01  4.43E-01  1.08E+00  1.42E+00  8.54E-01  1.00E+00  2.32E+00  8.85E-01  7.77E-01  9.30E-01  1.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       28.307
Stop Time:
Sat Oct  2 04:55:35 CDT 2021
