Sat Oct  2 05:03:58 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat50.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1702.22018255676        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3599E+02  4.9940E+00 -1.2869E+01  1.1384E+01 -3.5351E+01  4.5867E+01  1.4899E+01  2.0271E+01  1.4886E+01  2.7918E+01
             7.7073E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1708.71619004037        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.9135E-01  1.0413E+00  1.2066E+00  1.0180E+00  1.1362E+00  9.7085E-01  9.1816E-01  8.6609E-01  9.4040E-01  8.5824E-01
             9.7556E-01
 PARAMETER:  9.1314E-02  1.4049E-01  2.8778E-01  1.1783E-01  2.2768E-01  7.0412E-02  1.4611E-02 -4.3771E-02  3.8555E-02 -5.2874E-02
             7.5259E-02
 GRADIENT:  -9.6530E-01  1.2063E+01  9.0100E+00 -5.1147E+00  1.6332E+01 -5.6574E+00  4.4878E+00  4.5573E+00 -1.2453E+01 -2.4132E+01
            -1.9169E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1714.15912922570        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.7644E-01  8.6797E-01  1.2841E+00  1.1336E+00  1.1217E+00  1.0274E+00  4.9072E-01  3.5594E-01  1.0073E+00  1.1588E+00
             9.7920E-01
 PARAMETER:  7.6154E-02 -4.1596E-02  3.5005E-01  2.2543E-01  2.1485E-01  1.2704E-01 -6.1189E-01 -9.3299E-01  1.0726E-01  2.4737E-01
             7.8983E-02
 GRADIENT:  -2.8913E+01  1.1092E+01 -1.1265E+01  2.0631E+01  9.5478E-01  1.6388E+01 -4.1921E-01  9.6819E-01 -1.5082E-01  1.4249E+01
            -9.6730E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1716.19756101250        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.9104E-01  7.3471E-01  1.2880E+00  1.2126E+00  1.0503E+00  9.8207E-01  6.6650E-01  2.7556E-01  9.2189E-01  1.0301E+00
             1.0084E+00
 PARAMETER:  9.1002E-02 -2.0828E-01  3.5313E-01  2.9274E-01  1.4904E-01  8.1911E-02 -3.0571E-01 -1.1889E+00  1.8672E-02  1.2963E-01
             1.0841E-01
 GRADIENT:   4.2258E+00  7.9312E+00  3.2253E+00  7.8321E+00 -7.4199E+00  1.6993E-01  3.1245E-01  4.4725E-01 -1.1980E+00 -1.0063E-02
             4.4041E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1716.85345388651        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.8532E-01  4.7953E-01  1.3432E+00  1.3741E+00  9.8987E-01  9.7818E-01  4.3267E-01  6.6359E-02  8.4033E-01  1.0499E+00
             1.0045E+00
 PARAMETER:  8.5210E-02 -6.3495E-01  3.9508E-01  4.1777E-01  8.9819E-02  7.7936E-02 -7.3777E-01 -2.6127E+00 -7.3966E-02  1.4870E-01
             1.0450E-01
 GRADIENT:  -1.8479E+00  4.8334E+00  4.0652E-01  1.3980E+01 -2.2667E+00 -3.1476E-01 -2.2821E-02  2.5127E-02 -7.6565E-01  1.6211E+00
            -6.8063E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1716.90949594386        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.8452E-01  3.9235E-01  1.3391E+00  1.4247E+00  9.5911E-01  9.7771E-01  3.3727E-01  2.8874E-02  8.1130E-01  1.0355E+00
             1.0043E+00
 PARAMETER:  8.4401E-02 -8.3559E-01  3.9200E-01  4.5399E-01  5.8253E-02  7.7459E-02 -9.8687E-01 -3.4448E+00 -1.0912E-01  1.3490E-01
             1.0425E-01
 GRADIENT:  -8.9659E-01  2.9128E+00  5.8093E-01  8.4598E+00 -1.9195E+00 -9.9441E-02 -3.5724E-03  4.3053E-03 -5.7482E-01  7.5833E-01
            -5.1993E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1716.94877744165        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1047
 NPARAMETR:  9.8510E-01  3.8734E-01  1.3393E+00  1.4219E+00  9.5881E-01  9.7792E-01  3.3007E-01  1.3960E-02  8.1107E-01  1.0322E+00
             1.0050E+00
 PARAMETER:  8.4990E-02 -8.4846E-01  3.9213E-01  4.5197E-01  5.7934E-02  7.7674E-02 -1.0084E+00 -4.1716E+00 -1.0940E-01  1.3171E-01
             1.0495E-01
 GRADIENT:   4.1004E+02  4.8069E+01  6.0755E+00  5.8456E+02  6.9417E+00  3.8982E+01  5.6073E-01  2.1851E-03  8.8730E+00  1.0055E+00
             6.8411E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1716.94923158160        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:     1163
 NPARAMETR:  9.8519E-01  3.8706E-01  1.3392E+00  1.4217E+00  9.5850E-01  9.7800E-01  3.4159E-01  1.0000E-02  8.1139E-01  1.0322E+00
             1.0051E+00
 PARAMETER:  8.5080E-02 -8.4919E-01  3.9209E-01  4.5183E-01  5.7614E-02  7.7755E-02 -9.7415E-01 -4.5408E+00 -1.0900E-01  1.3170E-01
             1.0511E-01
 GRADIENT:   9.8237E-01  1.2067E-02  2.1297E-01 -5.8848E+00  5.2704E-01  7.5123E-02  1.1847E-02  6.8232E-05  4.0140E-01  1.1430E-01
            -5.8377E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1716.95025822904        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1350
 NPARAMETR:  9.8533E-01  3.8722E-01  1.3384E+00  1.4214E+00  9.5807E-01  9.7804E-01  3.0857E-01  1.0000E-02  8.1104E-01  1.0316E+00
             1.0053E+00
 PARAMETER:  8.5219E-02 -8.4876E-01  3.9148E-01  4.5162E-01  5.7164E-02  7.7793E-02 -1.0758E+00 -4.5635E+00 -1.0943E-01  1.3109E-01
             1.0532E-01
 GRADIENT:   1.2823E+00  7.7996E-02  2.2441E-01 -6.0293E+00  4.0491E-01  9.1489E-02  5.3049E-03  0.0000E+00 -8.1433E-04  4.6790E-02
             1.2676E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1716.95161418152        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:     1522
 NPARAMETR:  9.8526E-01  3.8833E-01  1.3348E+00  1.4204E+00  9.5703E-01  9.7799E-01  3.3162E-01  1.0000E-02  8.1141E-01  1.0300E+00
             1.0053E+00
 PARAMETER:  8.5151E-02 -8.4590E-01  3.8876E-01  4.5093E-01  5.6080E-02  7.7749E-02 -1.0038E+00 -4.5635E+00 -1.0898E-01  1.2956E-01
             1.0527E-01
 GRADIENT:   4.1002E+02  4.7896E+01  5.7897E+00  5.8067E+02  7.0656E+00  3.8958E+01  5.6457E-01  0.0000E+00  8.7802E+00  9.4751E-01
             8.9797E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1716.95201425790        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1709             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8539E-01  3.8843E-01  1.3346E+00  1.4202E+00  9.5659E-01  9.7807E-01  3.3057E-01  1.0000E-02  8.1149E-01  1.0298E+00
             1.0053E+00
 PARAMETER:  8.5281E-02 -8.4563E-01  3.8863E-01  4.5077E-01  5.5625E-02  7.7831E-02 -1.0069E+00 -4.5635E+00 -1.0888E-01  1.2938E-01
             1.0525E-01
 GRADIENT:   4.1034E+02  4.7934E+01  6.1775E+00  5.8011E+02  6.4579E+00  3.8979E+01  5.6317E-01  0.0000E+00  8.7828E+00  9.7457E-01
             8.7144E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1716.95219999281        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1901             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8545E-01  3.8872E-01  1.3339E+00  1.4199E+00  9.5640E-01  9.7810E-01  3.4012E-01  1.0000E-02  8.1160E-01  1.0295E+00
             1.0053E+00
 PARAMETER:  8.5345E-02 -8.4490E-01  3.8809E-01  4.5057E-01  5.5420E-02  7.7861E-02 -9.7844E-01 -4.5635E+00 -1.0875E-01  1.2908E-01
             1.0526E-01
 GRADIENT:   4.1046E+02  4.7899E+01  6.0948E+00  5.7952E+02  6.5494E+00  3.8980E+01  5.8050E-01  0.0000E+00  8.8274E+00  9.7527E-01
             8.9314E-01

0ITERATION NO.:   58    OBJECTIVE VALUE:  -1716.95221687124        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     2002
 NPARAMETR:  9.8569E-01  3.8921E-01  1.3336E+00  1.4188E+00  9.5542E-01  9.7822E-01  3.2534E-01  1.0000E-02  8.1120E-01  1.0289E+00
             1.0050E+00
 PARAMETER:  8.5280E-02 -8.4483E-01  3.8809E-01  4.5079E-01  5.5394E-02  7.7834E-02 -1.0198E+00 -4.5635E+00 -1.0880E-01  1.2906E-01
             1.0525E-01
 GRADIENT:  -1.5330E-01 -3.3881E-02  2.7313E-02  6.8371E-01  3.3652E-01 -1.2427E-02  3.7020E-05  0.0000E+00  3.4608E-02  2.4148E-02
             2.5854E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2002
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.4652E-06 -5.0675E-03 -1.9666E-04 -5.8887E-03 -2.6383E-02
 SE:             2.9819E-02  2.4914E-03  1.5908E-04  2.9059E-02  2.4751E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9980E-01  4.1952E-02  2.1638E-01  8.3941E-01  2.8646E-01

 ETASHRINKSD(%)  1.0152E-01  9.1653E+01  9.9467E+01  2.6477E+00  1.7081E+01
 ETASHRINKVR(%)  2.0294E-01  9.9303E+01  9.9997E+01  5.2253E+00  3.1244E+01
 EBVSHRINKSD(%)  4.3207E-01  9.2252E+01  9.9443E+01  2.6325E+00  1.4309E+01
 EBVSHRINKVR(%)  8.6227E-01  9.9400E+01  9.9997E+01  5.1957E+00  2.6571E+01
 RELATIVEINF(%)  9.7859E+01  2.9494E-02  5.0991E-04  6.0718E+00  7.0869E+00
 EPSSHRINKSD(%)  4.0993E+01
 EPSSHRINKVR(%)  6.5181E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1716.9522168712406     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -981.80139030750240     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.16
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1716.952       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.85E-01  3.89E-01  1.33E+00  1.42E+00  9.56E-01  9.78E-01  3.26E-01  1.00E-02  8.12E-01  1.03E+00  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.198
Stop Time:
Sat Oct  2 05:04:25 CDT 2021
