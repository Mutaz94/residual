Sat Oct  2 06:01:52 CDT 2021
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
$DATA ../../../../data/SD4/D/dat100.csv ignore=@
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
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m100.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   31213.9430105802        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2705E+03  7.7958E+02 -8.8352E+00  8.1990E+02  5.6264E+01 -2.8093E+03 -1.2343E+03 -6.4917E+01 -1.8300E+03 -5.0476E+02
            -5.8463E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -359.149561542875        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0226E+00  1.0033E+00  8.7048E-01  1.2480E+00  1.6862E+00  1.7334E+00  9.0054E-01  9.5183E-01  7.0455E-01  8.5353E-01
             1.5259E+01
 PARAMETER:  1.2236E-01  1.0326E-01 -3.8710E-02  3.2154E-01  6.2249E-01  6.5010E-01 -4.7586E-03  5.0634E-02 -2.5020E-01 -5.8380E-02
             2.8252E+00
 GRADIENT:  -5.2843E+01  1.8612E+01 -2.5416E+00  2.9030E+01 -4.0163E+00  3.4045E+01  5.3123E-01  2.4699E+00  3.4133E+00  2.8631E-01
            -4.1108E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -376.489928691767        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0962E+00  7.4978E-01  9.4586E-01  1.2799E+00  3.6365E+00  1.3277E+00  3.4720E-01  4.9274E-01  2.4855E-01  1.2024E+00
             1.6880E+01
 PARAMETER:  1.9186E-01 -1.8798E-01  4.4336E-02  3.4677E-01  1.3910E+00  3.8344E-01 -9.5784E-01 -6.0778E-01 -1.2921E+00  2.8435E-01
             2.9261E+00
 GRADIENT:  -7.6268E+00  9.3475E+00  2.9007E+00  8.8573E+00 -5.2626E+00 -1.8616E+01  9.1096E-02  2.7430E-01  7.2545E-01  1.6335E-01
             1.1412E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -390.929663596410        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0422E+00  3.8293E-01  5.7444E-01  1.3967E+00  9.1920E+00  1.5135E+00  1.7868E-01  3.6123E-02  6.6807E-02  5.6452E+00
             1.7140E+01
 PARAMETER:  1.4134E-01 -8.5990E-01 -4.5436E-01  4.3413E-01  2.3183E+00  5.1444E-01 -1.6221E+00 -3.2208E+00 -2.6059E+00  1.8308E+00
             2.9414E+00
 GRADIENT:  -1.6031E+01  6.6288E+00  1.2026E+01  1.8910E+00  1.6619E+00  6.1802E+00  2.1955E-02  4.1465E-03  1.4777E-01 -3.1346E-01
             3.2352E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -422.673023199144        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  6.8574E-01  7.2845E-02  8.6464E-02  7.7569E-01  7.6663E+01  1.6634E+00  5.3003E-02  1.0000E-02  3.6043E-02  3.9830E+00
             1.5342E+01
 PARAMETER: -2.7726E-01 -2.5194E+00 -2.3480E+00 -1.5401E-01  4.4394E+00  6.0885E-01 -2.8374E+00 -1.0420E+01 -3.2230E+00  1.4820E+00
             2.8306E+00
 GRADIENT:  -1.4320E+01 -8.2545E+00 -2.9809E+00  6.3442E+01  1.4113E-01  1.4889E+00  1.3895E-02  0.0000E+00  8.1763E-02  1.1107E-02
            -2.4343E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -428.164135437825        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      463
 NPARAMETR:  6.2937E-01  4.4641E-02  5.5464E-02  5.4814E-01  2.0014E+02  1.5249E+00  1.0000E-02  1.0000E-02  1.4876E-02  4.6018E+00
             1.6168E+01
 PARAMETER: -3.6304E-01 -3.0091E+00 -2.7920E+00 -5.0122E-01  5.3990E+00  5.2192E-01 -4.6747E+00 -1.1780E+01 -4.1080E+00  1.6264E+00
             2.8830E+00
 GRADIENT:   1.2850E+01  2.0899E-01 -1.3164E+00 -8.3500E-01 -1.7243E-03 -1.0637E+01  0.0000E+00  0.0000E+00  1.2001E-02  1.0573E-03
            -1.4207E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -429.393141303912        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      640
 NPARAMETR:  4.8909E-01  1.9433E-02  2.9281E-02  3.4388E-01  5.8185E+02  1.5254E+00  1.0000E-02  1.0000E-02  1.0000E-02  5.7744E+00
             1.6246E+01
 PARAMETER: -6.1520E-01 -3.8408E+00 -3.4308E+00 -9.6746E-01  6.4662E+00  5.2224E-01 -6.4014E+00 -1.3930E+01 -5.1744E+00  1.8534E+00
             2.8878E+00
 GRADIENT:   3.9551E-01  1.7359E+00 -3.3146E+00  3.4416E-01 -2.1200E-03 -2.4298E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.1007E-05
            -4.0784E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -429.411011324301        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      815
 NPARAMETR:  5.1399E-01  2.1938E-02  3.3266E-02  3.7738E-01  4.4792E+02  1.5466E+00  1.0000E-02  1.0000E-02  1.0000E-02  5.2939E+00
             1.6372E+01
 PARAMETER: -5.6555E-01 -3.7195E+00 -3.3032E+00 -8.7450E-01  6.2046E+00  5.3603E-01 -6.1537E+00 -1.3554E+01 -5.1004E+00  1.7666E+00
             2.8956E+00
 GRADIENT:  -7.3150E-01  1.5849E+00 -3.7235E-02 -2.3811E+00 -2.6297E-03 -3.6382E-01  0.0000E+00  0.0000E+00  0.0000E+00  1.9082E-05
             2.9748E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -429.504891689805        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  5.3332E-01  1.8646E-02  3.6962E-02  4.0552E-01  2.7870E+02  1.5684E+00  1.0000E-02  1.0000E-02  1.0000E-02  3.9099E+00
             1.6485E+01
 PARAMETER: -5.2863E-01 -3.8821E+00 -3.1979E+00 -8.0258E-01  5.7302E+00  5.5004E-01 -5.8191E+00 -1.3464E+01 -5.3456E+00  1.4635E+00
             2.9025E+00
 GRADIENT:  -1.1770E+00  3.5811E-01  3.7933E+00 -4.6389E+00 -2.7825E-04  1.5269E+00  0.0000E+00  0.0000E+00  0.0000E+00 -4.2780E-06
             3.5712E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -429.665667411552        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1178
 NPARAMETR:  5.1178E-01  1.2133E-02  3.3326E-02  3.7757E-01  1.9893E+02  1.5549E+00  1.0000E-02  1.0000E-02  1.0000E-02  3.3469E+00
             1.6376E+01
 PARAMETER: -5.6986E-01 -4.3118E+00 -3.3014E+00 -8.7401E-01  5.3930E+00  5.4144E-01 -5.8142E+00 -1.4055E+01 -5.7799E+00  1.3080E+00
             2.8958E+00
 GRADIENT:   1.0543E-02 -2.6457E-03 -5.1355E-01  2.1496E-01  1.6989E-03  4.8681E-03  0.0000E+00  0.0000E+00  0.0000E+00 -9.5813E-06
            -4.3556E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -429.673688658434        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1359
 NPARAMETR:  5.1272E-01  1.2407E-02  3.3421E-02  3.7791E-01  2.2041E+01  1.5543E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.6444E+01
             1.6417E+01
 PARAMETER: -5.6802E-01 -4.2895E+00 -3.2986E+00 -8.7309E-01  3.1929E+00  5.4105E-01 -5.8142E+00 -1.4055E+01 -5.7799E+00  2.9000E+00
             2.8983E+00
 GRADIENT:  -1.5610E+00  4.0027E-02  2.1016E+00 -2.6756E+00 -6.4737E-03  1.4121E-02  0.0000E+00  0.0000E+00  0.0000E+00  1.7998E-02
             1.9249E+00

0ITERATION NO.:   54    OBJECTIVE VALUE:  -429.677805493819        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1497
 NPARAMETR:  5.0998E-01  1.1554E-02  3.4239E-02  3.7485E-01  2.0030E+01  1.5630E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.4261E+01
             1.6805E+01
 PARAMETER: -5.6779E-01 -4.3175E+00 -3.2987E+00 -8.7290E-01  3.0666E+00  5.4124E-01 -5.8142E+00 -1.4055E+01 -5.7799E+00  2.7854E+00
             2.8980E+00
 GRADIENT:   2.7621E+02  1.8298E+01 -4.3851E+01  1.7642E+02 -5.1429E+01 -2.9139E+02  0.0000E+00  0.0000E+00  0.0000E+00  2.8789E+01
            -5.1753E+01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1497
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.3307E-03  1.6138E-06  9.7094E-05 -2.1909E-04 -4.9808E-04
 SE:             2.8267E-02  1.0260E-06  2.0533E-04  2.6251E-04  7.7850E-04
 N:                     100         100         100         100         100

 P VAL.:         8.7823E-01  1.1573E-01  6.3630E-01  4.0396E-01  5.2230E-01

 ETASHRINKSD(%)  5.3022E+00  9.9997E+01  9.9312E+01  9.9121E+01  9.7392E+01
 ETASHRINKVR(%)  1.0323E+01  1.0000E+02  9.9995E+01  9.9992E+01  9.9932E+01
 EBVSHRINKSD(%)  5.4931E+00  9.9996E+01  9.9233E+01  9.9013E+01  9.7518E+01
 EBVSHRINKVR(%)  1.0684E+01  1.0000E+02  9.9994E+01  9.9990E+01  9.9938E+01
 RELATIVEINF(%)  4.2367E-01  7.1122E-09  1.8611E-05  2.0073E-05  6.4681E-04
 EPSSHRINKSD(%)  4.1098E+00
 EPSSHRINKVR(%)  8.0506E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -429.67780549381916     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       305.47302106991901     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -429.678       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         5.13E-01  1.21E-02  3.34E-02  3.78E-01  1.94E+01  1.55E+00  1.00E-02  1.00E-02  1.00E-02  1.47E+01  1.64E+01
 


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
 #CPUT: Total CPU Time in Seconds,       19.946
Stop Time:
Sat Oct  2 06:02:14 CDT 2021
