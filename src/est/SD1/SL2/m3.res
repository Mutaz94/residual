Fri Oct  1 02:46:33 CDT 2021
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
$DATA ../../../../data/SD1/SL2/dat3.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      999
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

 TOT. NO. OF OBS RECS:      899
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1348.08593887558        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2730E+02  4.5366E+01  6.6983E+01  1.0071E+02  1.2124E+02  7.2597E+01 -8.4267E+01 -1.2016E+02 -7.6659E+01 -4.9030E+00
            -4.8292E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2878.19945803119        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      130
 NPARAMETR:  1.1336E+00  1.1089E+00  9.8336E-01  1.0392E+00  9.9402E-01  1.0035E+00  1.0388E+00  9.9092E-01  1.0214E+00  9.9087E-01
             2.0411E+00
 PARAMETER:  2.2538E-01  2.0339E-01  8.3225E-02  1.3848E-01  9.3998E-02  1.0354E-01  1.3807E-01  9.0878E-02  1.2120E-01  9.0828E-02
             8.1348E-01
 GRADIENT:   2.1120E+02  3.1855E+01 -9.3638E-01  7.2855E+01 -1.4180E+01 -1.8916E+01 -8.4343E+00  1.1125E+00 -1.2106E+01 -2.5123E+00
            -4.1810E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2885.33744593825        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  1.1202E+00  1.5014E+00  1.0322E+00  8.5214E-01  1.2421E+00  1.1123E+00  8.3102E-01  6.5136E-01  1.1247E+00  1.2733E+00
             2.0863E+00
 PARAMETER:  2.1352E-01  5.0639E-01  1.3170E-01 -5.9999E-02  3.1677E-01  2.0642E-01 -8.5099E-02 -3.2870E-01  2.1748E-01  3.4164E-01
             8.3540E-01
 GRADIENT:   1.4982E+02  1.3886E+02  1.6981E+01  9.6393E+01 -4.0039E+01  2.4230E+01 -1.4645E+01 -4.8865E+00 -1.4821E+01  6.8656E-01
            -3.7742E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2923.36329968985        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      485
 NPARAMETR:  1.0390E+00  1.3533E+00  9.6274E-01  8.6553E-01  1.1742E+00  9.9362E-01  8.6978E-01  2.2858E-01  1.1382E+00  1.2019E+00
             2.4060E+00
 PARAMETER:  1.3823E-01  4.0254E-01  6.2032E-02 -4.4416E-02  2.6056E-01  9.3601E-02 -3.9517E-02 -1.3759E+00  2.2944E-01  2.8389E-01
             9.7799E-01
 GRADIENT:   1.1788E+01  1.0474E+01  2.2659E+00  1.3589E+01 -9.6126E+00 -2.3978E+00 -2.9310E+00 -3.2433E-01  1.8366E+00  2.5506E+00
             3.5395E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2925.27946041255        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      660
 NPARAMETR:  1.0306E+00  1.6115E+00  1.0003E+00  6.9884E-01  1.4194E+00  1.0064E+00  8.0683E-01  1.0535E+00  1.2660E+00  1.3239E+00
             2.3733E+00
 PARAMETER:  1.3017E-01  5.7716E-01  1.0034E-01 -2.5834E-01  4.5022E-01  1.0638E-01 -1.1464E-01  1.5211E-01  3.3588E-01  3.8057E-01
             9.6426E-01
 GRADIENT:  -5.1761E+00 -3.1197E+00 -1.0047E+00  3.5402E+00  8.6565E+00  2.3751E+00 -1.2689E+00 -7.3792E-01  9.4147E-02  5.3690E-01
            -1.0254E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2925.39561389312        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      835
 NPARAMETR:  1.0332E+00  1.6178E+00  1.0129E+00  6.9389E-01  1.4147E+00  9.9958E-01  8.1326E-01  1.1688E+00  1.2667E+00  1.3180E+00
             2.3819E+00
 PARAMETER:  1.3267E-01  5.8105E-01  1.1282E-01 -2.6544E-01  4.4690E-01  9.9575E-02 -1.0670E-01  2.5598E-01  3.3644E-01  3.7612E-01
             9.6788E-01
 GRADIENT:  -9.5203E-03 -1.5568E-01  3.2182E-01 -6.1564E-01 -5.0137E-01 -8.5475E-02  5.0039E-02 -4.9788E-02  1.7220E-01 -4.8222E-02
            -2.3650E-01

0ITERATION NO.:   29    OBJECTIVE VALUE:  -2925.39605395084        NO. OF FUNC. EVALS.: 126
 CUMULATIVE NO. OF FUNC. EVALS.:      961
 NPARAMETR:  1.0335E+00  1.6183E+00  1.0104E+00  6.9382E-01  1.4154E+00  9.9997E-01  8.1294E-01  1.1726E+00  1.2655E+00  1.3190E+00
             2.3820E+00
 PARAMETER:  1.3296E-01  5.8139E-01  1.1037E-01 -2.6554E-01  4.4744E-01  9.9972E-02 -1.0710E-01  2.5919E-01  3.3550E-01  3.7687E-01
             9.6796E-01
 GRADIENT:   5.9610E-01 -3.0409E-01 -1.1117E-01 -1.2265E-01  1.8447E-01  6.4202E-02 -6.8289E-03  2.3490E-02  6.9819E-02  1.5184E-02
            -6.3181E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      961
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3945E-03 -2.7952E-02 -1.0598E-02  1.9830E-02 -2.1453E-02
 SE:             2.9527E-02  2.1560E-02  9.4181E-03  2.3045E-02  2.5155E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6233E-01  1.9482E-01  2.6048E-01  3.8952E-01  3.9376E-01

 ETASHRINKSD(%)  1.0803E+00  2.7770E+01  6.8448E+01  2.2795E+01  1.5726E+01
 ETASHRINKVR(%)  2.1490E+00  4.7828E+01  9.0045E+01  4.0393E+01  2.8979E+01
 EBVSHRINKSD(%)  1.3154E+00  2.7702E+01  7.0563E+01  2.5176E+01  1.3966E+01
 EBVSHRINKVR(%)  2.6135E+00  4.7729E+01  9.1335E+01  4.4013E+01  2.5981E+01
 RELATIVEINF(%)  9.7348E+01  7.3150E+00  5.6052E+00  8.6062E+00  2.0197E+01
 EPSSHRINKSD(%)  1.7082E+01
 EPSSHRINKVR(%)  3.1246E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          899
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1652.2514827020016     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2925.3960539508384     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1273.1445712488369     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.91
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2925.396       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.62E+00  1.01E+00  6.94E-01  1.42E+00  1.00E+00  8.13E-01  1.17E+00  1.27E+00  1.32E+00  2.38E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.980
Stop Time:
Fri Oct  1 02:47:00 CDT 2021
