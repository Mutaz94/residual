Sat Oct  2 04:29:27 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat47.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1652.70267468848        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3026E+02 -3.1048E+01  7.2689E+00 -5.2916E+01  2.9967E+01  6.2582E+01 -2.2022E+00  1.5785E-01 -1.9579E+01 -1.2534E+01
             3.0578E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1659.65936145131        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8403E-01  9.8021E-01  9.5653E-01  1.0755E+00  9.5431E-01  8.9079E-01  1.0202E+00  1.0015E+00  1.1108E+00  1.0750E+00
             8.6746E-01
 PARAMETER:  8.3899E-02  8.0012E-02  5.5558E-02  1.7281E-01  5.3236E-02 -1.5649E-02  1.2003E-01  1.0153E-01  2.0510E-01  1.7232E-01
            -4.2189E-02
 GRADIENT:  -2.2795E+00 -9.2247E+00 -7.3164E+00 -9.0696E+00  4.0822E+00 -2.0385E+01  2.8150E+00  4.6476E+00  9.6284E+00  2.4254E+00
            -2.1732E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1660.44061056198        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.8457E-01  8.1653E-01  9.9588E-01  1.2063E+00  8.9840E-01  9.0858E-01  1.0171E+00  8.5508E-01  1.0594E+00  1.1038E+00
             8.7163E-01
 PARAMETER:  8.4446E-02 -1.0270E-01  9.5871E-02  2.8756E-01 -7.1384E-03  4.1236E-03  1.1691E-01 -5.6565E-02  1.5772E-01  1.9872E-01
            -3.7395E-02
 GRADIENT:   2.2054E+00  1.2343E+01 -1.1420E+00  2.7562E+01 -7.3282E+00 -1.1927E+01  7.3679E-01  5.9297E-01  1.1993E+01  4.5955E+00
            -2.0077E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1661.68123532939        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.8492E-01  8.1515E-01  9.6106E-01  1.1921E+00  8.7981E-01  9.3565E-01  1.1375E+00  7.8373E-01  9.9519E-01  1.0477E+00
             9.1440E-01
 PARAMETER:  8.4806E-02 -1.0438E-01  6.0285E-02  2.7572E-01 -2.8055E-02  3.3487E-02  2.2887E-01 -1.4369E-01  9.5178E-02  1.4660E-01
             1.0510E-02
 GRADIENT:   1.4462E+00  6.4646E+00  1.6016E+00  7.5981E+00 -3.0771E+00  1.8190E-02  8.7078E-02 -5.8925E-01  2.8292E-01  1.7459E-01
             1.0955E-03

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1662.04543791354        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.8084E-01  6.0403E-01  1.1593E+00  1.3294E+00  8.9940E-01  9.3773E-01  1.0304E+00  9.6979E-01  9.3948E-01  1.0976E+00
             9.2199E-01
 PARAMETER:  8.0658E-02 -4.0412E-01  2.4778E-01  3.8473E-01 -6.0294E-03  3.5702E-02  1.2996E-01  6.9327E-02  3.7575E-02  1.9312E-01
             1.8781E-02
 GRADIENT:  -1.3271E-02  6.4295E+00  9.1401E+00  4.4801E+00 -8.1991E+00  1.9202E+00 -4.5003E-01 -1.4970E+00 -2.6178E+00 -4.6679E-01
             2.0043E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1662.32357152774        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  9.7836E-01  4.3318E-01  1.1554E+00  1.4360E+00  8.4648E-01  9.3195E-01  1.0079E+00  9.6598E-01  8.9104E-01  1.0719E+00
             9.1500E-01
 PARAMETER:  7.8123E-02 -7.3661E-01  2.4445E-01  4.6187E-01 -6.6668E-02  2.9528E-02  1.0792E-01  6.5392E-02 -1.5366E-02  1.6946E-01
             1.1166E-02
 GRADIENT:  -5.5652E-01  5.1894E+00  4.4139E+00  1.2581E+01 -5.2129E+00 -1.2108E-01 -7.5568E-01 -1.0654E+00 -1.9543E+00 -8.1743E-01
            -4.9054E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1662.52581877100        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1057             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7739E-01  3.4022E-01  1.1465E+00  1.4801E+00  8.2152E-01  9.3110E-01  1.5764E+00  9.7289E-01  8.6872E-01  1.0624E+00
             9.1427E-01
 PARAMETER:  7.7136E-02 -9.7816E-01  2.3670E-01  4.9214E-01 -9.6597E-02  2.8610E-02  5.5512E-01  7.2514E-02 -4.0731E-02  1.6055E-01
             1.0366E-02
 GRADIENT:   4.6217E+02  5.0650E+01  6.0790E+00  7.5195E+02  1.3132E+01  4.4328E+01  5.6473E+00  7.2188E-01  2.3550E+01  3.3539E+00
             1.3105E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.59119705977        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1215
 NPARAMETR:  9.7744E-01  3.3176E-01  1.1488E+00  1.4886E+00  8.1899E-01  9.3250E-01  1.4091E+00  9.7775E-01  8.5444E-01  1.0531E+00
             9.1432E-01
 PARAMETER:  7.7177E-02 -1.0033E+00  2.3872E-01  4.9783E-01 -9.9684E-02  3.0118E-02  4.4298E-01  7.7501E-02 -5.7311E-02  1.5175E-01
             1.0420E-02
 GRADIENT:   1.5143E+00  1.0219E+00 -1.3485E+00 -3.9966E+00  2.4958E+00  3.1726E-01 -1.3139E-01 -1.3869E-01 -6.5083E-01 -2.7698E-01
            -5.6318E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1662.60678285540        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1402
 NPARAMETR:  9.7741E-01  3.2671E-01  1.1500E+00  1.4872E+00  8.1691E-01  9.3201E-01  1.4603E+00  9.8105E-01  8.5367E-01  1.0525E+00
             9.1408E-01
 PARAMETER:  7.7154E-02 -1.0187E+00  2.3979E-01  4.9688E-01 -1.0222E-01  2.9588E-02  4.7865E-01  8.0869E-02 -5.8211E-02  1.5119E-01
             1.0167E-02
 GRADIENT:   1.7681E+00  8.6114E-02  7.0125E-02 -1.2572E+01  8.3919E-01  1.2973E-01 -6.6723E-04  5.7131E-03  1.1643E-02  7.8705E-02
             1.1410E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1662.60809976281        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1584
 NPARAMETR:  9.7739E-01  3.2512E-01  1.1492E+00  1.4881E+00  8.1608E-01  9.3200E-01  1.4759E+00  9.8111E-01  8.5363E-01  1.0513E+00
             9.1408E-01
 PARAMETER:  7.7126E-02 -1.0235E+00  2.3904E-01  4.9749E-01 -1.0324E-01  2.9573E-02  4.8924E-01  8.0926E-02 -5.8260E-02  1.5004E-01
             1.0159E-02
 GRADIENT:   1.7642E+00  7.1106E-02 -4.1474E-02 -1.2566E+01  9.3102E-01  1.2459E-01  3.0721E-02  3.9386E-02  2.8833E-01  4.4461E-02
             3.1461E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1662.60949782146        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1769             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7736E-01  3.2478E-01  1.1484E+00  1.4890E+00  8.1497E-01  9.3199E-01  1.4753E+00  9.7969E-01  8.5297E-01  1.0504E+00
             9.1401E-01
 PARAMETER:  7.7098E-02 -1.0246E+00  2.3833E-01  4.9808E-01 -1.0460E-01  2.9562E-02  4.8886E-01  7.9479E-02 -5.9027E-02  1.4916E-01
             1.0089E-02
 GRADIENT:   4.6271E+02  4.9058E+01  8.8117E+00  7.6915E+02  1.0312E+01  4.4756E+01  3.6080E+00  3.1330E-01  1.8107E+01  1.8990E+00
             7.6892E-01

0ITERATION NO.:   52    OBJECTIVE VALUE:  -1662.60949782146        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1826
 NPARAMETR:  9.7736E-01  3.2478E-01  1.1484E+00  1.4890E+00  8.1497E-01  9.3199E-01  1.4753E+00  9.7969E-01  8.5297E-01  1.0504E+00
             9.1401E-01
 PARAMETER:  7.7098E-02 -1.0246E+00  2.3833E-01  4.9808E-01 -1.0460E-01  2.9562E-02  4.8886E-01  7.9479E-02 -5.9027E-02  1.4916E-01
             1.0089E-02
 GRADIENT:  -5.5627E-03  1.5878E-01  5.3722E-01 -1.6388E-02  2.6216E-02 -6.4533E-04 -8.0533E-03 -2.4037E-02  6.1525E-04  1.8153E-02
            -3.0700E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1826
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.0231E-04 -6.7349E-03 -3.1812E-02 -3.2457E-03 -3.3231E-02
 SE:             2.9855E-02  7.3888E-03  1.6877E-02  2.8638E-02  2.2231E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9192E-01  3.6203E-01  5.9436E-02  9.0976E-01  1.3496E-01

 ETASHRINKSD(%)  1.0000E-10  7.5247E+01  4.3461E+01  4.0588E+00  2.5524E+01
 ETASHRINKVR(%)  1.0000E-10  9.3873E+01  6.8033E+01  7.9529E+00  4.4533E+01
 EBVSHRINKSD(%)  3.9584E-01  7.5716E+01  4.6930E+01  4.2155E+00  2.2391E+01
 EBVSHRINKVR(%)  7.9011E-01  9.4103E+01  7.1836E+01  8.2532E+00  3.9768E+01
 RELATIVEINF(%)  9.5244E+01  2.3097E-01  5.9535E+00  4.7332E+00  5.7964E+00
 EPSSHRINKSD(%)  4.6102E+01
 EPSSHRINKVR(%)  7.0950E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1662.6094978214553     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -927.45867125771713     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.05
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1662.609       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.77E-01  3.25E-01  1.15E+00  1.49E+00  8.15E-01  9.32E-01  1.48E+00  9.80E-01  8.53E-01  1.05E+00  9.14E-01
 


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
 #CPUT: Total CPU Time in Seconds,       23.084
Stop Time:
Sat Oct  2 04:29:51 CDT 2021
