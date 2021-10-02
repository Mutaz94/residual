Sat Oct  2 04:49:45 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat5.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1667.87810626924        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0640E+02 -1.7839E+01 -7.4915E+00 -5.1186E+00 -7.3601E+00  3.8196E+01 -3.9417E+00  1.1874E+01  1.4166E+01  6.4568E+00
             5.6605E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1676.37080761608        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  9.3739E-01  1.0299E+00  1.0156E+00  1.0139E+00  1.0208E+00  8.4135E-01  1.0342E+00  9.4852E-01  9.6055E-01  9.9658E-01
             8.7395E-01
 PARAMETER:  3.5349E-02  1.2949E-01  1.1547E-01  1.1382E-01  1.2063E-01 -7.2751E-02  1.3367E-01  4.7149E-02  5.9755E-02  9.6574E-02
            -3.4729E-02
 GRADIENT:  -1.7004E+01 -1.2601E+01 -2.8955E+00 -1.5259E+01 -9.8484E+00 -5.2134E+01 -8.0478E+00  7.9857E+00  3.2820E+00 -1.7257E+00
             5.4370E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1678.96240068573        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      288
 NPARAMETR:  9.4343E-01  8.9870E-01  1.0606E+00  1.1312E+00  1.0072E+00  9.5802E-01  1.2201E+00  4.9528E-01  7.8332E-01  1.1495E+00
             8.0495E-01
 PARAMETER:  4.1762E-02 -6.8085E-03  1.5886E-01  2.2327E-01  1.0716E-01  5.7114E-02  2.9896E-01 -6.0262E-01 -1.4421E-01  2.3932E-01
            -1.1698E-01
 GRADIENT:   6.5166E+00  2.3651E+01  1.0421E+01  4.5593E+01 -6.9222E-01  4.2428E+00 -1.5206E+01 -2.2670E+00 -2.2293E+01  6.1657E+00
            -3.1901E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1683.66299405658        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      465
 NPARAMETR:  9.4141E-01  8.7181E-01  8.5465E-01  1.1095E+00  8.7457E-01  9.3879E-01  1.4370E+00  3.1509E-01  8.1672E-01  9.1928E-01
             8.4721E-01
 PARAMETER:  3.9626E-02 -3.7187E-02 -5.7060E-02  2.0394E-01 -3.4025E-02  3.6834E-02  4.6253E-01 -1.0549E+00 -1.0246E-01  1.5833E-02
            -6.5811E-02
 GRADIENT:  -3.2699E+00  4.0948E+00 -3.4161E+00  5.7838E+00  3.3678E+00 -4.0912E+00  1.7458E+00  6.4501E-01  3.7227E-01  4.0189E-01
            -3.4499E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1683.94267815878        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      642
 NPARAMETR:  9.4179E-01  7.5395E-01  8.2908E-01  1.1711E+00  8.0953E-01  9.4890E-01  1.5898E+00  1.8193E-01  7.8157E-01  8.8338E-01
             8.5251E-01
 PARAMETER:  4.0030E-02 -1.8243E-01 -8.7436E-02  2.5791E-01 -1.1130E-01  4.7549E-02  5.6361E-01 -1.6041E+00 -1.4645E-01 -2.3996E-02
            -5.9574E-02
 GRADIENT:  -1.1210E+00 -5.2607E-01 -1.0866E+00 -2.1263E-01  5.3342E-01  2.7481E-01  8.9242E-02  1.3627E-01 -1.1255E-02  3.7145E-01
            -7.1745E-03

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1683.95646892556        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  9.4305E-01  7.4204E-01  8.2323E-01  1.1763E+00  8.0159E-01  9.4637E-01  1.6055E+00  1.2119E-01  7.8060E-01  8.7810E-01
             8.5319E-01
 PARAMETER:  4.1368E-02 -1.9836E-01 -9.4518E-02  2.6234E-01 -1.2116E-01  4.4882E-02  5.7344E-01 -2.0104E+00 -1.4769E-01 -2.9991E-02
            -5.8778E-02
 GRADIENT:   2.2224E+00 -1.4222E+00  2.7962E-01 -1.5468E+00  2.8981E-01 -7.7504E-01 -1.7089E-01  2.9827E-02  4.5550E-01 -1.8750E-01
             1.1415E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1684.01633483377        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      998
 NPARAMETR:  9.4363E-01  7.8694E-01  8.0623E-01  1.1487E+00  8.0760E-01  9.4879E-01  1.5441E+00  1.3609E-02  7.8814E-01  8.7101E-01
             8.5283E-01
 PARAMETER:  4.1978E-02 -1.3960E-01 -1.1539E-01  2.3867E-01 -1.1368E-01  4.7429E-02  5.3443E-01 -4.1970E+00 -1.3808E-01 -3.8103E-02
            -5.9197E-02
 GRADIENT:   2.4995E+00  3.7914E-01  2.5669E+00 -2.7391E+00 -2.9141E+00  9.1870E-02  1.1285E-01  5.2841E-04 -1.3656E-01 -3.4984E-01
            -2.9127E-01

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1684.01965399956        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     1131
 NPARAMETR:  9.4336E-01  7.8711E-01  8.0528E-01  1.1489E+00  8.0814E-01  9.4877E-01  1.5445E+00  1.0000E-02  7.8832E-01  8.7253E-01
             8.5312E-01
 PARAMETER:  4.1689E-02 -1.3939E-01 -1.1657E-01  2.3884E-01 -1.1302E-01  4.7406E-02  5.3468E-01 -5.2463E+00 -1.3785E-01 -3.6360E-02
            -5.8854E-02
 GRADIENT:   1.7353E+00 -7.0199E-02  2.1307E-01 -1.1242E+00 -2.9884E-01  7.4393E-02  2.1282E-01  0.0000E+00  3.3782E-02  4.9273E-02
             2.5734E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1131
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0160E-04  9.4423E-03 -5.5262E-04 -1.1635E-02 -5.2678E-03
 SE:             2.9850E-02  2.1669E-02  2.1845E-04  2.4188E-02  2.3515E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9728E-01  6.6302E-01  1.1417E-02  6.3051E-01  8.2275E-01

 ETASHRINKSD(%)  1.9619E-04  2.7406E+01  9.9268E+01  1.8966E+01  2.1221E+01
 ETASHRINKVR(%)  3.9238E-04  4.7301E+01  9.9995E+01  3.4334E+01  3.7939E+01
 EBVSHRINKSD(%)  3.6056E-01  2.7585E+01  9.9340E+01  1.8856E+01  1.9531E+01
 EBVSHRINKVR(%)  7.1983E-01  4.7560E+01  9.9996E+01  3.4157E+01  3.5248E+01
 RELATIVEINF(%)  9.8859E+01  4.8388E+00  5.5215E-04  6.9958E+00  6.0628E+00
 EPSSHRINKSD(%)  4.4485E+01
 EPSSHRINKVR(%)  6.9180E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1684.0196539995604     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -948.86882743582225     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.03
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1684.020       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.43E-01  7.87E-01  8.05E-01  1.15E+00  8.08E-01  9.49E-01  1.54E+00  1.00E-02  7.88E-01  8.73E-01  8.53E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.060
Stop Time:
Sat Oct  2 04:50:02 CDT 2021
