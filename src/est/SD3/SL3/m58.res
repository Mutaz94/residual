Fri Oct  1 20:04:40 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat58.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1420.37235072118        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1873E+02 -6.3060E+01 -2.1731E+01  1.6732E+02  1.0278E+02  5.7366E+01 -4.2449E+01 -5.3141E+01 -2.6126E+01 -1.6770E+01
            -1.8513E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1975.12985225606        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0256E+00  1.4064E+00  1.0150E+00  7.9968E-01  1.1079E+00  9.4875E-01  1.0668E+00  9.0315E-01  6.4606E-01  1.3113E+00
             1.9768E+00
 PARAMETER:  1.2525E-01  4.4102E-01  1.1491E-01 -1.2354E-01  2.0247E-01  4.7388E-02  1.6470E-01 -1.8721E-03 -3.3686E-01  3.7102E-01
             7.8148E-01
 GRADIENT:   3.0969E+02  1.4846E+02  1.2616E+01  5.0928E+01 -5.9691E+01  3.2284E+00  1.1294E+01 -1.2765E+00 -9.9590E+00 -1.1526E+00
            -8.4793E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1991.67690855519        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.7574E-01  1.2946E+00  4.6275E+00  8.9804E-01  1.7519E+00  8.9228E-01  1.2823E+00  4.9642E-01  4.7499E-01  2.1511E+00
             2.0460E+00
 PARAMETER:  7.5439E-02  3.5819E-01  1.6320E+00 -7.5461E-03  6.6068E-01 -1.3975E-02  3.4864E-01 -6.0034E-01 -6.4446E-01  8.6599E-01
             8.1590E-01
 GRADIENT:   1.6866E+02  9.6199E+01 -7.0803E+00  5.7547E+01  2.7251E+01 -7.5754E+00  2.7119E+01 -1.7902E-01  6.2669E+00  4.0214E+01
            -1.2245E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1996.86094771153        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  9.1978E-01  1.1156E+00  4.6433E+00  9.5123E-01  1.6050E+00  8.8638E-01  1.3384E+00  2.3261E+00  2.8306E-01  1.7425E+00
             2.0153E+00
 PARAMETER:  1.6380E-02  2.0941E-01  1.6354E+00  5.0000E-02  5.7310E-01 -2.0604E-02  3.9147E-01  9.4420E-01 -1.1621E+00  6.5535E-01
             8.0078E-01
 GRADIENT:   1.6476E+01  3.7479E+00 -1.0308E+00 -8.6647E+00  8.4819E+00 -7.5889E+00  8.7021E+00  2.0205E+00  2.6533E+00  8.3182E-01
            -3.4146E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1997.27823178367        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  9.1630E-01  1.0790E+00  4.6502E+00  9.7418E-01  1.5766E+00  9.0106E-01  1.3631E+00  2.2366E+00  2.2618E-01  1.7203E+00
             2.0609E+00
 PARAMETER:  1.2584E-02  1.7607E-01  1.6369E+00  7.3843E-02  5.5528E-01 -4.1870E-03  4.0978E-01  9.0494E-01 -1.3864E+00  6.4252E-01
             8.2316E-01
 GRADIENT:   3.6070E+00 -1.9660E+00  5.0489E-01 -4.7014E+00  1.2122E+00 -1.4175E+00  2.9709E+00 -1.5563E-01  1.5932E+00  4.9974E-01
            -7.6085E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2001.77861717951        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      476
 NPARAMETR:  9.5182E-01  1.0248E+00  8.0930E+00  1.0361E+00  1.7672E+00  9.4036E-01  1.5033E+00  3.2605E+00  1.7073E-01  1.8822E+00
             2.0884E+00
 PARAMETER:  5.0617E-02  1.2453E-01  2.1910E+00  1.3545E-01  6.6940E-01  3.8507E-02  5.0769E-01  1.2819E+00 -1.6677E+00  7.3244E-01
             8.3640E-01
 GRADIENT:   5.4862E+00  1.2229E+00 -3.2022E+00  5.7848E+00  9.9346E+00  4.4059E+00  2.1262E+00 -1.8759E+00  3.8290E-01  2.9166E+00
             6.2700E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2002.29589427703        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      659
 NPARAMETR:  9.5056E-01  9.9861E-01  1.0697E+01  1.0549E+00  1.8371E+00  9.2941E-01  1.5347E+00  4.0866E+00  1.2015E-01  1.9439E+00
             2.0909E+00
 PARAMETER:  4.9299E-02  9.8613E-02  2.4700E+00  1.5342E-01  7.0818E-01  2.6797E-02  5.2835E-01  1.5077E+00 -2.0190E+00  7.6470E-01
             8.3760E-01
 GRADIENT:   1.0852E+00  4.6879E-01 -1.4439E+00  9.1149E+00  1.8149E+01  1.0360E-01 -1.4312E+00 -3.4825E+00  9.6931E-02  7.3948E+00
             1.1533E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2002.60751049000        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      837
 NPARAMETR:  9.5379E-01  9.9589E-01  1.1401E+01  1.0516E+00  1.7969E+00  9.2738E-01  1.5510E+00  4.0610E+00  1.0000E-02  1.9507E+00
             2.0879E+00
 PARAMETER:  5.2688E-02  9.5886E-02  2.5337E+00  1.5028E-01  6.8608E-01  2.4604E-02  5.3887E-01  1.5014E+00 -5.4521E+00  7.6820E-01
             8.3615E-01
 GRADIENT:   1.0237E+01 -2.3657E+00  3.7969E-01  1.7747E+00  6.2811E+00 -5.4068E-01 -8.1080E-01 -4.7967E+00  0.0000E+00  1.0111E+01
             9.9208E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2002.81033500885        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1014
 NPARAMETR:  9.5184E-01  9.9904E-01  1.1629E+01  1.0489E+00  1.7816E+00  9.3252E-01  1.5395E+00  4.1266E+00  8.8878E-02  1.9357E+00
             2.0690E+00
 PARAMETER:  5.0642E-02  9.9040E-02  2.5535E+00  1.4779E-01  6.7753E-01  3.0136E-02  5.3143E-01  1.5174E+00 -2.3205E+00  7.6047E-01
             8.2707E-01
 GRADIENT:   5.8090E+00 -3.2415E+00  6.9745E-01 -1.2454E+00  2.2937E+00  1.4048E+00 -6.1745E-01 -4.8122E+00  7.6701E-02  8.6673E+00
            -8.5386E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2003.24252386563        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1193
 NPARAMETR:  9.5324E-01  1.0134E+00  1.2057E+01  1.0382E+00  1.7879E+00  9.3354E-01  1.5210E+00  4.4241E+00  1.5368E-02  1.8805E+00
             2.0912E+00
 PARAMETER:  5.2108E-02  1.1329E-01  2.5897E+00  1.3750E-01  6.8102E-01  3.1223E-02  5.1937E-01  1.5871E+00 -4.0754E+00  7.3156E-01
             8.3772E-01
 GRADIENT:   8.7289E+00 -5.5320E+00  1.8588E-01 -5.0077E+00  4.8210E+00  1.9419E+00 -5.2046E-01 -3.7449E+00  3.5601E-03  2.6686E+00
             1.0753E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2003.51236773610        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1372
 NPARAMETR:  9.4962E-01  1.0399E+00  1.3283E+01  1.0247E+00  1.7625E+00  9.2844E-01  1.4924E+00  4.7222E+00  1.0000E-02  1.8310E+00
             2.0904E+00
 PARAMETER:  4.8304E-02  1.3910E-01  2.6865E+00  1.2442E-01  6.6672E-01  2.5754E-02  5.0039E-01  1.6523E+00 -4.5353E+00  7.0489E-01
             8.3734E-01
 GRADIENT:  -8.7119E-01 -4.6691E-01  8.6965E-01 -2.2082E-01 -3.5561E+00 -1.4581E-01  7.3740E-02 -3.7139E+00  6.9345E-04 -2.2192E+00
             8.6924E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2003.61275532310        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1552
 NPARAMETR:  9.5009E-01  1.0409E+00  1.3332E+01  1.0247E+00  1.7742E+00  9.2904E-01  1.4922E+00  4.7689E+00  1.0000E-02  1.8530E+00
             2.0753E+00
 PARAMETER:  4.8806E-02  1.4007E-01  2.6902E+00  1.2443E-01  6.7336E-01  2.6394E-02  5.0026E-01  1.6621E+00 -4.6260E+00  7.1680E-01
             8.3010E-01
 GRADIENT:   6.5672E-01  4.2379E-01  5.8620E-01  2.3674E+00 -1.2941E+00 -3.3718E-02 -3.6257E-01 -3.5376E+00  0.0000E+00 -5.7524E-01
             5.9656E-01

0ITERATION NO.:   56    OBJECTIVE VALUE:  -2003.61275532310        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1580
 NPARAMETR:  9.4998E-01  1.0404E+00  1.3509E+01  1.0235E+00  1.7781E+00  9.2926E-01  1.4944E+00  4.7333E+00  1.0000E-02  1.8586E+00
             2.0743E+00
 PARAMETER:  4.8806E-02  1.4007E-01  2.6902E+00  1.2443E-01  6.7336E-01  2.6394E-02  5.0026E-01  1.6621E+00 -4.6260E+00  7.1680E-01
             8.3010E-01
 GRADIENT:   3.0750E-01  4.2588E-01 -1.9186E+01  1.5893E+00 -1.1208E+00 -8.6766E-02 -4.1065E-01  2.8754E+01  0.0000E+00 -6.9830E-01
             6.1399E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1580
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2878E-03 -3.8397E-03 -7.7480E-03 -1.1580E-03 -1.9866E-02
 SE:             2.9511E-02  2.7552E-02  6.9722E-03  3.5578E-04  2.5121E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6519E-01  8.8916E-01  2.6645E-01  1.1348E-03  4.2905E-01

 ETASHRINKSD(%)  1.1360E+00  7.6967E+00  7.6642E+01  9.8808E+01  1.5841E+01
 ETASHRINKVR(%)  2.2591E+00  1.4801E+01  9.4544E+01  9.9986E+01  2.9173E+01
 EBVSHRINKSD(%)  1.3962E+00  7.3275E+00  8.3513E+01  9.8983E+01  1.2288E+01
 EBVSHRINKVR(%)  2.7729E+00  1.4118E+01  9.7282E+01  9.9990E+01  2.3067E+01
 RELATIVEINF(%)  9.6927E+01  1.2525E+01  1.4361E+00  1.4599E-03  4.2742E+01
 EPSSHRINKSD(%)  2.3398E+01
 EPSSHRINKVR(%)  4.1321E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2003.6127553231008     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -904.56226961031234     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2003.613       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.50E-01  1.04E+00  1.33E+01  1.02E+00  1.77E+00  9.29E-01  1.49E+00  4.77E+00  1.00E-02  1.85E+00  2.08E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.846
Stop Time:
Fri Oct  1 20:05:09 CDT 2021