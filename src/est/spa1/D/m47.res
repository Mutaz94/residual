Thu Sep 30 03:08:19 CDT 2021
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
$DATA ../../../../data/spa1/D/dat47.csv ignore=@
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
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:   17009.9184928262        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.3347E+02  3.4613E+02 -6.2353E+01  1.3271E+02  1.6638E+02 -1.4471E+03 -6.5985E+02 -4.9536E+01 -1.4304E+03 -3.7096E+02
            -3.3807E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -597.313254664009        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1459E+00  9.0404E-01  9.9532E-01  1.7474E+00  1.3079E+00  2.6747E+00  1.3440E+00  9.3836E-01  2.1608E+00  1.0512E+00
             1.3276E+01
 PARAMETER:  2.3619E-01 -8.8312E-04  9.5309E-02  6.5816E-01  3.6841E-01  1.0839E+00  3.9567E-01  3.6377E-02  8.7048E-01  1.4997E-01
             2.6859E+00
 GRADIENT:  -3.0625E+01  1.0526E+01 -2.0962E+01  1.4141E+01 -1.7332E+00  8.8699E+01  2.9320E+00  6.5587E+00  5.5068E+00  2.4536E+00
             2.4822E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -623.552797869478        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.1816E+00  8.0702E-01  1.7856E+00  2.0693E+00  4.4056E+00  2.2213E+00  5.1749E+00  5.1080E-01  2.2313E+00  8.9132E+00
             1.1949E+01
 PARAMETER:  2.6688E-01 -1.1440E-01  6.7978E-01  8.2723E-01  1.5829E+00  8.9810E-01  1.7438E+00 -5.7177E-01  9.0259E-01  2.2875E+00
             2.5807E+00
 GRADIENT:  -8.8173E+00  1.8873E+01  3.8999E+00  4.9395E+01 -8.7561E+00  2.7783E+01  1.3199E+01 -3.3583E-01  2.9253E+01  2.1038E+01
             1.8414E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -701.670787680803        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  9.7742E-01  3.1337E-01  3.5100E-01  1.2289E+00  1.0231E+01  1.7394E+00  2.5172E-01  1.0000E-02  1.8097E+00  3.2184E+00
             8.3387E+00
 PARAMETER:  7.7160E-02 -1.0604E+00 -9.4698E-01  3.0615E-01  2.4255E+00  6.5353E-01 -1.2794E+00 -5.6921E+00  6.9318E-01  1.2689E+00
             2.2209E+00
 GRADIENT:   3.5149E+01  5.6046E+01 -3.0113E+01 -1.9478E+01 -1.3348E+01 -2.4364E+01  6.2718E-01  0.0000E+00  3.2000E+01  1.5245E+00
            -7.6202E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -750.105721433786        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  6.6780E-01  8.2895E-02  9.8648E-02  8.2600E-01  7.9415E+01  1.7042E+00  1.7543E-02  1.0000E-02  8.1847E-01  3.8332E+00
             8.6595E+00
 PARAMETER: -3.0376E-01 -2.3902E+00 -2.2162E+00 -9.1158E-02  4.4747E+00  6.3308E-01 -3.9431E+00 -1.2445E+01 -1.0032E-01  1.4437E+00
             2.2587E+00
 GRADIENT:  -5.6758E+00  5.3917E+01 -5.4932E+01  1.4186E+02 -4.8313E-01  1.6783E+01  5.5991E-03  0.0000E+00 -5.3906E+01  3.9317E-02
            -6.5563E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -784.377532431387        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  4.1018E-01  1.3257E-02  2.3618E-02  2.9550E-01  1.5863E+03  1.4585E+00  1.0000E-02  1.0000E-02  3.8683E-01  4.7548E+00
             9.8500E+00
 PARAMETER: -7.9116E-01 -4.2232E+00 -3.6457E+00 -1.1191E+00  7.4692E+00  4.7744E-01 -9.9247E+00 -2.2099E+01 -8.4976E-01  1.6591E+00
             2.3875E+00
 GRADIENT:  -2.5074E+01  8.6643E-01  3.0133E+01 -1.4093E+01 -3.5729E-04  4.2958E+00  0.0000E+00  0.0000E+00 -3.4179E+00 -2.9236E-07
             2.3392E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -790.399966831679        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      628
 NPARAMETR:  3.3371E-01  1.0000E-02  1.3561E-02  1.9243E-01  5.8091E+03  1.3959E+00  1.0000E-02  1.0000E-02  5.3786E-01  4.6961E+00
             9.5880E+00
 PARAMETER: -9.9749E-01 -4.9419E+00 -4.2005E+00 -1.5480E+00  8.7672E+00  4.3354E-01 -1.2042E+01 -2.5653E+01 -5.2015E-01  1.6467E+00
             2.3605E+00
 GRADIENT:  -1.4660E+01  0.0000E+00 -3.8329E+01  4.8526E+01 -2.0878E-04  8.3043E-01  0.0000E+00  0.0000E+00  1.8351E+00  9.1233E-08
             1.9702E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -794.696360514710        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      805
 NPARAMETR:  3.4296E-01  1.0000E-02  1.3872E-02  1.8829E-01  1.8822E+05  1.4340E+00  1.0000E-02  1.0000E-02  8.8683E-01  4.6918E+00
             8.9140E+00
 PARAMETER: -9.7013E-01 -4.9419E+00 -4.1779E+00 -1.5697E+00  1.2245E+01  4.6047E-01 -1.2042E+01 -2.5653E+01 -2.0102E-02  1.6458E+00
             2.2876E+00
 GRADIENT:   7.7908E+00  0.0000E+00 -2.5674E+01  1.5952E+01 -6.0616E-06  5.3424E+00  0.0000E+00  0.0000E+00  2.8655E+00  1.1052E-10
             9.8610E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -794.960602242188        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      991             RESET HESSIAN, TYPE I
 NPARAMETR:  3.4227E-01  1.0000E-02  1.4083E-02  1.8885E-01  4.2002E+05  1.4136E+00  1.0000E-02  1.0000E-02  8.7395E-01  4.7344E+00
             8.7973E+00
 PARAMETER: -9.7217E-01 -4.9419E+00 -4.1628E+00 -1.5668E+00  1.3048E+01  4.4613E-01 -1.2042E+01 -2.5653E+01 -3.4735E-02  1.6549E+00
             2.2744E+00
 GRADIENT:   1.0571E+02  0.0000E+00  1.2746E+02  4.3248E+01 -3.2138E-06  8.1096E+00  0.0000E+00  0.0000E+00  3.7660E-01  2.7479E-11
             2.1282E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -794.963272609086        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     1184             RESET HESSIAN, TYPE I
 NPARAMETR:  3.4262E-01  1.0000E-02  1.4107E-02  1.8906E-01  8.0064E+05  1.4134E+00  1.0000E-02  1.0000E-02  8.7232E-01  3.2865E+02
             8.8015E+00
 PARAMETER: -9.7114E-01 -4.9419E+00 -4.1611E+00 -1.5657E+00  1.3693E+01  4.4603E-01 -1.2042E+01 -2.5653E+01 -3.6602E-02  5.8950E+00
             2.2749E+00
 GRADIENT:   1.0579E+02  0.0000E+00  1.2748E+02  4.2763E+01 -1.6236E-06  8.0404E+00  0.0000E+00  0.0000E+00  9.4074E-02  5.1045E-08
             2.1588E+01

0ITERATION NO.:   47    OBJECTIVE VALUE:  -794.963272609086        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  3.4262E-01  1.0000E-02  1.4107E-02  1.8906E-01  8.0064E+05  1.4134E+00  1.0000E-02  1.0000E-02  8.7232E-01  3.2865E+02
             8.8015E+00
 PARAMETER: -9.7114E-01 -4.9419E+00 -4.1611E+00 -1.5657E+00  1.3693E+01  4.4603E-01 -1.2042E+01 -2.5653E+01 -3.6602E-02  5.8950E+00
             2.2749E+00
 GRADIENT:   2.6110E+00  0.0000E+00 -1.1019E+01  1.5875E+00 -1.7998E-06  4.3520E-02  0.0000E+00  0.0000E+00 -1.4092E-01  2.7364E-08
            -1.1839E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1239
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5840E-03 -4.9190E-06  1.4211E-04 -2.2090E-02  6.6342E-09
 SE:             2.9084E-02  2.8969E-06  2.5634E-04  2.4302E-02  4.1434E-07
 N:                     100         100         100         100         100

 P VAL.:         9.5657E-01  8.9498E-02  5.7932E-01  3.6337E-01  9.8723E-01

 ETASHRINKSD(%)  2.5634E+00  9.9990E+01  9.9141E+01  1.8584E+01  9.9999E+01
 ETASHRINKVR(%)  5.0611E+00  1.0000E+02  9.9993E+01  3.3715E+01  1.0000E+02
 EBVSHRINKSD(%)  2.6802E+00  9.9973E+01  9.9196E+01  1.9741E+01  9.9998E+01
 EBVSHRINKVR(%)  5.2887E+00  1.0000E+02  9.9994E+01  3.5585E+01  1.0000E+02
 RELATIVEINF(%)  1.9137E+00  9.1318E-07  2.6288E-05  2.7769E-01  1.1265E-09
 EPSSHRINKSD(%)  1.1729E+01
 EPSSHRINKVR(%)  2.2082E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -794.96327260908595     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       123.97526059558675     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.89
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     9.75
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -794.963       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.43E-01  1.00E-02  1.41E-02  1.89E-01  8.01E+05  1.41E+00  1.00E-02  1.00E-02  8.72E-01  3.29E+02  8.80E+00
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        4.43E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -4.32E+04  0.00E+00  3.40E+06
 
 TH 4
+       -1.37E+01  0.00E+00 -2.68E+05  2.45E+04
 
 TH 5
+        1.94E-10  0.00E+00 -2.49E-09  1.08E-10  3.79E-18
 
 TH 6
+       -4.06E+00  0.00E+00 -2.56E+02 -2.94E+01  5.33E-12  8.52E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -3.26E-01  0.00E+00  1.33E+03 -1.27E+02  1.41E-10 -5.34E-01  0.00E+00  0.00E+00  1.11E+02
 
 TH10
+        1.41E-07  0.00E+00 -2.30E-06 -6.01E-09 -2.55E-15 -1.04E-07  0.00E+00  0.00E+00  1.55E-06 -7.91E-11
 
 TH11
+       -3.48E+01  0.00E+00  6.71E+02 -3.14E+01 -1.75E-12  8.45E-01  0.00E+00  0.00E+00  3.71E+00  1.53E-09  6.41E+00
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       32.725
Stop Time:
Thu Sep 30 03:08:53 CDT 2021
