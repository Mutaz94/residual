Sat Oct  2 04:20:52 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat25.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m25.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1666.97509678088        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2613E+02 -2.2981E+01  6.3058E+00 -3.7994E+01 -3.0350E+01  6.0439E+01  7.8338E-01  7.7982E+00  4.4089E+00  1.2517E+01
            -2.0591E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1673.59676420604        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.9088E-01  1.0482E+00  1.0459E+00  1.0410E+00  1.0584E+00  9.1850E-01  1.0062E+00  9.7007E-01  9.8846E-01  9.6684E-01
             1.0666E+00
 PARAMETER:  9.0834E-02  1.4703E-01  1.4488E-01  1.4015E-01  1.5678E-01  1.4991E-02  1.0615E-01  6.9614E-02  8.8391E-02  6.6278E-02
             1.6449E-01
 GRADIENT:   1.3895E+00 -3.7243E-01 -3.8761E+00  1.8375E+00 -5.2476E+00 -3.9638E+00 -1.3356E+00  2.7807E+00  8.4408E-02 -1.6461E-01
             3.5675E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1673.87342881213        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      355
 NPARAMETR:  9.9082E-01  1.0622E+00  1.0940E+00  1.0343E+00  1.0998E+00  9.2743E-01  1.0214E+00  9.4257E-01  9.9120E-01  1.0176E+00
             1.0587E+00
 PARAMETER:  9.0773E-02  1.6038E-01  1.8989E-01  1.3368E-01  1.9509E-01  2.4666E-02  1.2119E-01  4.0856E-02  9.1163E-02  1.1748E-01
             1.5706E-01
 GRADIENT:   2.2351E+00  4.2892E-01 -7.9644E-01  1.0299E+00  9.7322E-01 -1.6360E-01  2.9388E-01 -3.3963E-01 -4.4523E-01  1.3162E-01
            -3.0306E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1673.91766182738        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  9.8803E-01  9.4127E-01  1.2631E+00  1.1203E+00  1.1163E+00  9.2617E-01  1.0508E+00  1.0940E+00  9.5331E-01  1.0499E+00
             1.0598E+00
 PARAMETER:  8.7958E-02  3.9479E-02  3.3359E-01  2.1357E-01  2.1003E-01  2.3300E-02  1.4959E-01  1.8985E-01  5.2180E-02  1.4871E-01
             1.5805E-01
 GRADIENT:  -9.4048E-01  5.2426E+00  1.9521E+00  5.2267E+00 -3.7054E+00 -7.6595E-02  1.0652E-01 -8.5879E-02 -2.9652E-01  1.0698E-02
            -1.0700E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1674.00072745800        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      713
 NPARAMETR:  9.8579E-01  7.6902E-01  1.4216E+00  1.2336E+00  1.1040E+00  9.2643E-01  1.1425E+00  1.1871E+00  8.9004E-01  1.0645E+00
             1.0600E+00
 PARAMETER:  8.5686E-02 -1.6264E-01  4.5176E-01  3.0994E-01  1.9891E-01  2.3580E-02  2.3320E-01  2.7153E-01 -1.6488E-02  1.6249E-01
             1.5823E-01
 GRADIENT:  -1.5788E+00  6.3787E+00  5.1156E+00  4.4008E+00 -9.3444E+00  8.6507E-01 -1.3535E-01 -3.4624E-01 -2.0222E+00  2.5083E-01
            -9.2527E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1674.28834788006        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      890
 NPARAMETR:  9.8224E-01  5.0492E-01  1.7199E+00  1.4134E+00  1.1083E+00  9.2465E-01  1.2815E+00  1.4089E+00  8.1692E-01  1.1018E+00
             1.0607E+00
 PARAMETER:  8.2080E-02 -5.8336E-01  6.4225E-01  4.4597E-01  2.0280E-01  2.1655E-02  3.4802E-01  4.4277E-01 -1.0222E-01  1.9697E-01
             1.5892E-01
 GRADIENT:  -1.9608E+00  8.4261E+00  7.4148E+00  1.4935E+01 -1.4862E+01  1.6296E+00 -2.5873E-01 -5.5024E-01 -2.8151E+00  1.0783E+00
            -7.5671E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1674.48904510923        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1067
 NPARAMETR:  9.8093E-01  3.6913E-01  1.9194E+00  1.5147E+00  1.1302E+00  9.1840E-01  1.3488E+00  1.5947E+00  7.9428E-01  1.1294E+00
             1.0599E+00
 PARAMETER:  8.0743E-02 -8.9662E-01  7.5200E-01  5.1520E-01  2.2242E-01  1.4883E-02  3.9918E-01  5.6671E-01 -1.3031E-01  2.2170E-01
             1.5815E-01
 GRADIENT:  -8.5858E-01  9.2210E+00  3.6288E+00  3.6147E+01 -1.0617E+01 -1.6182E-01  4.0887E-02  3.0322E-01  1.4035E+00  1.4979E+00
            -2.4953E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1675.26557835929        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1247
 NPARAMETR:  9.7880E-01  1.7931E-01  2.0610E+00  1.6397E+00  1.1346E+00  9.1079E-01  1.6123E+00  1.7478E+00  7.4232E-01  1.1323E+00
             1.0569E+00
 PARAMETER:  7.8569E-02 -1.6186E+00  8.2319E-01  5.9451E-01  2.2625E-01  6.5521E-03  5.7769E-01  6.5833E-01 -1.9797E-01  2.2422E-01
             1.5533E-01
 GRADIENT:   3.7869E-01  4.5154E+00 -5.8604E+00  3.9967E+01  5.2901E+00 -2.1953E+00 -7.2091E-02  6.1302E-01 -2.3695E-01  1.2268E-01
            -8.1618E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1676.44846730813        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  9.7723E-01  4.0277E-02  2.5415E+00  1.7240E+00  1.1919E+00  9.1330E-01  2.2424E+00  2.1117E+00  6.9522E-01  1.1615E+00
             1.0615E+00
 PARAMETER:  7.6972E-02 -3.1120E+00  1.0328E+00  6.4465E-01  2.7555E-01  9.3111E-03  9.0754E-01  8.4749E-01 -2.6352E-01  2.4974E-01
             1.5972E-01
 GRADIENT:  -2.7462E-02  6.8655E-01 -2.7518E-01  8.2820E-01  5.9766E-01 -3.2481E-02 -1.3987E-02 -2.0805E-01 -2.2013E+00 -4.0080E-01
            -2.0398E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1676.46424932189        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1559
 NPARAMETR:  9.7738E-01  3.3180E-02  2.6040E+00  1.7326E+00  1.2013E+00  9.1338E-01  2.3365E+00  2.1598E+00  6.9498E-01  1.1668E+00
             1.0624E+00
 PARAMETER:  7.6957E-02 -3.3016E+00  1.0584E+00  6.4882E-01  2.8304E-01  9.3737E-03  9.4385E-01  8.6949E-01 -2.6654E-01  2.5458E-01
             1.6032E-01
 GRADIENT:  -8.2078E-01  9.2340E+02  5.7732E+03 -9.3837E+03 -2.1516E+04 -4.1528E-02 -1.1971E-02 -2.4056E-01 -1.8730E+00  2.3912E+04
            -3.8026E+04

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1559
 NO. OF SIG. DIGITS UNREPORTABLE

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.6805E-04 -2.7780E-03 -4.1112E-02 -1.6892E-02 -5.8656E-02
 SE:             2.9788E-02  1.3500E-03  1.8748E-02  2.9236E-02  1.9130E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9014E-01  3.9621E-02  2.8318E-02  5.6342E-01  2.1680E-03

 ETASHRINKSD(%)  2.0577E-01  9.5477E+01  3.7191E+01  2.0554E+00  3.5913E+01
 ETASHRINKVR(%)  4.1112E-01  9.9795E+01  6.0550E+01  4.0685E+00  5.8928E+01
 EBVSHRINKSD(%)  5.6713E-01  9.5773E+01  4.1990E+01  3.0407E+00  3.1776E+01
 EBVSHRINKVR(%)  1.1310E+00  9.9821E+01  6.6348E+01  5.9890E+00  5.3455E+01
 RELATIVEINF(%)  9.6539E+01  8.7687E-03  1.4020E+01  5.0501E+00  1.3674E+01
 EPSSHRINKSD(%)  4.4380E+01
 EPSSHRINKVR(%)  6.9065E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1676.4642493218882     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -941.31342275815007     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1676.464       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.77E-01  3.33E-02  2.61E+00  1.73E+00  1.20E+00  9.13E-01  2.33E+00  2.16E+00  6.93E-01  1.17E+00  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.304
Stop Time:
Sat Oct  2 04:21:14 CDT 2021
