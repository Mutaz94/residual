Sat Oct  2 03:11:15 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat21.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m21.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1688.13314688700        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5587E+02 -1.1296E+01 -1.7625E+01  2.3609E+01 -6.7704E+00  5.1200E+01  9.5049E-01  1.2489E+01  2.3087E+01  1.7078E-01
            -5.1266E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1699.37750038581        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0375E+00  1.1634E+00  1.2390E+00  9.6308E-01  1.1776E+00  9.9395E-01  1.0358E+00  8.7815E-01  8.3780E-01  1.0562E+00
             1.2150E+00
 PARAMETER:  1.3678E-01  2.5137E-01  3.1428E-01  6.2379E-02  2.6346E-01  9.3929E-02  1.3520E-01 -2.9934E-02 -7.6970E-02  1.5465E-01
             2.9478E-01
 GRADIENT:  -2.4241E+01  2.1077E+01  9.8522E+00  1.4119E+01 -1.3685E+01 -1.5661E+00 -6.4549E+00  7.9459E-03 -6.8714E+00 -1.6136E+01
             2.2934E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1700.50678549412        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.0339E+00  1.0541E+00  1.4456E+00  1.0341E+00  1.2541E+00  1.0062E+00  1.2397E+00  6.9735E-01  8.3348E-01  1.3416E+00
             1.1909E+00
 PARAMETER:  1.3334E-01  1.5266E-01  4.6855E-01  1.3349E-01  3.2645E-01  1.0614E-01  3.1490E-01 -2.6046E-01 -8.2143E-02  3.9389E-01
             2.7472E-01
 GRADIENT:  -2.6515E+01  1.0822E+01  1.9562E+00  8.2758E+00 -3.2609E+00  3.4965E+00  7.8805E+00 -6.0768E-01  5.1597E+00  9.9091E+00
             1.8445E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1702.13743129386        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      544
 NPARAMETR:  1.0477E+00  1.0677E+00  1.2446E+00  1.0103E+00  1.1727E+00  9.9565E-01  1.1613E+00  7.4037E-01  8.2511E-01  1.1840E+00
             1.1308E+00
 PARAMETER:  1.4663E-01  1.6549E-01  3.1884E-01  1.1022E-01  2.5930E-01  9.5639E-02  2.4950E-01 -2.0061E-01 -9.2242E-02  2.6886E-01
             2.2289E-01
 GRADIENT:   1.6717E+00 -3.4485E-01  3.2236E-01 -1.1490E+00 -7.3341E-01 -8.6484E-01 -6.8416E-01  1.4729E-02 -5.7785E-01 -6.3049E-01
            -8.2974E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1702.15446126757        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      719
 NPARAMETR:  1.0455E+00  9.9175E-01  1.3339E+00  1.0632E+00  1.1749E+00  9.9867E-01  1.2429E+00  8.1792E-01  7.9659E-01  1.2013E+00
             1.1340E+00
 PARAMETER:  1.4453E-01  9.1718E-02  3.8809E-01  1.6130E-01  2.6114E-01  9.8667E-02  3.1748E-01 -1.0100E-01 -1.2742E-01  2.8343E-01
             2.2573E-01
 GRADIENT:  -1.2508E+00  2.6956E+00 -2.0698E-01  3.3797E+00 -3.0918E-01  6.8046E-01  4.6330E-01  2.2831E-02  9.8591E-02  4.2494E-01
             5.0948E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1702.15938007337        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      894
 NPARAMETR:  1.0450E+00  9.3172E-01  1.4029E+00  1.1035E+00  1.1737E+00  9.9767E-01  1.3067E+00  8.8556E-01  7.7379E-01  1.2056E+00
             1.1338E+00
 PARAMETER:  1.4403E-01  2.9275E-02  4.3856E-01  1.9849E-01  2.6020E-01  9.7669E-02  3.6748E-01 -2.1531E-02 -1.5646E-01  2.8700E-01
             2.2556E-01
 GRADIENT:  -9.3266E-01  3.6607E+00  9.9569E-02  4.7864E+00 -9.4831E-01  5.8542E-01  4.5308E-01  5.8237E-02 -1.8250E-01  3.4891E-01
             3.2240E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1702.16768559194        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1070
 NPARAMETR:  1.0446E+00  8.5442E-01  1.4920E+00  1.1535E+00  1.1726E+00  9.9526E-01  1.3888E+00  9.6707E-01  7.5098E-01  1.2088E+00
             1.1330E+00
 PARAMETER:  1.4365E-01 -5.7332E-02  5.0010E-01  2.4278E-01  2.5927E-01  9.5253E-02  4.2846E-01  6.6520E-02 -1.8637E-01  2.8966E-01
             2.2484E-01
 GRADIENT:   1.4683E-01  2.8043E+00  3.8818E-01  3.5577E+00 -1.2867E+00  2.6075E-02  1.1354E-01  1.4040E-01 -4.2520E-01  1.4701E-03
            -1.5750E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1702.17805903658        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1250
 NPARAMETR:  1.0447E+00  8.3656E-01  1.5052E+00  1.1628E+00  1.1727E+00  9.9514E-01  1.4038E+00  9.6395E-01  7.5036E-01  1.2106E+00
             1.1335E+00
 PARAMETER:  1.4375E-01 -7.8455E-02  5.0895E-01  2.5083E-01  2.5930E-01  9.5126E-02  4.3918E-01  6.3285E-02 -1.8721E-01  2.9110E-01
             2.2527E-01
 GRADIENT:   8.2890E-01  4.3531E-01 -8.5010E-04 -2.7521E-01  4.0938E-01  6.1798E-02  4.7541E-02  3.2515E-02 -2.5270E-02 -7.8177E-02
            -6.4167E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1702.17925438113        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1426
 NPARAMETR:  1.0455E+00  8.3507E-01  1.5040E+00  1.1640E+00  1.1718E+00  9.9546E-01  1.4043E+00  9.5963E-01  7.5076E-01  1.2109E+00
             1.1337E+00
 PARAMETER:  1.4450E-01 -8.0243E-02  5.0815E-01  2.5184E-01  2.5853E-01  9.5450E-02  4.3951E-01  5.8789E-02 -1.8667E-01  2.9136E-01
             2.2550E-01
 GRADIENT:   2.5243E+00  5.6926E-01 -8.8754E-02  2.2783E-01  4.6495E-01  1.9187E-01  2.1530E-02  2.1058E-02  1.4886E-02  2.4267E-02
             1.6250E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1702.18002613224        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1602
 NPARAMETR:  1.0454E+00  8.3292E-01  1.5041E+00  1.1649E+00  1.1705E+00  9.9525E-01  1.4064E+00  9.5731E-01  7.5061E-01  1.2104E+00
             1.1337E+00
 PARAMETER:  1.4442E-01 -8.2820E-02  5.0822E-01  2.5264E-01  2.5743E-01  9.5236E-02  4.4105E-01  5.6377E-02 -1.8687E-01  2.9095E-01
             2.2548E-01
 GRADIENT:   2.3973E+00  3.2558E-01  1.3820E-01 -5.6969E-01  7.3194E-02  1.1806E-01  3.1900E-02 -1.5337E-03  5.4764E-02  5.3633E-02
            -6.2510E-03

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1702.18002613224        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1626
 NPARAMETR:  1.0454E+00  8.3292E-01  1.5041E+00  1.1649E+00  1.1705E+00  9.9525E-01  1.4064E+00  9.5731E-01  7.5061E-01  1.2104E+00
             1.1337E+00
 PARAMETER:  1.4442E-01 -8.2820E-02  5.0822E-01  2.5264E-01  2.5743E-01  9.5236E-02  4.4105E-01  5.6377E-02 -1.8687E-01  2.9095E-01
             2.2548E-01
 GRADIENT:  -5.2370E-01  2.0355E-01  1.5535E-01  5.9000E-01  1.1075E-01 -3.5391E-03 -2.7884E-02 -1.7207E-03  3.6914E-02  4.1473E-02
            -4.0786E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1626
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.8149E-04  3.2867E-03 -2.3915E-02 -1.3095E-02 -3.5782E-02
 SE:             2.9791E-02  1.9808E-02  1.0868E-02  2.2123E-02  2.2109E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9514E-01  8.6821E-01  2.7780E-02  5.5390E-01  1.0557E-01

 ETASHRINKSD(%)  1.9656E-01  3.3642E+01  6.3590E+01  2.5885E+01  2.5933E+01
 ETASHRINKVR(%)  3.9274E-01  5.5966E+01  8.6743E+01  4.5070E+01  4.5141E+01
 EBVSHRINKSD(%)  5.4656E-01  3.4361E+01  6.7708E+01  2.5729E+01  2.2473E+01
 EBVSHRINKVR(%)  1.0901E+00  5.6915E+01  8.9572E+01  4.4838E+01  3.9896E+01
 RELATIVEINF(%)  9.7891E+01  1.4501E+00  1.8309E+00  1.9058E+00  1.2978E+01
 EPSSHRINKSD(%)  4.1761E+01
 EPSSHRINKVR(%)  6.6082E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1702.1800261322426     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -967.02919956850440     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.71
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1702.180       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  8.33E-01  1.50E+00  1.16E+00  1.17E+00  9.95E-01  1.41E+00  9.57E-01  7.51E-01  1.21E+00  1.13E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.750
Stop Time:
Sat Oct  2 03:11:38 CDT 2021