Sat Oct  2 00:56:01 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat17.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m17.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   568.914009198051        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2798E+02  1.8242E+02  1.2887E+02  9.5445E+01  3.8046E+02  4.7991E+01 -1.2411E+02 -6.8960E+01 -2.4523E+02 -3.1575E+02
            -3.6888E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -863.802195034102        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0491E+00  4.9729E-01  4.6275E-01  1.1663E+00  4.3042E-01  8.5281E-01  1.1342E+00  9.5696E-01  1.3801E+00  1.0521E+00
             1.6853E+00
 PARAMETER:  1.4789E-01 -5.9858E-01 -6.7057E-01  2.5382E-01 -7.4300E-01 -5.9220E-02  2.2597E-01  5.6007E-02  4.2218E-01  1.5075E-01
             6.2192E-01
 GRADIENT:   2.9234E+02  7.2627E+01  7.5085E+01  9.4639E+01  1.8479E+02 -3.3443E+01 -6.9898E+00  2.7692E+00  9.0465E+00  1.4955E+01
            -1.0296E+03

0ITERATION NO.:   10    OBJECTIVE VALUE:  -892.217570456547        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      200
 NPARAMETR:  1.0603E+00  4.7270E-01  3.4484E-01  1.0314E+00  3.2902E-01  1.1448E+00  1.0440E+00  9.6341E-01  1.5293E+00  7.3443E-01
             1.6759E+00
 PARAMETER:  1.5855E-01 -6.4930E-01 -9.6467E-01  1.3088E-01 -1.0116E+00  2.3524E-01  1.4309E-01  6.2724E-02  5.2480E-01 -2.0866E-01
             6.1636E-01
 GRADIENT:   6.5810E+01  5.8157E+01  1.5702E+02 -6.3843E+01 -2.9879E+01  6.1359E+01 -5.8793E+00 -4.9496E+01 -9.9911E+00 -5.3563E+00
            -9.5738E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1010.65399100791        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0724E+00  3.9715E-01  3.2793E-01  9.0639E-01  2.7953E-01  9.9694E-01  1.0604E-01  1.9549E+00  2.1326E+00  5.9023E-01
             1.8951E+00
 PARAMETER:  1.6988E-01 -8.2343E-01 -1.0150E+00  1.7139E-03 -1.1746E+00  9.6938E-02 -2.1440E+00  7.7033E-01  8.5736E-01 -4.2725E-01
             7.3926E-01
 GRADIENT:   1.1762E+02  1.1072E+01  1.3184E+02 -8.2838E+01 -4.1697E+01  2.3506E+01  1.7738E-02  6.3164E+00  5.7239E+01  1.4609E+01
            -6.2162E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1223.74567357290        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      555
 NPARAMETR:  1.0530E+00  2.3164E-01  2.1790E-01  1.1169E+00  2.3203E-01  9.0326E-01  5.2132E-02  1.3497E+00  1.4968E+00  3.1505E-01
             3.4542E+00
 PARAMETER:  1.5162E-01 -1.3626E+00 -1.4237E+00  2.1059E-01 -1.3609E+00 -1.7408E-03 -2.8540E+00  3.9991E-01  5.0333E-01 -1.0550E+00
             1.3396E+00
 GRADIENT:  -3.1793E+00 -4.9801E+00 -1.9513E+01  2.3704E+01  8.3165E+00 -3.1694E+00  9.5039E-04  9.5057E+00  3.6785E+00  4.7766E-01
            -1.8657E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1226.50054289781        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      730
 NPARAMETR:  1.0568E+00  2.4186E-01  2.5039E-01  1.1286E+00  2.5068E-01  9.1279E-01  7.5251E-02  1.0771E+00  1.3933E+00  3.0791E-01
             3.6788E+00
 PARAMETER:  1.5528E-01 -1.3194E+00 -1.2847E+00  2.2102E-01 -1.2836E+00  8.7533E-03 -2.4869E+00  1.7430E-01  4.3168E-01 -1.0780E+00
             1.4026E+00
 GRADIENT:  -9.3236E-01  1.0465E-01  3.0089E-01 -5.5110E-01 -8.9827E-01  3.2982E-01 -1.9128E-03  5.7291E-02 -3.0756E-01  1.6091E-01
             5.7062E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1226.50789921877        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  1.0569E+00  2.4007E-01  2.5081E-01  1.1301E+00  2.5090E-01  9.1182E-01  7.6381E-02  1.0939E+00  1.3957E+00  2.8392E-01
             3.6745E+00
 PARAMETER:  1.5531E-01 -1.3268E+00 -1.2831E+00  2.2229E-01 -1.2827E+00  7.6899E-03 -2.4720E+00  1.8977E-01  4.3339E-01 -1.1591E+00
             1.4014E+00
 GRADIENT:  -2.5685E-01 -1.3412E-02 -4.6281E-01 -3.3533E-01 -3.4847E-01 -6.7498E-04 -2.0534E-03  5.3642E-02 -1.2597E-03 -3.3764E-04
            -1.7823E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1226.50789921877        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      926
 NPARAMETR:  1.0569E+00  2.4007E-01  2.5081E-01  1.1301E+00  2.5090E-01  9.1182E-01  7.6381E-02  1.0939E+00  1.3957E+00  2.8392E-01
             3.6745E+00
 PARAMETER:  1.5531E-01 -1.3268E+00 -1.2831E+00  2.2229E-01 -1.2827E+00  7.6899E-03 -2.4720E+00  1.8977E-01  4.3339E-01 -1.1591E+00
             1.4014E+00
 GRADIENT:  -2.5685E-01 -1.3412E-02 -4.6281E-01 -3.3533E-01 -3.4847E-01 -6.7498E-04 -2.0534E-03  5.3642E-02 -1.2597E-03 -3.3764E-04
            -1.7823E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      926
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0011E-03 -1.0507E-03  5.7827E-03 -8.2903E-03  1.0672E-02
 SE:             2.8234E-02  3.9086E-04  1.9044E-02  2.6465E-02  8.8717E-03
 N:                     100         100         100         100         100

 P VAL.:         9.7171E-01  7.1839E-03  7.6139E-01  7.5408E-01  2.2899E-01

 ETASHRINKSD(%)  5.4110E+00  9.8691E+01  3.6200E+01  1.1340E+01  7.0279E+01
 ETASHRINKVR(%)  1.0529E+01  9.9983E+01  5.9296E+01  2.1394E+01  9.1166E+01
 EBVSHRINKSD(%)  5.2932E+00  9.8842E+01  3.4887E+01  9.4883E+00  7.1742E+01
 EBVSHRINKVR(%)  1.0306E+01  9.9987E+01  5.7603E+01  1.8076E+01  9.2015E+01
 RELATIVEINF(%)  8.6948E+01  1.2388E-03  2.8082E+00  2.5573E+01  2.8853E-01
 EPSSHRINKSD(%)  2.9473E+01
 EPSSHRINKVR(%)  5.0259E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1226.5078992187746     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -491.35707265503640     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.35
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1226.508       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  2.40E-01  2.51E-01  1.13E+00  2.51E-01  9.12E-01  7.64E-02  1.09E+00  1.40E+00  2.84E-01  3.67E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.385
Stop Time:
Sat Oct  2 00:56:15 CDT 2021
