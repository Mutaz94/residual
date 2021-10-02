Fri Oct  1 00:38:25 CDT 2021
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
$DATA ../../../../data/SD1/A2/dat50.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2330.60566421142        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5408E+02  1.3721E+02  1.2222E+02  9.4392E+01  1.6071E+02  3.7364E+01 -7.4529E+01 -5.0954E+01 -2.7976E+00 -1.9858E+01
            -2.8595E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3121.39356054860        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8460E-01  7.0233E-01  6.7421E-01  1.1023E+00  6.3860E-01  9.4934E-01  1.0579E+00  5.9136E-01  9.9521E-01  5.6453E-01
             1.8071E+00
 PARAMETER:  8.4483E-02 -2.5335E-01 -2.9422E-01  1.9742E-01 -3.4848E-01  4.8015E-02  1.5631E-01 -4.2533E-01  9.5199E-02 -4.7176E-01
             6.9175E-01
 GRADIENT:   1.1045E+02  8.1439E+01  9.0762E+01 -2.4755E+00 -1.0954E+01 -4.9997E+00 -2.2381E+01  1.0728E+01 -3.7847E-01 -1.2416E+01
            -1.4041E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3151.67081328869        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      184
 NPARAMETR:  1.0831E+00  3.8766E-01  3.1722E-01  1.2043E+00  3.4343E-01  8.5022E-01  1.2358E+00  4.9000E-01  9.8095E-01  4.5289E-01
             1.6941E+00
 PARAMETER:  1.7981E-01 -8.4761E-01 -1.0482E+00  2.8590E-01 -9.6878E-01 -6.2255E-02  3.1168E-01 -6.1334E-01  8.0765E-02 -6.9210E-01
             6.2712E-01
 GRADIENT:   2.7217E+02  4.0714E+01 -2.5166E+01  1.0796E+02  5.4340E+01 -9.1041E+01 -2.7500E+01  3.4123E+00 -4.5321E+01 -2.0315E+01
            -1.0728E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3160.41533260099        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      360
 NPARAMETR:  1.0702E+00  3.6210E-01  3.1334E-01  1.2095E+00  3.3205E-01  9.8574E-01  1.4338E+00  6.3770E-01  1.0802E+00  3.5411E-01
             1.6790E+00
 PARAMETER:  1.6787E-01 -9.1584E-01 -1.0605E+00  2.9018E-01 -1.0025E+00  8.5642E-02  4.6036E-01 -3.4989E-01  1.7715E-01 -9.3813E-01
             6.1821E-01
 GRADIENT:   1.7888E+02  3.2793E+00  5.4284E+01  1.0302E+02  3.7471E+00 -1.5447E+01  6.5030E+00  8.8019E+00 -1.0333E+01 -2.2193E+01
            -1.1420E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3193.84469445141        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      537
 NPARAMETR:  9.8083E-01  2.8134E-01  2.1414E-01  1.0552E+00  2.5184E-01  9.9067E-01  1.3384E+00  2.5927E-01  1.1471E+00  6.1298E-01
             1.7246E+00
 PARAMETER:  8.0642E-02 -1.1682E+00 -1.4411E+00  1.5369E-01 -1.2790E+00  9.0626E-02  3.9150E-01 -1.2499E+00  2.3723E-01 -3.8943E-01
             6.4501E-01
 GRADIENT:  -1.9718E+01  8.4760E+00 -8.5239E+00 -1.5471E+01  5.1517E+00  2.4325E-01 -1.5315E+00  1.3256E+00 -5.0032E+00 -8.2294E-01
             1.6494E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3194.55803763743        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      714
 NPARAMETR:  9.9137E-01  2.8123E-01  2.1834E-01  1.0707E+00  2.5468E-01  9.9341E-01  1.3611E+00  1.3692E-01  1.1513E+00  6.3261E-01
             1.7087E+00
 PARAMETER:  9.1333E-02 -1.1686E+00 -1.4217E+00  1.6831E-01 -1.2678E+00  9.3384E-02  4.0831E-01 -1.8884E+00  2.4090E-01 -3.5790E-01
             6.3574E-01
 GRADIENT:   4.6588E+00 -2.2267E+00  2.3787E+00  1.1647E+00  4.9148E-01  1.4681E+00  5.0228E-01  3.7817E-01 -8.5206E-01  7.2962E-01
            -5.4099E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3194.77593465867        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      889
 NPARAMETR:  9.8981E-01  2.8019E-01  2.1664E-01  1.0676E+00  2.5323E-01  9.8949E-01  1.3585E+00  2.6201E-02  1.1545E+00  6.3789E-01
             1.7133E+00
 PARAMETER:  8.9758E-02 -1.1723E+00 -1.4295E+00  1.6542E-01 -1.2734E+00  8.9437E-02  4.0636E-01 -3.5419E+00  2.4365E-01 -3.4958E-01
             6.3841E-01
 GRADIENT:   1.0682E+00 -5.9614E-01  4.3252E-01 -3.3425E-01  1.4153E-01 -1.6387E-02  5.5594E-02  1.3580E-02 -1.0799E-02  2.5117E-01
             1.6574E-01

0ITERATION NO.:   34    OBJECTIVE VALUE:  -3194.78327916455        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1018
 NPARAMETR:  9.8926E-01  2.8036E-01  2.1660E-01  1.0678E+00  2.5320E-01  9.8953E-01  1.3580E+00  1.0000E-02  1.1546E+00  6.3748E-01
             1.7132E+00
 PARAMETER:  8.9198E-02 -1.1717E+00 -1.4297E+00  1.6562E-01 -1.2736E+00  8.9475E-02  4.0599E-01 -4.5155E+00  2.4374E-01 -3.5023E-01
             6.3838E-01
 GRADIENT:  -4.7487E-01 -1.4894E+00 -6.3286E-01  2.4474E-01  5.6619E+00 -2.9114E-02 -4.7877E-02  3.6933E-04 -7.1372E-02 -1.8683E-02
             5.7794E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1018
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1518E-03  4.9488E-03  3.0595E-06 -3.0550E-03  5.9504E-04
 SE:             2.9669E-02  2.5812E-02  3.0820E-04  2.8829E-02  2.6217E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6903E-01  8.4796E-01  9.9208E-01  9.1561E-01  9.8189E-01

 ETASHRINKSD(%)  6.0645E-01  1.3527E+01  9.8968E+01  3.4200E+00  1.2168E+01
 ETASHRINKVR(%)  1.2092E+00  2.5224E+01  9.9989E+01  6.7231E+00  2.2856E+01
 EBVSHRINKSD(%)  8.0549E-01  1.1955E+01  9.8949E+01  2.8006E+00  1.2579E+01
 EBVSHRINKVR(%)  1.6045E+00  2.2482E+01  9.9989E+01  5.5228E+00  2.3576E+01
 RELATIVEINF(%)  9.8386E+01  1.8631E+01  6.9821E-04  5.6385E+01  4.8856E+00
 EPSSHRINKSD(%)  2.0817E+01
 EPSSHRINKVR(%)  3.7300E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3194.7832791645528     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1540.6939193961421     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.81
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3194.783       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.89E-01  2.80E-01  2.17E-01  1.07E+00  2.53E-01  9.90E-01  1.36E+00  1.00E-02  1.15E+00  6.37E-01  1.71E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.881
Stop Time:
Fri Oct  1 00:38:59 CDT 2021