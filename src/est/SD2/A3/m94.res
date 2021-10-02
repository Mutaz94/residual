Fri Oct  1 10:50:03 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat94.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -254.872777554575        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6594E+02  4.5846E+01  1.4395E+02 -2.3387E+01  2.3479E+02  3.8588E+01 -8.9689E+01 -1.2518E+02 -1.3788E+02 -1.7267E+02
            -3.1322E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1521.77808977619        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0660E+00  1.0037E+00  9.8860E-01  1.1768E+00  9.3043E-01  8.9944E-01  1.0120E+00  9.2341E-01  1.1360E+00  8.9942E-01
             3.9394E+00
 PARAMETER:  1.6387E-01  1.0366E-01  8.8538E-02  2.6278E-01  2.7887E-02 -5.9801E-03  1.1193E-01  2.0319E-02  2.2756E-01 -6.0103E-03
             1.4710E+00
 GRADIENT:   1.5749E+02  2.2690E+01 -1.3592E+01  6.0540E+01 -3.1764E-01 -1.4800E+01  7.2976E+00  8.5419E+00  1.4026E+01  1.9690E+01
             1.7076E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1545.94872963231        NO. OF FUNC. EVALS.:  82
 CUMULATIVE NO. OF FUNC. EVALS.:      165
 NPARAMETR:  1.0496E+00  8.5534E-01  3.1782E-01  1.1606E+00  4.4378E-01  9.6557E-01  7.1742E-01  1.7373E-01  1.1815E+00  3.8449E-01
             3.7026E+00
 PARAMETER:  1.4842E-01 -5.6260E-02 -1.0463E+00  2.4896E-01 -7.1243E-01  6.4964E-02 -2.3209E-01 -1.6503E+00  2.6682E-01 -8.5583E-01
             1.4090E+00
 GRADIENT:   9.6848E+01  7.2250E+01  8.1026E+00  9.4811E+01 -2.5012E+01  1.5298E+00 -3.4161E+00  1.8683E-01 -1.1835E+01  3.4356E+00
             1.6239E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1561.79827598293        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      284
 NPARAMETR:  9.9976E-01  6.1317E-01  1.7610E-01  1.2057E+00  2.7898E-01  9.7047E-01  5.6425E-01  2.3590E-02  1.4737E+00  4.8785E-01
             3.1332E+00
 PARAMETER:  9.9757E-02 -3.8912E-01 -1.6367E+00  2.8710E-01 -1.1766E+00  7.0020E-02 -4.7226E-01 -3.6469E+00  4.8780E-01 -6.1774E-01
             1.2421E+00
 GRADIENT:  -1.1896E+01  1.0332E+02 -7.7364E+01  1.1925E+02 -3.5151E+01 -8.3498E+00 -4.5466E+00 -1.3062E-02 -2.3762E+01 -1.5068E+01
             8.5191E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1589.58629814192        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      462
 NPARAMETR:  9.7759E-01  5.2745E-01  1.8215E-01  1.1215E+00  2.6452E-01  9.7502E-01  5.4408E-01  1.0000E-02  1.6170E+00  6.0923E-01
             2.5102E+00
 PARAMETER:  7.7340E-02 -5.3970E-01 -1.6029E+00  2.1470E-01 -1.2298E+00  7.4707E-02 -5.0866E-01 -4.8802E+00  5.8054E-01 -3.9556E-01
             1.0204E+00
 GRADIENT:  -3.6975E+01  6.8525E+01 -2.3223E+01  3.5104E+01 -1.2435E+01 -5.8478E+00  7.5344E-01  0.0000E+00  1.5014E+01 -1.9565E+01
            -5.3300E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1603.01009629310        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      637
 NPARAMETR:  9.9483E-01  3.8123E-01  1.5696E-01  1.0420E+00  2.2034E-01  9.8299E-01  4.0895E-02  1.6189E-02  1.5442E+00  7.1453E-01
             2.6239E+00
 PARAMETER:  9.4817E-02 -8.6436E-01 -1.7518E+00  1.4115E-01 -1.4126E+00  8.2840E-02 -3.0968E+00 -4.0234E+00  5.3448E-01 -2.3613E-01
             1.0647E+00
 GRADIENT:  -4.6694E+00 -6.4686E+00 -1.2627E+01 -7.2091E+00  2.1822E+01  1.5563E+00  1.9088E-02 -3.0823E-03  1.3664E+00 -2.9631E-01
             1.3672E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1603.26185025423        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      814
 NPARAMETR:  9.9697E-01  3.8536E-01  1.6071E-01  1.0564E+00  2.2239E-01  9.7875E-01  1.6499E-02  1.5561E-02  1.5295E+00  7.1577E-01
             2.5898E+00
 PARAMETER:  9.6962E-02 -8.5358E-01 -1.7282E+00  1.5483E-01 -1.4033E+00  7.8524E-02 -4.0045E+00 -4.0630E+00  5.2494E-01 -2.3439E-01
             1.0516E+00
 GRADIENT:   3.7485E-01 -8.8061E-01 -1.3957E+00  2.1637E-01  2.7589E+00 -5.1133E-02  2.8579E-03 -2.9959E-03  7.5011E-03 -2.6974E-02
             2.6252E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1603.26455340391        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      991
 NPARAMETR:  9.9685E-01  3.8534E-01  1.6066E-01  1.0560E+00  2.2220E-01  9.7888E-01  1.0000E-02  1.6948E-02  1.5297E+00  7.1578E-01
             2.5894E+00
 PARAMETER:  9.6848E-02 -8.5364E-01 -1.7285E+00  1.5446E-01 -1.4042E+00  7.8659E-02 -5.0577E+00 -3.9776E+00  5.2507E-01 -2.3438E-01
             1.0514E+00
 GRADIENT:   9.7794E-02 -1.5040E-01 -3.5613E-01  3.1872E-02  5.7713E-01 -3.8081E-03  0.0000E+00 -3.5682E-03 -4.5751E-03 -4.4500E-02
             1.1189E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1607.85387048278        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1178
 NPARAMETR:  9.9754E-01  3.7779E-01  1.5518E-01  1.0511E+00  2.1811E-01  9.7946E-01  1.0000E-02  1.0939E+00  1.5448E+00  5.7670E-01
             2.4764E+00
 PARAMETER:  9.7537E-02 -8.7342E-01 -1.7632E+00  1.4979E-01 -1.4228E+00  7.9244E-02 -3.8169E+01  1.8974E-01  5.3487E-01 -4.5044E-01
             1.0068E+00
 GRADIENT:   3.7761E+00 -3.3806E+00  1.8720E-01 -2.5043E-01  5.9602E+00 -1.9575E-01  0.0000E+00  2.2781E+00 -2.9989E+00  8.0867E+00
             3.8883E+00

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1608.45674546852        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1305
 NPARAMETR:  9.9468E-01  3.7797E-01  1.5482E-01  1.0516E+00  2.1827E-01  9.8189E-01  1.0000E-02  1.1869E+00  1.5856E+00  4.8734E-01
             2.4497E+00
 PARAMETER:  9.4665E-02 -8.7295E-01 -1.7655E+00  1.5031E-01 -1.4220E+00  8.1721E-02 -3.8849E+01  2.7131E-01  5.6094E-01 -6.1879E-01
             9.9598E-01
 GRADIENT:  -7.5815E-01  5.1435E-01 -2.2495E-01 -2.9229E-01 -2.1991E+00  9.0242E-02  0.0000E+00 -6.3252E-02  3.4178E-01  2.3514E-01
            -1.5323E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1305
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5357E-03 -2.3226E-04  1.7800E-02 -3.6627E-03  2.1536E-02
 SE:             2.9135E-02  1.6083E-04  2.0837E-02  2.7501E-02  1.7712E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3064E-01  1.4869E-01  3.9295E-01  8.9405E-01  2.2401E-01

 ETASHRINKSD(%)  2.3957E+00  9.9461E+01  3.0195E+01  7.8678E+00  4.0664E+01
 ETASHRINKVR(%)  4.7339E+00  9.9997E+01  5.1273E+01  1.5117E+01  6.4793E+01
 EBVSHRINKSD(%)  2.2303E+00  9.9437E+01  2.9960E+01  6.0764E+00  4.1096E+01
 EBVSHRINKVR(%)  4.4109E+00  9.9997E+01  5.0944E+01  1.1784E+01  6.5303E+01
 RELATIVEINF(%)  9.5464E+01  4.9185E-04  6.9518E+00  6.0287E+01  2.0282E+00
 EPSSHRINKSD(%)  2.9850E+01
 EPSSHRINKVR(%)  5.0790E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1608.4567454685164     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -689.51821226384368     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.93
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1608.457       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.95E-01  3.78E-01  1.55E-01  1.05E+00  2.18E-01  9.82E-01  1.00E-02  1.19E+00  1.59E+00  4.87E-01  2.45E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.976
Stop Time:
Fri Oct  1 10:50:24 CDT 2021