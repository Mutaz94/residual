Sat Oct  2 01:11:34 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat60.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m60.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -258.525567303434        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2701E+02 -1.6139E-01  1.4499E+02 -1.0746E+02  1.1222E+02  3.0535E+01 -5.5269E+01 -1.5295E+02 -1.1337E+02 -9.1495E+01
            -2.3095E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1245.95765137362        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0026E+00  1.0472E+00  9.7588E-01  1.1020E+00  1.0438E+00  8.4123E-01  9.1936E-01  1.0701E+00  1.0191E+00  6.9604E-01
             3.0564E+00
 PARAMETER:  1.0264E-01  1.4608E-01  7.5589E-02  1.9708E-01  1.4287E-01 -7.2889E-02  1.5926E-02  1.6777E-01  1.1892E-01 -2.6235E-01
             1.2172E+00
 GRADIENT:   6.0746E+01 -1.0902E+01 -8.5018E+00 -1.9628E+00  3.4009E+01 -4.3701E+01 -1.4934E-01 -6.6048E+00 -1.0613E+01  4.4165E+00
            -1.3362E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1266.34991542321        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.8729E-01  8.2752E-01  1.2113E+00  1.2396E+00  1.0250E+00  9.8996E-01  4.1650E-01  3.9625E-01  9.5788E-01  1.9470E-01
             3.8817E+00
 PARAMETER:  8.7212E-02 -8.9327E-02  2.9173E-01  3.1478E-01  1.2470E-01  8.9909E-02 -7.7587E-01 -8.2572E-01  5.6971E-02 -1.5363E+00
             1.4563E+00
 GRADIENT:   5.1706E+00 -2.9249E+00  8.2840E+00 -1.6774E+00 -1.1823E+01  3.3727E+01 -2.1817E-01  7.6832E-01  7.4782E+00  3.2255E-01
             2.1592E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1268.36879698635        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.8811E-01  1.0319E+00  1.0026E+00  1.1113E+00  1.0260E+00  8.8224E-01  7.9549E-01  3.7459E-01  9.1110E-01  1.8680E-01
             3.8209E+00
 PARAMETER:  8.8037E-02  1.3139E-01  1.0257E-01  2.0555E-01  1.2569E-01 -2.5291E-02 -1.2880E-01 -8.8191E-01  6.9027E-03 -1.5777E+00
             1.4405E+00
 GRADIENT:  -2.6932E+00 -2.1092E+00 -1.9527E+00 -1.7959E+00  1.2700E+00 -1.6530E+00  1.0503E+00  6.8339E-01  7.9207E-01  4.1331E-01
             3.1736E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1268.91726640169        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  9.8835E-01  1.0321E+00  1.0851E+00  1.1150E+00  1.0687E+00  8.8451E-01  6.9406E-01  7.7649E-02  9.2575E-01  1.5823E-01
             3.8269E+00
 PARAMETER:  8.8280E-02  1.3160E-01  1.8171E-01  2.0889E-01  1.6643E-01 -2.2722E-02 -2.6520E-01 -2.4556E+00  2.2854E-02 -1.7437E+00
             1.4421E+00
 GRADIENT:   2.3943E-01  1.4463E+00  1.4342E+00  4.3654E-01 -2.6110E+00 -1.5456E-01  8.2798E-02  2.9016E-02 -3.1279E-02  2.4326E-01
             2.5249E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1269.59401728410        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      457
 NPARAMETR:  9.9759E-01  8.7418E-01  1.1524E+00  1.2280E+00  1.0408E+00  8.9040E-01  7.5055E-01  1.0000E-02  8.5686E-01  4.9808E-02
             3.8883E+00
 PARAMETER:  9.7586E-02 -3.4468E-02  2.4184E-01  3.0543E-01  1.3994E-01 -1.6085E-02 -1.8694E-01 -7.6417E+00 -5.4479E-02 -2.8996E+00
             1.4580E+00
 GRADIENT:  -2.3818E+00  1.6658E+00  3.5622E-01  2.3924E-01 -5.6747E-01  3.2437E-01 -5.0390E-02  0.0000E+00 -1.9410E-01  2.1791E-02
             1.7225E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1269.90203259552        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      632
 NPARAMETR:  9.9672E-01  5.8720E-01  1.1126E+00  1.4047E+00  9.0208E-01  8.9029E-01  9.8461E-01  1.0000E-02  7.7944E-01  2.1811E-02
             3.8800E+00
 PARAMETER:  9.6710E-02 -4.3239E-01  2.0674E-01  4.3984E-01 -3.0502E-03 -1.6206E-02  8.4489E-02 -1.2660E+01 -1.4918E-01 -3.7253E+00
             1.4558E+00
 GRADIENT:   4.3798E-01  4.3607E+00  2.6996E+00  1.0312E+01 -5.6149E+00 -2.6759E-01 -1.0362E-01  0.0000E+00 -3.1674E-01  4.2349E-03
            -1.1769E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1270.04249898302        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      807
 NPARAMETR:  9.9472E-01  4.3441E-01  1.1536E+00  1.4920E+00  8.8124E-01  8.8754E-01  1.1027E+00  1.0000E-02  7.4169E-01  1.3196E-02
             3.8762E+00
 PARAMETER:  9.4706E-02 -7.3377E-01  2.4285E-01  5.0010E-01 -2.6427E-02 -1.9298E-02  1.9778E-01 -1.7239E+01 -1.9882E-01 -4.2279E+00
             1.4548E+00
 GRADIENT:   3.4167E+00  4.0535E-01 -3.5933E-01  1.6464E+00  5.7117E-01 -6.9780E-01 -1.1394E-01  0.0000E+00 -2.9061E-01  1.5032E-03
            -2.3597E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1270.08460382359        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      984
 NPARAMETR:  9.9095E-01  3.0733E-01  1.1220E+00  1.5607E+00  8.2622E-01  8.8954E-01  1.3930E+00  1.0000E-02  7.1848E-01  1.0000E-02
             3.8693E+00
 PARAMETER:  9.0909E-02 -1.0798E+00  2.1514E-01  5.4514E-01 -9.0898E-02 -1.7053E-02  4.3147E-01 -2.2617E+01 -2.3061E-01 -4.8416E+00
             1.4531E+00
 GRADIENT:  -4.1841E-01  1.8817E-01  2.5928E-01  4.2395E-01 -6.3598E-01  1.0302E-01 -4.4796E-02  0.0000E+00 -2.5280E-02  0.0000E+00
            -1.8910E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1270.08604257867        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1159
 NPARAMETR:  9.9048E-01  2.7581E-01  1.1276E+00  1.5797E+00  8.2035E-01  8.8900E-01  1.5222E+00  1.0000E-02  7.1055E-01  1.0000E-02
             3.8693E+00
 PARAMETER:  9.0434E-02 -1.1881E+00  2.2010E-01  5.5727E-01 -9.8021E-02 -1.7658E-02  5.2015E-01 -2.4564E+01 -2.4172E-01 -5.0746E+00
             1.4531E+00
 GRADIENT:  -1.3319E-01  2.4861E-01  2.8500E-01  1.1739E+00 -6.5097E-01 -2.4165E-04  4.4905E-03  0.0000E+00 -1.9483E-02  0.0000E+00
             1.3364E-02

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1270.08604847889        NO. OF FUNC. EVALS.:  65
 CUMULATIVE NO. OF FUNC. EVALS.:     1224
 NPARAMETR:  9.9050E-01  2.7257E-01  1.1274E+00  1.5801E+00  8.2097E-01  8.8898E-01  1.5250E+00  1.0000E-02  7.1016E-01  1.0000E-02
             3.8690E+00
 PARAMETER:  9.0395E-02 -1.1951E+00  2.2064E-01  5.5799E-01 -9.8267E-02 -1.7688E-02  5.2535E-01 -2.4692E+01 -2.4238E-01 -5.0894E+00
             1.4531E+00
 GRADIENT:  -2.0282E-01  1.2030E-01  2.7624E-01  1.7400E+00 -4.5544E-01 -4.9898E-03  4.2923E-03  0.0000E+00 -1.8686E-02  0.0000E+00
             8.3168E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1224
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.6491E-04 -6.4382E-03  1.0167E-04 -1.4791E-02 -2.1653E-05
 SE:             2.8197E-02  5.8904E-03  1.0205E-04  2.2662E-02  1.5651E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8402E-01  2.7439E-01  3.1912E-01  5.1398E-01  8.8996E-01

 ETASHRINKSD(%)  5.5380E+00  8.0267E+01  9.9658E+01  2.4078E+01  9.9476E+01
 ETASHRINKVR(%)  1.0769E+01  9.6106E+01  9.9999E+01  4.2358E+01  9.9997E+01
 EBVSHRINKSD(%)  5.2656E+00  8.0236E+01  9.9608E+01  2.4014E+01  9.9437E+01
 EBVSHRINKVR(%)  1.0254E+01  9.6094E+01  9.9998E+01  4.2261E+01  9.9997E+01
 RELATIVEINF(%)  7.1783E+01  3.5551E-02  6.8692E-05  7.6400E-01  8.0930E-05
 EPSSHRINKSD(%)  1.9097E+01
 EPSSHRINKVR(%)  3.4547E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1270.0860484788898     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -534.93522191515160     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1270.086       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.90E-01  2.74E-01  1.13E+00  1.58E+00  8.20E-01  8.89E-01  1.53E+00  1.00E-02  7.10E-01  1.00E-02  3.87E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.935
Stop Time:
Sat Oct  2 01:11:49 CDT 2021