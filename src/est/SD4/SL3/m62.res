Sat Oct  2 03:24:28 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat62.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m62.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1646.66093321596        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2404E+02  3.7943E+01 -2.8609E+01  1.1253E+02  1.1807E+02  7.9679E+01 -2.2957E+00 -1.6606E+00 -1.9076E+01 -2.1808E+01
            -3.1239E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1655.09660245997        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0150E+00  9.4108E-01  9.5144E-01  1.0177E+00  8.9312E-01  8.6752E-01  1.0158E+00  1.0143E+00  1.1548E+00  1.0434E+00
             1.1251E+00
 PARAMETER:  1.1490E-01  3.9270E-02  5.0223E-02  1.1754E-01 -1.3038E-02 -4.2113E-02  1.1563E-01  1.1418E-01  2.4390E-01  1.4244E-01
             2.1791E-01
 GRADIENT:  -1.7470E+01 -3.8424E+00 -1.0657E+01  3.8780E+00  9.5812E+00 -1.9249E+01  6.7956E+00  5.7995E+00  1.0802E+01  1.0755E+01
             2.4393E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1656.28814828113        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  1.0147E+00  7.9074E-01  8.5502E-01  1.1162E+00  7.7379E-01  8.7398E-01  9.0499E-01  8.8914E-01  1.1264E+00  9.2888E-01
             1.0863E+00
 PARAMETER:  1.1455E-01 -1.3479E-01 -5.6631E-02  2.0993E-01 -1.5646E-01 -3.4694E-02  1.7265E-04 -1.7505E-02  2.1904E-01  2.6221E-02
             1.8280E-01
 GRADIENT:  -1.8763E+01  6.2777E+00 -1.0801E+01  2.6131E+01 -7.2379E+00 -1.6638E+01  1.2657E+00  5.7189E+00  1.6864E+01  5.6903E+00
             1.0713E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1659.16046383541        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  1.0225E+00  8.3205E-01  6.8257E-01  1.0378E+00  7.1574E-01  9.1319E-01  1.3301E+00  4.2198E-01  9.9238E-01  8.4238E-01
             1.0623E+00
 PARAMETER:  1.2228E-01 -8.3866E-02 -2.8188E-01  1.3706E-01 -2.3444E-01  9.1858E-03  3.8524E-01 -7.6279E-01  9.2349E-02 -7.1525E-02
             1.6043E-01
 GRADIENT:  -7.5771E-01 -1.4177E+01 -1.0960E+01 -2.1848E+01  1.1524E+01  8.6527E-01  3.3428E+00  1.7949E+00  1.0952E+00  7.1878E+00
             2.3345E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1659.88635008966        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  1.0231E+00  8.7022E-01  6.4620E-01  1.0243E+00  7.0147E-01  9.0697E-01  1.2593E+00  2.5982E-01  1.0057E+00  7.9830E-01
             1.0650E+00
 PARAMETER:  1.2288E-01 -3.9008E-02 -3.3665E-01  1.2405E-01 -2.5457E-01  2.3561E-03  3.3052E-01 -1.2478E+00  1.0570E-01 -1.2527E-01
             1.6297E-01
 GRADIENT:  -9.0034E-01  8.5880E-01  1.7508E+00 -3.7276E+00 -3.8980E+00 -2.1044E+00  5.0989E-01  3.8886E-01 -2.2165E-01  5.2318E-01
             1.3822E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1660.06486438368        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  1.0235E+00  8.7090E-01  6.3597E-01  1.0219E+00  6.9903E-01  9.1094E-01  1.2540E+00  7.2441E-02  1.0109E+00  8.0065E-01
             1.0624E+00
 PARAMETER:  1.2322E-01 -3.8225E-02 -3.5260E-01  1.2171E-01 -2.5806E-01  6.7264E-03  3.2635E-01 -2.5250E+00  1.1087E-01 -1.2233E-01
             1.6057E-01
 GRADIENT:  -1.7515E-01 -2.1803E+00 -8.4758E-01 -2.1077E+00  2.0072E+00 -4.1858E-01  9.8503E-03  2.8825E-02  5.7372E-01 -2.7979E-02
             3.3338E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1660.08288693527        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  1.0236E+00  8.7220E-01  6.3343E-01  1.0223E+00  6.9713E-01  9.1200E-01  1.2539E+00  1.5153E-02  1.0088E+00  7.9987E-01
             1.0618E+00
 PARAMETER:  1.2331E-01 -3.6734E-02 -3.5661E-01  1.2208E-01 -2.6078E-01  7.8896E-03  3.2628E-01 -4.0896E+00  1.0874E-01 -1.2330E-01
             1.6000E-01
 GRADIENT:  -4.4430E-02 -2.1761E-01 -2.9332E-02 -4.6784E-01 -4.8445E-02  1.4344E-02  4.5819E-02  1.3274E-03  1.0091E-01  6.1402E-02
             5.2709E-02

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1660.08321878496        NO. OF FUNC. EVALS.:  60
 CUMULATIVE NO. OF FUNC. EVALS.:     1120
 NPARAMETR:  1.0236E+00  8.7283E-01  6.3382E-01  1.0224E+00  6.9763E-01  9.1196E-01  1.2529E+00  1.0073E-02  1.0086E+00  8.0007E-01
             1.0617E+00
 PARAMETER:  1.2333E-01 -3.6013E-02 -3.5599E-01  1.2211E-01 -2.6007E-01  7.8392E-03  3.2545E-01 -4.4979E+00  1.0859E-01 -1.2306E-01
             1.5989E-01
 GRADIENT:  -1.5100E+00 -2.2400E-02 -1.6357E-02  3.1846E-01  2.4173E-01 -1.3022E-01 -7.6625E-02  2.0086E-04 -5.2050E-02 -5.0112E-02
            -2.9083E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1120
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.6923E-04 -1.3845E-03 -4.5599E-04 -1.7449E-03 -9.5512E-03
 SE:             2.9813E-02  2.0584E-02  1.9657E-04  2.5968E-02  2.2795E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7406E-01  9.4638E-01  2.0354E-02  9.4643E-01  6.7521E-01

 ETASHRINKSD(%)  1.2281E-01  3.1040E+01  9.9341E+01  1.3005E+01  2.3635E+01
 ETASHRINKVR(%)  2.4548E-01  5.2445E+01  9.9996E+01  2.4318E+01  4.1683E+01
 EBVSHRINKSD(%)  5.6925E-01  3.0880E+01  9.9396E+01  1.3031E+01  2.3273E+01
 EBVSHRINKVR(%)  1.1353E+00  5.2224E+01  9.9996E+01  2.4364E+01  4.1129E+01
 RELATIVEINF(%)  9.8618E+01  3.6426E+00  4.3855E-04  8.6296E+00  4.5619E+00
 EPSSHRINKSD(%)  4.4455E+01
 EPSSHRINKVR(%)  6.9147E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1660.0832187849628     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -924.93239222122463     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1660.083       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  8.73E-01  6.34E-01  1.02E+00  6.98E-01  9.12E-01  1.25E+00  1.01E-02  1.01E+00  8.00E-01  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.519
Stop Time:
Sat Oct  2 03:24:43 CDT 2021