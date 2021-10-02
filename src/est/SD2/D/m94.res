Fri Oct  1 16:19:26 CDT 2021
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
$DATA ../../../../data/SD2/D/dat94.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:   32156.5375541994        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.0006E+03  7.2938E+02  7.5142E+01  6.5245E+02 -2.9075E+01 -3.1612E+03 -1.4480E+03 -1.6102E+02 -2.0845E+03 -5.4859E+02
            -6.0180E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -391.667738839078        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  8.2217E-01  5.5548E-01  6.3658E-01  1.4935E+00  3.1944E+00  4.5454E+00  1.3420E+00  8.2342E-01  1.4327E+00  7.2146E-01
             1.2979E+01
 PARAMETER: -9.5807E-02 -4.8792E-01 -3.5164E-01  5.0115E-01  1.2614E+00  1.6141E+00  3.9414E-01 -9.4290E-02  4.5954E-01 -2.2648E-01
             2.6633E+00
 GRADIENT:  -2.9001E+01  3.5577E+01  2.1242E+00 -3.8067E+01 -5.2242E+01  2.1354E+02  2.5679E+00 -3.6278E+00 -4.1624E+01  6.0539E-01
            -2.7098E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -457.258845584715        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  8.8086E-01  4.1394E-01  3.9177E-01  1.7535E+00  7.4894E+00  3.3830E+00  5.4830E-01  2.0308E-01  1.4006E+00  2.8486E-02
             1.4724E+01
 PARAMETER: -2.6860E-02 -7.8203E-01 -8.3707E-01  6.6159E-01  2.1135E+00  1.3188E+00 -5.0093E-01 -1.4942E+00  4.3688E-01 -3.4583E+00
             2.7895E+00
 GRADIENT:  -4.3640E+01  5.4841E+01 -2.8739E+01  9.5396E+01 -1.3257E+01  9.9726E+01  2.3170E+00  3.2413E-02 -8.7643E+00  6.8571E-04
             2.5913E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -511.815473057733        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  9.2801E-01  1.7229E-01  2.2695E-01  1.2881E+00  1.9362E+01  2.1261E+00  1.7007E-01  1.9851E+00  9.3220E-01  1.1069E-02
             1.5548E+01
 PARAMETER:  2.5283E-02 -1.6586E+00 -1.3830E+00  3.5314E-01  3.0633E+00  8.5428E-01 -1.6716E+00  7.8566E-01  2.9797E-02 -4.4036E+00
             2.8439E+00
 GRADIENT:  -4.2894E+01  4.3634E+01 -2.5088E+01  7.5137E+01 -2.2534E+00 -4.1219E+01  1.2680E-01  1.3052E+01  1.7360E+01  2.2442E-06
             8.6434E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -553.789044380566        NO. OF FUNC. EVALS.: 123
 CUMULATIVE NO. OF FUNC. EVALS.:      355
 NPARAMETR:  7.1514E-01  4.3016E-02  7.6302E-02  6.7381E-01  7.8946E+01  2.0757E+00  4.1342E-02  1.3004E+00  5.7443E-01  1.8126E+00
             1.3469E+01
 PARAMETER: -2.3527E-01 -3.0462E+00 -2.4731E+00 -2.9481E-01  4.4688E+00  8.3029E-01 -3.0859E+00  3.6265E-01 -4.5437E-01  6.9478E-01
             2.7004E+00
 GRADIENT:   3.2107E+00 -1.8859E+00 -3.0399E+01  5.3292E+01  3.9802E-02 -5.1471E+01  8.9992E-04  1.6004E+01  1.2696E+01  2.1551E-04
            -2.3424E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -569.223153665993        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  5.2327E-01  1.8757E-02  3.4262E-02  3.8469E-01  2.0150E+02  2.3367E+00  1.0000E-02  4.1006E-01  1.7879E-01  1.4125E+01
             1.3941E+01
 PARAMETER: -5.4765E-01 -3.8762E+00 -3.2737E+00 -8.5530E-01  5.4058E+00  9.4872E-01 -5.5728E+00 -7.9144E-01 -1.6215E+00  2.7479E+00
             2.7348E+00
 GRADIENT:  -6.6986E+00  9.4422E-01 -2.3468E-01 -2.6463E+00 -1.0095E-03  6.0678E+00  0.0000E+00  2.3143E+00  1.0715E+00  2.1655E-04
             1.7845E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -570.644922039639        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  5.2123E-01  1.4943E-02  3.3450E-02  3.8017E-01  1.6104E+02  2.3181E+00  1.0000E-02  1.4184E-01  1.2050E-01  2.1708E+01
             1.3982E+01
 PARAMETER: -5.5157E-01 -4.1035E+00 -3.2977E+00 -8.6715E-01  5.1817E+00  9.4076E-01 -5.4395E+00 -1.8531E+00 -2.0161E+00  3.1777E+00
             2.7378E+00
 GRADIENT:  -1.2818E+00  1.6530E-01  7.6491E+00 -1.1097E+01  4.1383E-03  4.4424E+00  0.0000E+00  2.7404E-01  4.9587E-01 -2.4000E-04
             1.0038E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -571.046630186463        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  5.1852E-01  1.0827E-02  3.3580E-02  3.8417E-01  1.0878E+02  2.2883E+00  1.0000E-02  2.9094E-02  7.0135E-02  5.0411E+01
             1.3864E+01
 PARAMETER: -5.5679E-01 -4.4258E+00 -3.2938E+00 -8.5666E-01  4.7893E+00  9.2780E-01 -5.0443E+00 -3.4372E+00 -2.5573E+00  4.0202E+00
             2.7293E+00
 GRADIENT:  -1.1365E+00  2.2862E-02 -1.3302E+00  2.3108E+00  1.8952E-04 -1.0954E+00  0.0000E+00  1.3047E-02  1.7825E-01  1.6382E-02
             3.6416E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -571.062656419871        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  5.2126E-01  1.0161E-02  3.3800E-02  3.8596E-01  9.8626E+01  2.2933E+00  1.0000E-02  1.9870E-02  6.0988E-02  4.9504E+01
             1.3914E+01
 PARAMETER: -5.5151E-01 -4.4892E+00 -3.2873E+00 -8.5202E-01  4.6913E+00  9.3001E-01 -4.9542E+00 -3.8185E+00 -2.6971E+00  4.0020E+00
             2.7329E+00
 GRADIENT:  -2.7829E-01  1.4127E-02 -1.4419E-01  4.4415E-01 -2.2216E-02 -2.5492E-01  0.0000E+00  6.0415E-03  1.3473E-01  6.1801E-02
             2.3671E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -571.081597741514        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1242
 NPARAMETR:  5.2404E-01  1.0000E-02  3.3948E-02  3.8709E-01  7.9628E+01  2.2993E+00  1.0000E-02  1.0000E-02  4.3535E-02  4.4586E+01
             1.3957E+01
 PARAMETER: -5.4618E-01 -4.6640E+00 -3.2829E+00 -8.4910E-01  4.4774E+00  9.3262E-01 -4.6535E+00 -4.7438E+00 -3.0342E+00  3.8974E+00
             2.7360E+00
 GRADIENT:   1.0023E+00  0.0000E+00  1.1399E+00 -1.7201E+00 -2.8324E-01  5.6529E-01  0.0000E+00  0.0000E+00  6.8604E-02  5.8663E-01
             4.1283E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -571.122477933614        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1408
 NPARAMETR:  5.2380E-01  1.0000E-02  3.3915E-02  3.8719E-01  7.9885E+01  2.3005E+00  1.0000E-02  1.0000E-02  1.0000E-02  4.4461E+01
             1.3937E+01
 PARAMETER: -5.4664E-01 -4.6640E+00 -3.2839E+00 -8.4883E-01  4.4806E+00  9.3312E-01 -4.6535E+00 -4.7438E+00 -4.5808E+00  3.8946E+00
             2.7345E+00
 GRADIENT:   1.0886E+00  0.0000E+00 -5.4605E-01  3.8557E-01 -1.4593E-02  8.9668E-01  0.0000E+00  0.0000E+00  0.0000E+00  5.2976E-02
             2.8295E+00

0ITERATION NO.:   53    OBJECTIVE VALUE:  -571.129130260112        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1500
 NPARAMETR:  5.2363E-01  1.0000E-02  3.3939E-02  3.8719E-01  8.0042E+01  2.3009E+00  1.0000E-02  1.0000E-02  1.0000E-02  4.4385E+01
             1.3884E+01
 PARAMETER: -5.4698E-01 -4.6640E+00 -3.2832E+00 -8.4883E-01  4.4825E+00  9.3328E-01 -4.6535E+00 -4.7438E+00 -5.6647E+00  3.8929E+00
             2.7308E+00
 GRADIENT:   1.4210E+00  0.0000E+00 -3.1627E-01  7.8152E-02 -1.1587E-02  8.6712E-01  0.0000E+00  0.0000E+00  0.0000E+00  4.7544E-02
            -1.1518E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1500
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4218E-03  8.7050E-07  9.4247E-05 -2.5141E-04 -1.2580E-03
 SE:             2.9241E-02  5.4502E-07  2.7102E-04  3.3972E-04  5.6621E-04
 N:                     100         100         100         100         100

 P VAL.:         9.6122E-01  1.1023E-01  7.2803E-01  4.5926E-01  2.6302E-02

 ETASHRINKSD(%)  2.0400E+00  9.9998E+01  9.9092E+01  9.8862E+01  9.8103E+01
 ETASHRINKVR(%)  4.0384E+00  1.0000E+02  9.9992E+01  9.9987E+01  9.9964E+01
 EBVSHRINKSD(%)  2.0756E+00  9.9997E+01  9.9073E+01  9.8817E+01  9.8245E+01
 EBVSHRINKVR(%)  4.1081E+00  1.0000E+02  9.9991E+01  9.9986E+01  9.9969E+01
 RELATIVEINF(%)  3.3081E+00  4.2413E-09  3.8760E-05  4.5235E-05  1.3976E-03
 EPSSHRINKSD(%)  4.0525E+00
 EPSSHRINKVR(%)  7.9408E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -571.12913026011245     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       347.80940294456025     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.89
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -571.129       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         5.24E-01  1.00E-02  3.39E-02  3.87E-01  8.00E+01  2.30E+00  1.00E-02  1.00E-02  1.00E-02  4.44E+01  1.39E+01
 


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
 #CPUT: Total CPU Time in Seconds,       26.934
Stop Time:
Fri Oct  1 16:19:55 CDT 2021