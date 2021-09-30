Thu Sep 30 02:03:42 CDT 2021
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
$DATA ../../../../data/spa1/TD2/dat35.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       30 SEP 2021
Days until program expires : 199
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m35.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2144.04964784496        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4867E+02  1.0110E+01 -4.5251E+01  9.0062E+01  8.1971E+01  6.3039E+01 -2.9155E-01  1.3422E+01  5.7142E+00 -1.5611E+01
            -2.8182E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2153.20999363996        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0567E+00  9.8723E-01  1.2076E+00  1.0427E+00  1.0421E+00  9.3913E-01  1.0320E+00  7.7379E-01  1.0190E+00  1.2007E+00
             9.9090E-01
 PARAMETER:  1.5517E-01  8.7151E-02  2.8867E-01  1.4179E-01  1.4123E-01  3.7194E-02  1.3149E-01 -1.5645E-01  1.1877E-01  2.8293E-01
             9.0861E-02
 GRADIENT:   2.6866E+00  1.9319E+01 -1.2447E+00  2.5799E+01 -2.2245E+00 -1.5692E+01  2.2513E+00  1.2387E+00  4.3358E+00  4.2863E-01
            -1.1204E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2154.04510204668        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.0567E+00  8.8702E-01  1.2587E+00  1.0938E+00  1.0168E+00  9.6024E-01  1.0079E+00  6.9243E-01  9.8104E-01  1.2082E+00
             1.0012E+00
 PARAMETER:  1.5513E-01 -1.9890E-02  3.3008E-01  1.8966E-01  1.1666E-01  5.9428E-02  1.0783E-01 -2.6754E-01  8.0860E-02  2.8911E-01
             1.0123E-01
 GRADIENT:   4.9631E+00  1.0557E+01  7.7622E+00  8.0657E+00 -1.0072E+01 -5.8936E+00 -6.5571E-02 -2.2423E+00  8.1524E-01  8.4898E-01
            -3.7731E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2154.46543637492        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      548
 NPARAMETR:  1.0477E+00  7.0243E-01  1.4459E+00  1.2194E+00  1.0127E+00  9.6111E-01  1.1550E+00  8.7481E-01  9.1487E-01  1.2240E+00
             1.0097E+00
 PARAMETER:  1.4655E-01 -2.5320E-01  4.6875E-01  2.9835E-01  1.1260E-01  6.0330E-02  2.4406E-01 -3.3752E-02  1.1023E-02  3.0210E-01
             1.0964E-01
 GRADIENT:  -1.0549E+01  1.0517E+01  6.8323E+00  1.4495E+01 -1.2226E+01 -4.5839E+00  1.3537E+00 -9.8929E-01  2.9540E+00  3.8309E-01
             3.4132E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2155.05826849215        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      728
 NPARAMETR:  1.0501E+00  4.5870E-01  1.7203E+00  1.3789E+00  1.0299E+00  9.7278E-01  1.0828E+00  1.0965E+00  8.4579E-01  1.2683E+00
             1.0044E+00
 PARAMETER:  1.4891E-01 -6.7935E-01  6.4252E-01  4.2130E-01  1.2943E-01  7.2398E-02  1.7951E-01  1.9215E-01 -6.7487E-02  3.3767E-01
             1.0436E-01
 GRADIENT:   3.0730E+00  5.2886E+00  6.3982E-01  1.4391E+01 -1.6410E+00  1.6362E+00  1.1822E-01 -1.0432E-01 -7.8798E-01 -1.7511E-01
            -1.4537E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2155.21303995886        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      912
 NPARAMETR:  1.0485E+00  3.9618E-01  1.7512E+00  1.4094E+00  1.0218E+00  9.6784E-01  8.6999E-01  1.1219E+00  8.3892E-01  1.2681E+00
             1.0061E+00
 PARAMETER:  1.4734E-01 -8.2588E-01  6.6027E-01  4.4316E-01  1.2157E-01  6.7309E-02 -3.9278E-02  2.1502E-01 -7.5638E-02  3.3753E-01
             1.0611E-01
 GRADIENT:   1.3358E+00  1.2454E+00 -4.0130E-01 -2.6414E+00  3.5901E-01 -2.1822E-03  4.7725E-02 -5.6357E-02 -5.3294E-02  3.3762E-02
            -2.2382E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2155.21940794853        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1090
 NPARAMETR:  1.0468E+00  3.7003E-01  1.7618E+00  1.4258E+00  1.0170E+00  9.6717E-01  6.6533E-01  1.1309E+00  8.4059E-01  1.2667E+00
             1.0064E+00
 PARAMETER:  1.4571E-01 -8.9416E-01  6.6636E-01  4.5472E-01  1.1690E-01  6.6616E-02 -3.0747E-01  2.2304E-01 -7.3650E-02  3.3641E-01
             1.0638E-01
 GRADIENT:  -1.7508E+00  1.1674E+00 -7.6781E-01 -1.6070E+00  3.1041E-01 -1.3780E-01  3.0238E-02 -1.2836E-01  1.5965E+00  1.1369E-01
             1.1729E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2155.22227819343        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1281
 NPARAMETR:  1.0510E+00  3.4844E-01  1.7740E+00  1.4315E+00  1.0143E+00  9.6797E-01  4.5817E-01  1.1430E+00  8.2888E-01  1.2648E+00
             1.0063E+00
 PARAMETER:  1.4972E-01 -9.5430E-01  6.7324E-01  4.5872E-01  1.1422E-01  6.7442E-02 -6.8052E-01  2.3363E-01 -8.7684E-02  3.3494E-01
             1.0630E-01
 GRADIENT:   8.7203E+00 -8.7849E-01 -5.8031E-01 -1.8230E+01  1.0933E+00  3.4410E-01 -1.3257E-02 -3.5420E-02 -2.1730E+00 -3.3851E-03
            -6.1001E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2155.24811307890        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1459
 NPARAMETR:  1.0484E+00  3.4723E-01  1.7774E+00  1.4368E+00  1.0138E+00  9.6739E-01  5.1632E-01  1.1450E+00  8.3241E-01  1.2647E+00
             1.0064E+00
 PARAMETER:  1.4730E-01 -9.5778E-01  6.7517E-01  4.6241E-01  1.1374E-01  6.6846E-02 -5.6103E-01  2.3537E-01 -8.3429E-02  3.3486E-01
             1.0636E-01
 GRADIENT:   2.8496E+00  3.0721E-01 -3.5653E-01 -9.0811E+00 -4.7461E-02  9.8040E-02  4.6184E-03 -1.0345E-01  1.4283E-01  3.1229E-02
             1.9547E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2155.24921243901        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1639
 NPARAMETR:  1.0489E+00  3.4619E-01  1.7805E+00  1.4371E+00  1.0141E+00  9.6748E-01  5.1953E-01  1.1483E+00  8.3213E-01  1.2646E+00
             1.0064E+00
 PARAMETER:  1.4773E-01 -9.6077E-01  6.7688E-01  4.6262E-01  1.1402E-01  6.6938E-02 -5.5483E-01  2.3828E-01 -8.3766E-02  3.3479E-01
             1.0636E-01
 GRADIENT:   3.9239E+00  1.5683E-01 -2.2119E-01 -1.0160E+01 -1.7853E-01  1.3863E-01  7.5304E-03 -5.0766E-02  2.2319E-01 -1.5728E-02
             1.0668E-02

0ITERATION NO.:   47    OBJECTIVE VALUE:  -2155.24935520480        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1698
 NPARAMETR:  1.0486E+00  3.4608E-01  1.7806E+00  1.4375E+00  1.0141E+00  9.6741E-01  5.0637E-01  1.1484E+00  8.3207E-01  1.2646E+00
             1.0064E+00
 PARAMETER:  1.4749E-01 -9.6110E-01  6.7694E-01  4.6288E-01  1.1403E-01  6.6868E-02 -5.8048E-01  2.3836E-01 -8.3834E-02  3.3479E-01
             1.0636E-01
 GRADIENT:  -5.6147E-01  9.9159E-02 -2.1117E-01 -9.6231E-02 -1.6671E-01 -2.5622E-02  2.6138E-04 -5.4855E-02  9.1960E-02 -4.4585E-02
            -2.6939E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1698
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.7035E-04 -7.0173E-03 -3.1037E-02 -3.9505E-03 -3.5423E-02
 SE:             2.9901E-02  3.2154E-03  1.4373E-02  2.9301E-02  2.3223E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7945E-01  2.9081E-02  3.0819E-02  8.9275E-01  1.2718E-01

 ETASHRINKSD(%)  1.0000E-10  8.9228E+01  5.1849E+01  1.8392E+00  2.2199E+01
 ETASHRINKVR(%)  1.0000E-10  9.8840E+01  7.6815E+01  3.6445E+00  3.9470E+01
 EBVSHRINKSD(%)  3.3483E-01  9.0106E+01  5.7096E+01  2.0079E+00  1.7566E+01
 EBVSHRINKVR(%)  6.6854E-01  9.9021E+01  8.1592E+01  3.9754E+00  3.2046E+01
 RELATIVEINF(%)  9.8195E+01  6.9555E-02  5.7069E+00  7.4345E+00  1.8944E+01
 EPSSHRINKSD(%)  3.3609E+01
 EPSSHRINKVR(%)  5.5923E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2155.2493552048031     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1236.3108220001304     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.48
 Elapsed covariance  time in seconds:     6.99
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2155.249       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  3.46E-01  1.78E+00  1.44E+00  1.01E+00  9.67E-01  5.06E-01  1.15E+00  8.32E-01  1.26E+00  1.01E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.17E-02  7.27E-01  7.38E-01  4.61E-01  1.55E-01  5.97E-02  4.87E+00  5.65E-01  2.38E-01  1.98E-01  5.06E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.01E-03
 
 TH 2
+        6.17E-03  5.28E-01
 
 TH 3
+       -5.69E-03 -4.15E-01  5.44E-01
 
 TH 4
+       -3.72E-03 -3.33E-01  2.73E-01  2.12E-01
 
 TH 5
+        2.00E-04  4.12E-02  3.09E-02 -2.25E-02  2.41E-02
 
 TH 6
+        1.65E-04  2.64E-03 -1.46E-03 -1.84E-03  7.29E-04  3.57E-03
 
 TH 7
+        1.88E-02  2.43E+00 -2.07E+00 -1.50E+00  1.21E-01  2.00E-02  2.37E+01
 
 TH 8
+       -4.70E-03 -3.23E-01  3.86E-01  2.11E-01  1.21E-02 -2.63E-03 -1.53E+00  3.20E-01
 
 TH 9
+        1.63E-03  1.52E-01 -1.19E-01 -9.67E-02  1.22E-02  8.20E-04  3.74E-01 -9.38E-02  5.68E-02
 
 TH10
+       -3.95E-04  1.14E-02  6.70E-02 -3.32E-03  2.49E-02  1.11E-03 -9.09E-04  3.45E-02  4.10E-03  3.92E-02
 
 TH11
+        2.37E-04 -6.74E-03  2.91E-03  4.09E-03 -1.79E-03 -1.46E-04 -3.28E-02  2.72E-03 -2.06E-03 -2.59E-03  2.57E-03
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.17E-02
 
 TH 2
+        2.68E-01  7.27E-01
 
 TH 3
+       -2.43E-01 -7.74E-01  7.38E-01
 
 TH 4
+       -2.55E-01 -9.95E-01  8.04E-01  4.61E-01
 
 TH 5
+        4.05E-02  3.65E-01  2.70E-01 -3.15E-01  1.55E-01
 
 TH 6
+        8.70E-02  6.07E-02 -3.31E-02 -6.67E-02  7.86E-02  5.97E-02
 
 TH 7
+        1.22E-01  6.86E-01 -5.77E-01 -6.71E-01  1.60E-01  6.86E-02  4.87E+00
 
 TH 8
+       -2.62E-01 -7.86E-01  9.25E-01  8.10E-01  1.38E-01 -7.79E-02 -5.56E-01  5.65E-01
 
 TH 9
+        2.15E-01  8.76E-01 -6.75E-01 -8.81E-01  3.30E-01  5.76E-02  3.22E-01 -6.96E-01  2.38E-01
 
 TH10
+       -6.28E-02  7.93E-02  4.59E-01 -3.64E-02  8.11E-01  9.36E-02 -9.44E-04  3.09E-01  8.69E-02  1.98E-01
 
 TH11
+        1.47E-01 -1.83E-01  7.78E-02  1.75E-01 -2.28E-01 -4.83E-02 -1.33E-01  9.51E-02 -1.71E-01 -2.59E-01  5.06E-02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.26E+03
 
 TH 2
+       -2.29E+02  4.57E+02
 
 TH 3
+       -2.82E+00  3.60E+01  5.86E+01
 
 TH 4
+       -2.60E+02  5.63E+02 -1.46E+01  8.69E+02
 
 TH 5
+        5.48E+01 -2.31E+02 -1.18E+02 -1.21E+02  5.11E+02
 
 TH 6
+       -8.04E+01  7.17E+01  6.78E+00  7.43E+01 -4.57E+01  3.01E+02
 
 TH 7
+        4.45E+00 -5.24E+00 -1.31E-01 -3.13E+00  2.61E+00 -1.17E+00  2.54E-01
 
 TH 8
+        1.20E+01 -4.16E+00 -1.94E+01 -6.20E+00  4.71E+00  6.82E+00 -7.06E-02  2.52E+01
 
 TH 9
+        1.02E+02 -1.07E+02 -4.02E+00 -1.24E+01  5.13E+01 -2.33E+01  5.99E+00  1.91E-01  2.22E+02
 
 TH10
+       -8.77E-01  9.57E+00 -2.19E+01  1.55E+01 -6.84E+01 -9.77E+00 -6.44E-01  8.87E+00 -1.68E+01  1.03E+02
 
 TH11
+       -1.42E+02 -1.16E+01 -3.71E+01  2.57E+01  6.99E+01  4.04E+00  2.05E-01  4.98E+00  6.77E+00  4.95E+01  4.75E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       33.550
Stop Time:
Thu Sep 30 02:04:17 CDT 2021
