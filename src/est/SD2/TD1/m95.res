Fri Oct  1 14:34:01 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat95.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m95.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2106.07036660568        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9255E+02 -4.6056E+01 -4.2186E+01 -4.8666E+01  6.9134E+01  4.4317E+01 -8.3668E+00  1.9192E+01 -6.3900E+01  9.3042E+00
             3.7426E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2121.42059484106        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0045E+00  9.5382E-01  1.1018E+00  1.0903E+00  9.7421E-01  9.7163E-01  1.0276E+00  9.0074E-01  1.3385E+00  9.4059E-01
             9.1672E-01
 PARAMETER:  1.0448E-01  5.2725E-02  1.9693E-01  1.8644E-01  7.3875E-02  7.1222E-02  1.2718E-01 -4.5429E-03  3.9152E-01  3.8750E-02
             1.3051E-02
 GRADIENT:   7.0825E+00 -1.0776E+01 -2.9946E+00 -1.2320E+01  1.0634E+01 -3.4962E+00  8.2868E+00  1.2100E+01  2.5063E+01 -4.8056E+00
            -3.3414E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2126.07099912825        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  1.0014E+00  8.5322E-01  9.7645E-01  1.1611E+00  8.8757E-01  1.0008E+00  9.4312E-01  3.5753E-01  1.3036E+00  1.0744E+00
             9.1629E-01
 PARAMETER:  1.0137E-01 -5.8738E-02  7.6163E-02  2.4936E-01 -1.9263E-02  1.0077E-01  4.1434E-02 -9.2855E-01  3.6511E-01  1.7172E-01
             1.2580E-02
 GRADIENT:   1.0989E+00 -1.0523E+01 -3.8205E+01  7.5473E+00  9.1375E+00  8.5959E+00  5.1926E+00  2.8259E+00  2.8966E+01  1.7533E+01
            -2.6500E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2129.95106458365        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  1.0007E+00  7.7321E-01  1.0611E+00  1.2212E+00  8.9157E-01  9.7780E-01  9.9808E-01  3.3291E-01  1.1274E+00  1.0401E+00
             9.5026E-01
 PARAMETER:  1.0072E-01 -1.5721E-01  1.5929E-01  2.9981E-01 -1.4766E-02  7.7550E-02  9.8081E-02 -9.9989E-01  2.1987E-01  1.3928E-01
             4.8978E-02
 GRADIENT:   1.8546E+00  7.6957E+00 -4.3527E-01  8.9466E+00 -2.7868E+00  4.6635E-01  1.6599E+00  1.4553E+00 -2.8383E+00  2.0513E+00
             2.0746E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2131.39114991393        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.9846E-01  6.6738E-01  1.0839E+00  1.2726E+00  8.7394E-01  9.7359E-01  3.0833E-01  1.3213E-01  1.1386E+00  1.1104E+00
             9.4721E-01
 PARAMETER:  9.8461E-02 -3.0440E-01  1.8059E-01  3.4108E-01 -3.4741E-02  7.3231E-02 -1.0766E+00 -1.9239E+00  2.2981E-01  2.0473E-01
             4.5763E-02
 GRADIENT:   1.5765E-01 -1.7806E-01 -1.7512E+00  3.1517E+00 -3.0238E-01 -3.2130E-01  2.0449E-01  1.7205E-01  5.2852E-01  2.3778E-01
            -3.6114E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2131.63856803574        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.9871E-01  7.0394E-01  1.0849E+00  1.2463E+00  8.8824E-01  9.7444E-01  3.4778E-02  3.4815E-02  1.1612E+00  1.1245E+00
             9.5134E-01
 PARAMETER:  9.8713E-02 -2.5106E-01  1.8147E-01  3.2020E-01 -1.8516E-02  7.4111E-02 -3.2588E+00 -3.2577E+00  2.4942E-01  2.1735E-01
             5.0114E-02
 GRADIENT:  -3.9548E-01  8.4818E-01 -5.4105E-01  3.7879E-01 -1.9075E-01 -1.3786E-01  4.2625E-03  1.2485E-02 -1.6008E+00  5.2420E-02
            -5.4949E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2131.65221485931        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.9961E-01  7.0517E-01  1.0861E+00  1.2441E+00  8.8926E-01  9.7503E-01  1.0000E-02  1.0000E-02  1.1671E+00  1.1256E+00
             9.5132E-01
 PARAMETER:  9.9607E-02 -2.4932E-01  1.8259E-01  3.1839E-01 -1.7363E-02  7.4709E-02 -4.9719E+00 -4.7865E+00  2.5453E-01  2.1830E-01
             5.0100E-02
 GRADIENT:   1.6964E+00 -4.2186E-01  4.0157E-01 -1.6082E+00 -3.4485E-01  9.8285E-02  0.0000E+00  0.0000E+00  9.8937E-02 -2.2500E-02
            -8.1953E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2131.65262323091        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1159
 NPARAMETR:  9.9947E-01  7.0693E-01  1.0851E+00  1.2439E+00  8.8978E-01  9.7501E-01  1.0000E-02  1.0000E-02  1.1673E+00  1.1259E+00
             9.5156E-01
 PARAMETER:  9.9469E-02 -2.4682E-01  1.8171E-01  3.1828E-01 -1.6778E-02  7.4691E-02 -4.9719E+00 -4.7865E+00  2.5471E-01  2.1862E-01
             5.0352E-02
 GRADIENT:   1.2986E+00  2.6429E-02 -6.1298E-01 -2.8187E-01  2.8071E-01  7.8079E-02  0.0000E+00  0.0000E+00 -2.0391E-01  1.1501E-01
             1.8967E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1159
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.3003E-04 -3.8317E-04 -3.9890E-04 -2.5020E-03 -1.7345E-02
 SE:             2.9904E-02  1.3851E-04  2.1308E-04  2.9725E-02  2.6294E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7786E-01  5.6673E-03  6.1195E-02  9.3292E-01  5.0946E-01

 ETASHRINKSD(%)  1.0000E-10  9.9536E+01  9.9286E+01  4.1632E-01  1.1913E+01
 ETASHRINKVR(%)  1.0000E-10  9.9998E+01  9.9995E+01  8.3091E-01  2.2407E+01
 EBVSHRINKSD(%)  3.1214E-01  9.9591E+01  9.9319E+01  9.3616E-01  8.6361E+00
 EBVSHRINKVR(%)  6.2331E-01  9.9998E+01  9.9995E+01  1.8636E+00  1.6526E+01
 RELATIVEINF(%)  9.8930E+01  2.2351E-04  1.6840E-03  1.9053E+01  1.8185E+01
 EPSSHRINKSD(%)  3.2629E+01
 EPSSHRINKVR(%)  5.4612E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2131.6526232309088     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1212.7140900262361     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.63
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2131.653       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  7.07E-01  1.09E+00  1.24E+00  8.90E-01  9.75E-01  1.00E-02  1.00E-02  1.17E+00  1.13E+00  9.52E-01
 


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
 #CPUT: Total CPU Time in Seconds,       16.683
Stop Time:
Fri Oct  1 14:34:20 CDT 2021
