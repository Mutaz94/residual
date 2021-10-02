Fri Oct  1 10:53:51 CDT 2021
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
$DATA ../../../../data/SD2/S1/dat5.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m5.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2092.92032431522        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1105E+02  4.1706E+00  1.3752E+01  1.5862E+01 -2.5197E+01  4.1217E+01 -3.4008E+00  9.1978E+00  1.7041E+01  1.4861E+00
             2.3085E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2100.04727972062        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.4322E-01  1.0559E+00  1.0106E+00  1.0059E+00  1.0440E+00  9.2173E-01  1.0415E+00  9.5048E-01  9.4357E-01  1.0126E+00
             9.6055E-01
 PARAMETER:  4.1543E-02  1.5442E-01  1.1057E-01  1.0591E-01  1.4310E-01  1.8501E-02  1.4067E-01  4.9207E-02  4.1918E-02  1.1252E-01
             5.9747E-02
 GRADIENT:  -2.4299E+00  8.5934E+00  7.7404E+00  9.6987E+00 -1.2310E+01 -8.4425E+00 -7.4887E+00  5.6220E+00  1.6639E+00 -4.5041E+00
            -1.1441E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2102.87275320727        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.4300E-01  9.9514E-01  9.1974E-01  1.0328E+00  1.0000E+00  9.4316E-01  1.2037E+00  5.2130E-01  8.9593E-01  1.0654E+00
             9.7034E-01
 PARAMETER:  4.1307E-02  9.5125E-02  1.6341E-02  1.3224E-01  1.0002E-01  4.1483E-02  2.8543E-01 -5.5143E-01 -9.8894E-03  1.6338E-01
             6.9893E-02
 GRADIENT:  -2.4254E+00 -2.9582E+00 -6.0508E+00  1.2059E+01  1.2314E+01  7.8585E-01 -8.7100E-01  1.5198E+00  2.7525E+00  5.4357E+00
            -5.2497E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2106.76927412398        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.4719E-01  1.2414E+00  5.0644E-01  8.6599E-01  8.1732E-01  9.5044E-01  1.0282E+00  2.3591E-01  9.3537E-01  8.0298E-01
             9.6531E-01
 PARAMETER:  4.5742E-02  3.1620E-01 -5.8034E-01 -4.3885E-02 -1.0172E-01  4.9166E-02  1.2777E-01 -1.3443E+00  3.3184E-02 -1.1942E-01
             6.4693E-02
 GRADIENT:  -3.6304E+00  2.9605E+01  1.8481E+00  2.0228E+01 -2.2548E+01  1.8333E+00  1.4656E+00  1.2382E+00 -6.9797E+00  1.2104E+01
             1.5204E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2108.55377916058        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.4847E-01  1.2738E+00  4.8072E-01  8.2382E-01  8.3275E-01  9.4660E-01  9.9127E-01  1.2690E-01  1.0044E+00  7.2102E-01
             9.5031E-01
 PARAMETER:  4.7090E-02  3.4200E-01 -6.3246E-01 -9.3807E-02 -8.3026E-02  4.5124E-02  9.1228E-02 -1.9643E+00  1.0442E-01 -2.2708E-01
             4.9036E-02
 GRADIENT:  -3.9691E-01 -1.9983E+00 -2.2550E+00 -6.9557E-01  2.0121E+00 -2.5083E-03 -5.3632E-01  3.4990E-01 -2.5889E-02  2.5089E-02
             3.1408E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2108.76142691878        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.4845E-01  1.2272E+00  4.9254E-01  8.5228E-01  8.1349E-01  9.4642E-01  1.0259E+00  3.7111E-02  9.8368E-01  7.0690E-01
             9.4729E-01
 PARAMETER:  4.7070E-02  3.0476E-01 -6.0819E-01 -5.9844E-02 -1.0642E-01  4.4934E-02  1.2554E-01 -3.1938E+00  8.3542E-02 -2.4687E-01
             4.5849E-02
 GRADIENT:   6.3716E-03  1.0327E-01  5.5974E-02  2.7418E-01 -1.2104E-01 -3.3326E-03  1.0484E-01  3.1323E-02  1.4901E-01  1.2078E-02
            -1.9036E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2108.77596080160        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  9.4940E-01  1.2286E+00  4.9159E-01  8.5095E-01  8.1408E-01  9.4665E-01  1.0243E+00  1.0000E-02  9.8420E-01  7.0756E-01
             9.4724E-01
 PARAMETER:  4.8075E-02  3.0591E-01 -6.1011E-01 -6.1397E-02 -1.0570E-01  4.5175E-02  1.2404E-01 -4.6007E+00  8.4079E-02 -2.4594E-01
             4.5800E-02
 GRADIENT:   2.4628E+00 -8.3349E-01 -4.3981E-01 -5.9622E-02  6.2018E-01  8.7517E-02  6.6586E-02  0.0000E+00  9.0825E-02  6.9302E-02
             1.0969E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2108.77596080160        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1077
 NPARAMETR:  9.4940E-01  1.2286E+00  4.9159E-01  8.5095E-01  8.1408E-01  9.4665E-01  1.0243E+00  1.0000E-02  9.8420E-01  7.0756E-01
             9.4724E-01
 PARAMETER:  4.8075E-02  3.0591E-01 -6.1011E-01 -6.1397E-02 -1.0570E-01  4.5175E-02  1.2404E-01 -4.6007E+00  8.4079E-02 -2.4594E-01
             4.5800E-02
 GRADIENT:   2.4628E+00 -8.3349E-01 -4.3981E-01 -5.9622E-02  6.2018E-01  8.7517E-02  6.6586E-02  0.0000E+00  9.0825E-02  6.9302E-02
             1.0969E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1077
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.2333E-04 -8.1869E-03 -3.3391E-04  6.2333E-03 -1.4118E-02
 SE:             2.9869E-02  2.4573E-02  1.4790E-04  2.5401E-02  2.0517E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9671E-01  7.3901E-01  2.3966E-02  8.0615E-01  4.9139E-01

 ETASHRINKSD(%)  1.0000E-10  1.7679E+01  9.9505E+01  1.4902E+01  3.1264E+01
 ETASHRINKVR(%)  1.0000E-10  3.2232E+01  9.9998E+01  2.7583E+01  5.2754E+01
 EBVSHRINKSD(%)  3.3917E-01  1.7739E+01  9.9449E+01  1.4975E+01  3.1841E+01
 EBVSHRINKVR(%)  6.7719E-01  3.2331E+01  9.9997E+01  2.7707E+01  5.3544E+01
 RELATIVEINF(%)  9.9277E+01  6.3098E+00  7.1676E-04  7.8816E+00  5.4350E+00
 EPSSHRINKSD(%)  3.4228E+01
 EPSSHRINKVR(%)  5.6741E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2108.7759608016017     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1189.8374275969290     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.96
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2108.776       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.49E-01  1.23E+00  4.92E-01  8.51E-01  8.14E-01  9.47E-01  1.02E+00  1.00E-02  9.84E-01  7.08E-01  9.47E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.010
Stop Time:
Fri Oct  1 10:54:09 CDT 2021
