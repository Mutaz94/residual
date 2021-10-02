Sat Oct  2 01:44:10 CDT 2021
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
$DATA ../../../../data/SD4/S1/dat56.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m56.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1658.38150276086        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0120E+02 -2.9870E+01 -9.1775E+00 -2.5555E+01 -2.1721E+01  4.7344E+01 -1.5131E+01  1.2922E+01 -6.2592E+00  1.0488E+01
            -6.3888E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1664.72731251425        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0128E+00  1.1293E+00  1.1929E+00  9.8529E-01  1.2344E+00  1.0310E+00  1.2687E+00  8.6415E-01  1.0515E+00  9.8342E-01
             1.0532E+00
 PARAMETER:  1.1268E-01  2.2162E-01  2.7639E-01  8.5179E-02  3.1057E-01  1.3050E-01  3.3800E-01 -4.6004E-02  1.5021E-01  8.3285E-02
             1.5184E-01
 GRADIENT:   1.2980E+01 -1.6712E+01 -8.7670E+00  4.8630E+00  6.7127E+01  3.4660E+00  3.4464E+00 -3.6227E+00  1.0117E+01 -2.2034E+01
             7.4090E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1666.63662738750        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.0037E+00  8.6372E-01  1.0832E+00  1.1554E+00  1.0314E+00  1.0147E+00  1.4882E+00  4.6427E-01  9.5015E-01  9.8668E-01
             1.0379E+00
 PARAMETER:  1.0370E-01 -4.6508E-02  1.7988E-01  2.4441E-01  1.3096E-01  1.1458E-01  4.9759E-01 -6.6728E-01  4.8864E-02  8.6590E-02
             1.3725E-01
 GRADIENT:  -3.6526E+00 -8.4827E+00 -3.7531E+00  2.1904E+01  3.6689E+01 -2.2236E+00 -3.2415E+00 -4.5987E+00  1.6088E+01 -3.2702E+00
             3.2910E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1669.61739373378        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      546
 NPARAMETR:  1.0069E+00  8.3926E-01  8.9149E-01  1.1465E+00  8.8522E-01  1.0240E+00  1.6155E+00  3.5836E-01  8.2742E-01  8.4983E-01
             1.0213E+00
 PARAMETER:  1.0686E-01 -7.5239E-02 -1.4862E-02  2.3669E-01 -2.1920E-02  1.2369E-01  5.7967E-01 -9.2621E-01 -8.9438E-02 -6.2720E-02
             1.2112E-01
 GRADIENT:   1.7146E-01  2.0236E+00  7.3565E-01  2.5095E+00 -9.5879E-01  8.1101E-01 -8.7139E-01 -1.1529E-01 -1.0010E+00  1.9069E-01
            -2.2454E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1669.63712569619        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      721
 NPARAMETR:  1.0062E+00  7.6868E-01  8.9696E-01  1.1847E+00  8.6068E-01  1.0214E+00  1.7350E+00  3.5001E-01  8.0802E-01  8.3971E-01
             1.0224E+00
 PARAMETER:  1.0618E-01 -1.6308E-01 -8.7424E-03  2.6948E-01 -5.0027E-02  1.2117E-01  6.5098E-01 -9.4979E-01 -1.1317E-01 -7.4694E-02
             1.2211E-01
 GRADIENT:   7.4547E-02  5.4546E-02  1.1528E+00 -9.7164E-01 -4.5901E-01  9.5155E-02 -4.1695E-02 -3.3562E-01 -6.5249E-02 -1.6132E-01
            -1.4733E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1669.65656110008        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  1.0042E+00  6.4888E-01  9.8272E-01  1.2624E+00  8.6139E-01  1.0192E+00  1.9692E+00  5.2598E-01  7.7579E-01  8.6099E-01
             1.0225E+00
 PARAMETER:  1.0420E-01 -3.3251E-01  8.2573E-02  3.3298E-01 -4.9203E-02  1.1905E-01  7.7763E-01 -5.4249E-01 -1.5387E-01 -4.9675E-02
             1.2229E-01
 GRADIENT:   1.8609E-01  8.3075E-01  1.6756E-01 -5.9890E-01 -3.8311E+00  1.0223E-01  2.1153E-01  1.4174E-01 -1.5296E-01  7.3701E-01
             3.3457E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1669.66556093282        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1079
 NPARAMETR:  1.0037E+00  6.4879E-01  9.8787E-01  1.2631E+00  8.6570E-01  1.0184E+00  1.9621E+00  5.2733E-01  7.7733E-01  8.6134E-01
             1.0220E+00
 PARAMETER:  1.0372E-01 -3.3265E-01  8.7796E-02  3.3357E-01 -4.4216E-02  1.1823E-01  7.7402E-01 -5.3994E-01 -1.5189E-01 -4.9264E-02
             1.2175E-01
 GRADIENT:  -7.5740E-01  1.4158E-01 -9.2368E-01  8.5936E-01 -6.6428E-01 -2.1387E-01 -2.8443E-01 -6.7870E-02  4.2002E-03  1.5772E-02
            -7.9315E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1669.70491477331        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1257
 NPARAMETR:  1.0027E+00  6.4690E-01  1.0913E+00  1.2738E+00  9.2046E-01  1.0172E+00  1.9507E+00  6.6602E-01  7.8246E-01  9.0907E-01
             1.0216E+00
 PARAMETER:  1.0266E-01 -3.3556E-01  1.8733E-01  3.4197E-01  1.7117E-02  1.1705E-01  7.6819E-01 -3.0644E-01 -1.4531E-01  4.6671E-03
             1.2139E-01
 GRADIENT:  -1.2358E+00 -2.5625E-02 -1.1252E+00  5.4968E-01  1.2767E+00 -3.6832E-01 -8.4466E-01  3.0873E-02  1.7836E-01  2.2824E-01
             5.7711E-02

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1669.71094980818        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:     1351
 NPARAMETR:  1.0031E+00  6.4235E-01  1.1102E+00  1.2767E+00  9.2758E-01  1.0183E+00  1.9729E+00  6.8936E-01  7.7937E-01  9.1315E-01
             1.0218E+00
 PARAMETER:  1.0314E-01 -3.4263E-01  2.0458E-01  3.4427E-01  2.4821E-02  1.1817E-01  7.7953E-01 -2.7199E-01 -1.4927E-01  9.1418E-03
             1.2157E-01
 GRADIENT:  -7.5011E-01  2.5988E-01  4.3574E-01  1.0444E+00 -5.4228E-02 -7.4218E-02 -3.2149E-01 -3.0224E-02 -1.0688E-01 -4.8222E-02
             3.3350E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1351
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0614E-03  1.8830E-02 -2.6909E-02 -2.2338E-02 -1.8454E-02
 SE:             2.9873E-02  2.0712E-02  1.1995E-02  2.3138E-02  2.1163E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7166E-01  3.6328E-01  2.4877E-02  3.3434E-01  3.8322E-01

 ETASHRINKSD(%)  1.0000E-10  3.0613E+01  5.9815E+01  2.2485E+01  2.9101E+01
 ETASHRINKVR(%)  1.0000E-10  5.1855E+01  8.3852E+01  3.9914E+01  4.9733E+01
 EBVSHRINKSD(%)  4.3174E-01  3.2352E+01  6.2357E+01  2.1432E+01  2.6221E+01
 EBVSHRINKVR(%)  8.6161E-01  5.4238E+01  8.5830E+01  3.8271E+01  4.5566E+01
 RELATIVEINF(%)  9.8495E+01  5.1713E+00  2.2994E+00  7.6763E+00  7.9623E+00
 EPSSHRINKSD(%)  4.3462E+01
 EPSSHRINKVR(%)  6.8035E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1669.7109498081850     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -934.56012324444680     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1669.711       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.42E-01  1.11E+00  1.28E+00  9.28E-01  1.02E+00  1.97E+00  6.89E-01  7.79E-01  9.13E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.626
Stop Time:
Sat Oct  2 01:44:29 CDT 2021