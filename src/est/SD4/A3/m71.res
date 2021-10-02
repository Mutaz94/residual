Sat Oct  2 01:15:20 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat71.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m71.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -45.3890769749495        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4770E+02  3.1041E+01  8.0047E+01 -9.1839E+01  6.5531E+01  4.3175E+01 -4.1931E+01 -1.9145E+01 -1.6275E+02 -6.4802E+01
            -2.8331E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1048.13493482852        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0561E+00  9.8452E-01  9.2043E-01  1.2881E+00  9.5434E-01  7.5180E-01  1.0888E+00  9.6518E-01  1.5784E+00  9.8355E-01
             7.9158E+00
 PARAMETER:  1.5460E-01  8.4400E-02  1.7080E-02  3.5320E-01  5.3262E-02 -1.8529E-01  1.8507E-01  6.4560E-02  5.5639E-01  8.3413E-02
             2.1689E+00
 GRADIENT:   5.4376E+01 -2.1321E+01 -1.8671E+01  4.0845E+00  3.9123E+00 -6.2459E+00  7.7337E+00  6.1377E+00  4.1622E+01  1.3591E+01
             3.6394E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1186.55672614746        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.0156E-01  9.2974E-01  2.2354E+00  1.1299E+00  1.4159E+00  6.5566E-01  9.4200E-01  1.3801E-02  9.7449E-01  2.1920E-02
             4.9812E+00
 PARAMETER: -3.6328E-03  2.7145E-02  9.0440E-01  2.2214E-01  4.4777E-01 -3.2211E-01  4.0251E-02 -4.1830E+00  7.4163E-02 -3.7203E+00
             1.7057E+00
 GRADIENT:  -2.1864E+02 -2.0011E+01 -5.4754E-01 -3.2269E+01  2.0392E+01 -7.4357E+01 -1.3131E+00  1.5242E-04 -2.9962E+00  4.8587E-03
             2.1579E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1244.86427592489        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.3086E-01  7.6108E-01  9.8470E-01  1.2112E+00  8.7809E-01  8.7318E-01  7.5210E-01  1.0000E-02  1.2493E+00  1.2675E-01
             3.5291E+00
 PARAMETER:  2.8353E-02 -1.7301E-01  8.4579E-02  2.9159E-01 -3.0002E-02 -3.5613E-02 -1.8488E-01 -4.8437E+00  3.2257E-01 -1.9655E+00
             1.3611E+00
 GRADIENT:   5.8730E+00 -1.7387E+00  1.2101E+01 -1.4253E+01 -1.0656E+01  4.9736E+00 -2.0036E-01  0.0000E+00  1.3388E+00  2.4660E-01
             3.7367E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1245.60080559084        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  9.2817E-01  6.3283E-01  8.3445E-01  1.2894E+00  7.4793E-01  8.6608E-01  9.6625E-01  1.2448E-02  1.1782E+00  6.4563E-02
             3.5027E+00
 PARAMETER:  2.5463E-02 -3.5755E-01 -8.0984E-02  3.5417E-01 -1.9045E-01 -4.3776E-02  6.5669E-02 -4.2862E+00  2.6402E-01 -2.6401E+00
             1.3535E+00
 GRADIENT:  -3.2991E+00  3.9305E+00  4.2260E+00  1.3984E+00 -9.1019E+00  1.4370E+00 -9.8601E-01  2.1574E-03 -8.6653E-01  7.2355E-02
             4.7270E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1246.04498496011        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  9.2784E-01  4.7500E-01  7.9795E-01  1.3717E+00  6.7577E-01  8.5840E-01  1.4009E+00  2.9967E-02  1.0978E+00  1.4372E-02
             3.4938E+00
 PARAMETER:  2.5105E-02 -6.4443E-01 -1.2571E-01  4.1604E-01 -2.9190E-01 -5.2685E-02  4.3710E-01 -3.4077E+00  1.9332E-01 -4.1425E+00
             1.3510E+00
 GRADIENT:   9.0574E-01  3.4767E+00  6.0002E+00  4.2216E+00 -8.1798E+00 -5.8138E-01  1.4715E-01  1.3096E-02 -1.2248E+00  4.0957E-03
            -3.8349E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1247.24312139345        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      539
 NPARAMETR:  9.3766E-01  3.1704E-01  8.0894E-01  1.4998E+00  6.5089E-01  8.6693E-01  1.7373E+00  4.7975E-02  1.0500E+00  1.0000E-02
             3.5593E+00
 PARAMETER:  3.5629E-02 -1.0487E+00 -1.1204E-01  5.0535E-01 -3.2941E-01 -4.2799E-02  6.5232E-01 -2.9371E+00  1.4879E-01 -6.3892E+00
             1.3696E+00
 GRADIENT:   3.3587E+00  8.5168E-01 -1.8047E+00  4.0151E+00  7.0848E-01  2.5268E-01 -4.2934E-01  3.3447E-02  1.0580E-01  0.0000E+00
             1.2637E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1247.46794135915        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      714
 NPARAMETR:  9.3444E-01  1.7538E-01  7.6622E-01  1.5704E+00  5.9262E-01  8.6825E-01  3.0775E+00  7.1811E-02  1.0022E+00  1.0000E-02
             3.5437E+00
 PARAMETER:  3.2187E-02 -1.6408E+00 -1.6629E-01  5.5132E-01 -4.2320E-01 -4.1272E-02  1.2241E+00 -2.5337E+00  1.0222E-01 -1.0021E+01
             1.3652E+00
 GRADIENT:   3.4457E+00  1.1559E+00  2.3222E+00  8.0541E+00 -4.6193E+00  1.2267E+00  1.9561E-01  7.0018E-02 -5.6081E-01  0.0000E+00
            -1.3848E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1247.62761320853        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      890
 NPARAMETR:  9.2972E-01  7.2842E-02  7.5441E-01  1.6166E+00  5.6777E-01  8.6420E-01  4.7007E+00  1.0000E-02  9.8075E-01  1.0000E-02
             3.5496E+00
 PARAMETER:  2.7133E-02 -2.5195E+00 -1.8182E-01  5.8033E-01 -4.6604E-01 -4.5955E-02  1.6477E+00 -5.5618E+00  8.0566E-02 -1.4846E+01
             1.3668E+00
 GRADIENT:  -8.0702E-01  2.3878E-01  1.5806E+00  4.9687E+00 -2.8300E+00  1.8841E-01 -6.2921E-02  0.0000E+00 -4.0687E-01  0.0000E+00
             2.6376E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1247.66109718846        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1065
 NPARAMETR:  9.2816E-01  2.9909E-02  7.4254E-01  1.6324E+00  5.5395E-01  8.6258E-01  7.5808E+00  1.0000E-02  9.7360E-01  1.0000E-02
             3.5475E+00
 PARAMETER:  2.5452E-02 -3.4096E+00 -1.9768E-01  5.9006E-01 -4.9068E-01 -4.7830E-02  2.1256E+00 -9.2577E+00  7.3241E-02 -1.9790E+01
             1.3662E+00
 GRADIENT:  -8.2632E-01  6.0876E-02  9.3934E-01  1.7776E+00 -1.6861E+00 -2.6808E-01 -1.4554E-02  0.0000E+00 -2.8378E-01  0.0000E+00
            -2.6029E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1247.66900860103        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1244
 NPARAMETR:  9.2766E-01  1.0347E-02  7.4166E-01  1.6416E+00  5.5050E-01  8.6300E-01  1.3317E+01  1.0000E-02  9.7008E-01  1.0000E-02
             3.5483E+00
 PARAMETER:  2.4906E-02 -4.4711E+00 -1.9887E-01  5.9565E-01 -4.9693E-01 -4.7344E-02  2.6890E+00 -1.4072E+01  6.9627E-02 -2.5697E+01
             1.3665E+00
 GRADIENT:  -3.1516E-01  5.4587E-02  4.4096E-01  1.0882E+00 -7.5739E-01 -3.8797E-02  7.5015E-03  0.0000E+00 -1.1201E-01  0.0000E+00
            -5.9615E-02

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1247.67022214934        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:     1344
 NPARAMETR:  9.2779E-01  1.0000E-02  7.4124E-01  1.6395E+00  5.5079E-01  8.6312E-01  1.3147E+01  1.0000E-02  9.7056E-01  1.0000E-02
             3.5483E+00
 PARAMETER:  2.5055E-02 -4.5733E+00 -1.9943E-01  5.9438E-01 -4.9640E-01 -4.7205E-02  2.6762E+00 -1.4072E+01  7.0114E-02 -2.5697E+01
             1.3665E+00
 GRADIENT:   4.6760E-01  0.0000E+00 -6.3846E-01 -1.6761E+00  1.1183E+00  5.0054E-02 -3.9761E-03  0.0000E+00  8.1233E-02  0.0000E+00
             9.2100E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1344
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.7715E-05 -6.0644E-04  1.3133E-04 -1.3967E-02 -4.1101E-05
 SE:             2.8137E-02  1.6298E-03  1.6955E-04  2.6250E-02  2.3028E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9780E-01  7.0982E-01  4.3857E-01  5.9468E-01  8.5834E-01

 ETASHRINKSD(%)  5.7376E+00  9.4540E+01  9.9432E+01  1.2059E+01  9.9229E+01
 ETASHRINKVR(%)  1.1146E+01  9.9702E+01  9.9997E+01  2.2664E+01  9.9994E+01
 EBVSHRINKSD(%)  5.3671E+00  9.4534E+01  9.9374E+01  1.1472E+01  9.9180E+01
 EBVSHRINKVR(%)  1.0446E+01  9.9701E+01  9.9996E+01  2.1628E+01  9.9993E+01
 RELATIVEINF(%)  7.2598E+01  1.1208E-02  2.2630E-04  5.7031E+00  2.4294E-04
 EPSSHRINKSD(%)  2.1782E+01
 EPSSHRINKVR(%)  3.8819E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1247.6702221493395     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -512.51939558560127     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1247.670       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.28E-01  1.00E-02  7.41E-01  1.64E+00  5.51E-01  8.63E-01  1.31E+01  1.00E-02  9.71E-01  1.00E-02  3.55E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.969
Stop Time:
Sat Oct  2 01:15:38 CDT 2021