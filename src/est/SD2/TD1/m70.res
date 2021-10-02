Fri Oct  1 14:23:04 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat70.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m70.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2116.58416932342        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8806E+02  2.7573E+01 -5.6832E+00  5.3257E+01  7.3930E+00  4.7215E+01  3.0431E+00  4.1446E+00  2.2947E-01  2.5935E+01
            -5.2512E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2122.67220550718        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0352E+00  9.6974E-01  1.0593E+00  1.0357E+00  9.9740E-01  1.0103E+00  9.9683E-01  9.7382E-01  1.0453E+00  7.9902E-01
             1.0603E+00
 PARAMETER:  1.3462E-01  6.9272E-02  1.5758E-01  1.3507E-01  9.7395E-02  1.1020E-01  9.6828E-02  7.3473E-02  1.4428E-01 -1.2437E-01
             1.5855E-01
 GRADIENT:   4.6335E+00  3.5825E+00  1.2143E+01 -8.8951E+00  7.2234E+00  1.3416E+00  5.3466E-01 -5.1991E+00  3.8932E+00 -2.4122E+00
            -1.0065E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2123.60766210919        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.0372E+00  7.7813E-01  9.5132E-01  1.1679E+00  8.4708E-01  1.0067E+00  1.0877E+00  9.7050E-01  9.5207E-01  6.5659E-01
             1.0572E+00
 PARAMETER:  1.3651E-01 -1.5087E-01  5.0097E-02  2.5520E-01 -6.5961E-02  1.0669E-01  1.8402E-01  7.0058E-02  5.0884E-02 -3.2069E-01
             1.5566E-01
 GRADIENT:   1.0823E+01  1.8607E+01  2.5596E+00  3.2801E+01 -1.9719E+01  1.1812E-01 -4.2120E+00  2.7640E+00  1.1215E+00 -3.3697E+00
            -1.0432E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2124.92078401065        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      554
 NPARAMETR:  1.0302E+00  7.1710E-01  9.8605E-01  1.1890E+00  8.5465E-01  1.0056E+00  1.3456E+00  8.7480E-01  8.8328E-01  7.0599E-01
             1.0723E+00
 PARAMETER:  1.2973E-01 -2.3254E-01  8.5947E-02  2.7309E-01 -5.7066E-02  1.0558E-01  3.9686E-01 -3.3760E-02 -2.4111E-02 -2.4816E-01
             1.6982E-01
 GRADIENT:  -1.8466E+00  4.0495E+00  2.1240E+00  3.1823E+00 -1.6179E+00  2.4261E-01 -8.3350E-01 -1.1978E+00 -2.6085E+00 -4.7671E-02
             2.0692E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2125.47109999909        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      731
 NPARAMETR:  1.0273E+00  4.5327E-01  1.1822E+00  1.3571E+00  8.5635E-01  1.0001E+00  1.4912E+00  1.0852E+00  8.6712E-01  7.5064E-01
             1.0613E+00
 PARAMETER:  1.2692E-01 -6.9127E-01  2.6739E-01  4.0537E-01 -5.5080E-02  1.0010E-01  4.9958E-01  1.8174E-01 -4.2580E-02 -1.8683E-01
             1.5948E-01
 GRADIENT:   3.0573E+00  1.9432E+00 -1.3547E+00 -2.4321E+00 -3.3215E+00 -4.7533E-02  1.7554E+00  3.0178E+00  6.7122E+00  1.6120E+00
            -4.3608E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2125.66408248727        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      906
 NPARAMETR:  1.0242E+00  3.1504E-01  1.2569E+00  1.4540E+00  8.4390E-01  9.9667E-01  1.6580E+00  1.1317E+00  8.2323E-01  7.5164E-01
             1.0633E+00
 PARAMETER:  1.2390E-01 -1.0551E+00  3.2862E-01  4.7432E-01 -6.9725E-02  9.6667E-02  6.0561E-01  2.2375E-01 -9.4526E-02 -1.8549E-01
             1.6135E-01
 GRADIENT:   2.2610E+00  4.8375E+00  3.4675E+00  1.8254E+01 -9.8516E+00 -3.8617E-01  6.6540E-01  5.9364E-01  3.1027E+00  5.4232E-01
            -3.7429E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2125.75844956877        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1081
 NPARAMETR:  1.0214E+00  2.3762E-01  1.3106E+00  1.5011E+00  8.4514E-01  9.9558E-01  1.7299E+00  1.1685E+00  7.9549E-01  7.5812E-01
             1.0688E+00
 PARAMETER:  1.2119E-01 -1.3371E+00  3.7045E-01  5.0619E-01 -6.8248E-02  9.5566E-02  6.4805E-01  2.5570E-01 -1.2880E-01 -1.7692E-01
             1.6651E-01
 GRADIENT:  -4.1289E-01  3.2673E+00  3.5291E+00  1.4171E+01 -6.5539E+00 -1.7157E-01  1.5268E-01 -7.9558E-01 -1.1410E+00  3.9924E-02
            -4.9298E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2125.82183723865        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1263
 NPARAMETR:  1.0214E+00  1.8276E-01  1.3337E+00  1.5174E+00  8.4744E-01  9.9515E-01  1.7089E+00  1.2046E+00  7.8888E-01  7.6112E-01
             1.0694E+00
 PARAMETER:  1.2117E-01 -1.5996E+00  3.8792E-01  5.1702E-01 -6.5533E-02  9.5139E-02  6.3583E-01  2.8619E-01 -1.3714E-01 -1.7296E-01
             1.6714E-01
 GRADIENT:   2.4220E+00 -1.2099E+00 -4.2882E+00 -2.5395E+01  1.0277E+01  1.5096E-01  1.2220E-01  2.2494E-01  8.7711E-01 -4.7995E-01
             8.5266E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2125.87879924674        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1448             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0213E+00  1.8486E-01  1.3366E+00  1.5215E+00  8.4447E-01  9.9510E-01  1.5186E+00  1.2046E+00  7.8985E-01  7.6230E-01
             1.0684E+00
 PARAMETER:  1.2112E-01 -1.5882E+00  3.9012E-01  5.1969E-01 -6.9049E-02  9.5089E-02  5.1779E-01  2.8612E-01 -1.3592E-01 -1.7141E-01
             1.6618E-01
 GRADIENT:   4.8016E+02  2.4211E+01  9.0549E+00  8.8297E+02  7.0835E+00  3.9742E+01  1.2468E+00  1.1367E+00  1.6098E+01  6.8780E-01
             1.7158E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2125.87951883918        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1635             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0214E+00  1.8500E-01  1.3357E+00  1.5214E+00  8.4412E-01  9.9510E-01  1.4829E+00  1.2041E+00  7.9008E-01  7.6220E-01
             1.0684E+00
 PARAMETER:  1.2115E-01 -1.5874E+00  3.8949E-01  5.1961E-01 -6.9464E-02  9.5091E-02  4.9398E-01  2.8576E-01 -1.3562E-01 -1.7154E-01
             1.6613E-01
 GRADIENT:   4.8041E+02  2.4172E+01  9.0756E+00  8.8261E+02  6.8669E+00  3.9742E+01  1.1329E+00  1.1537E+00  1.5980E+01  6.8766E-01
             1.6835E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2125.88001287074        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1825
 NPARAMETR:  1.0214E+00  1.8538E-01  1.3348E+00  1.5211E+00  8.4388E-01  9.9511E-01  1.4760E+00  1.2034E+00  7.9011E-01  7.6201E-01
             1.0684E+00
 PARAMETER:  1.2116E-01 -1.5853E+00  3.8881E-01  5.1944E-01 -6.9741E-02  9.5096E-02  4.8935E-01  2.8512E-01 -1.3559E-01 -1.7180E-01
             1.6612E-01
 GRADIENT:   2.1465E+00  2.0223E-01  2.0221E-01 -1.2624E+01  3.6974E-01  9.5379E-02  8.8289E-03  5.9325E-02  1.0150E-01  2.1446E-02
             8.2249E-03

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2125.88072091207        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2013             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0214E+00  1.8635E-01  1.3334E+00  1.5207E+00  8.4338E-01  9.9512E-01  1.4574E+00  1.2018E+00  7.9015E-01  7.6173E-01
             1.0683E+00
 PARAMETER:  1.2116E-01 -1.5801E+00  3.8774E-01  5.1915E-01 -7.0341E-02  9.5106E-02  4.7668E-01  2.8378E-01 -1.3553E-01 -1.7217E-01
             1.6610E-01
 GRADIENT:   4.8040E+02  2.4420E+01  9.2394E+00  8.8131E+02  6.3345E+00  3.9740E+01  1.0617E+00  1.1059E+00  1.5713E+01  6.7752E-01
             1.6431E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2125.88116519235        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2195
 NPARAMETR:  1.0214E+00  1.8660E-01  1.3326E+00  1.5203E+00  8.4324E-01  9.9513E-01  1.4671E+00  1.2011E+00  7.9025E-01  7.6156E-01
             1.0683E+00
 PARAMETER:  1.2117E-01 -1.5788E+00  3.8711E-01  5.1894E-01 -7.0502E-02  9.5116E-02  4.8332E-01  2.8326E-01 -1.3540E-01 -1.7239E-01
             1.6611E-01
 GRADIENT:   2.1252E+00  2.4324E-01  2.7862E-01 -1.2253E+01  7.7829E-02  9.3771E-02  1.9060E-03  3.4991E-02 -3.3206E-02  1.2937E-02
            -7.9196E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2125.88162878762        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2380             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0214E+00  1.8704E-01  1.3309E+00  1.5197E+00  8.4304E-01  9.9515E-01  1.4966E+00  1.2000E+00  7.9063E-01  7.6128E-01
             1.0684E+00
 PARAMETER:  1.2120E-01 -1.5764E+00  3.8586E-01  5.1849E-01 -7.0741E-02  9.5135E-02  5.0320E-01  2.8233E-01 -1.3493E-01 -1.7275E-01
             1.6612E-01
 GRADIENT:   4.8054E+02  2.4487E+01  8.7532E+00  8.7869E+02  7.1551E+00  3.9738E+01  1.1986E+00  1.1434E+00  1.5921E+01  6.6809E-01
             1.6809E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2125.88211316970        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2567
 NPARAMETR:  1.0214E+00  1.8766E-01  1.3298E+00  1.5192E+00  8.4280E-01  9.9516E-01  1.4980E+00  1.1990E+00  7.9080E-01  7.6111E-01
             1.0684E+00
 PARAMETER:  1.2121E-01 -1.5731E+00  3.8505E-01  5.1819E-01 -7.1023E-02  9.5148E-02  5.0413E-01  2.8152E-01 -1.3471E-01 -1.7298E-01
             1.6613E-01
 GRADIENT:   2.1768E+00  1.3625E-01 -8.0168E-02 -1.3033E+01  6.5837E-01  9.7811E-02  1.4779E-02  6.9251E-02  2.2322E-01  7.6251E-03
             2.3057E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2125.88272336449        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2754             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0214E+00  1.8869E-01  1.3292E+00  1.5189E+00  8.4244E-01  9.9517E-01  1.4737E+00  1.1979E+00  7.9067E-01  7.6096E-01
             1.0683E+00
 PARAMETER:  1.2121E-01 -1.5676E+00  3.8455E-01  5.1801E-01 -7.1450E-02  9.5155E-02  4.8776E-01  2.8057E-01 -1.3487E-01 -1.7317E-01
             1.6611E-01
 GRADIENT:   4.8053E+02  2.4824E+01  9.1001E+00  8.7741E+02  6.3402E+00  3.9737E+01  1.1355E+00  1.0851E+00  1.5631E+01  6.7484E-01
             1.6484E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2125.88303099044        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2936
 NPARAMETR:  1.0214E+00  1.8899E-01  1.3285E+00  1.5186E+00  8.4237E-01  9.9518E-01  1.4803E+00  1.1974E+00  7.9080E-01  7.6086E-01
             1.0683E+00
 PARAMETER:  1.2122E-01 -1.5661E+00  3.8407E-01  5.1781E-01 -7.1536E-02  9.5164E-02  4.9226E-01  2.8017E-01 -1.3471E-01 -1.7331E-01
             1.6611E-01
 GRADIENT:   2.1286E+00  2.3696E-01  2.0481E-01 -1.2214E+01  2.0032E-02  9.3799E-02  3.0546E-03  2.8141E-02 -2.0605E-02  8.5342E-03
            -5.7997E-03

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2125.88361750116        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3123             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0215E+00  1.8989E-01  1.3267E+00  1.5177E+00  8.4220E-01  9.9520E-01  1.5004E+00  1.1961E+00  7.9126E-01  7.6062E-01
             1.0684E+00
 PARAMETER:  1.2125E-01 -1.5613E+00  3.8273E-01  5.1721E-01 -7.1743E-02  9.5190E-02  5.0571E-01  2.7905E-01 -1.3413E-01 -1.7363E-01
             1.6612E-01
 GRADIENT:   4.8070E+02  2.4972E+01  8.6912E+00  8.7438E+02  7.0100E+00  3.9736E+01  1.2421E+00  1.1127E+00  1.5767E+01  6.6518E-01
             1.6762E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -2125.88399848357        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3310
 NPARAMETR:  1.0215E+00  1.9054E-01  1.3260E+00  1.5173E+00  8.4207E-01  9.9521E-01  1.4999E+00  1.1953E+00  7.9140E-01  7.6051E-01
             1.0684E+00
 PARAMETER:  1.2126E-01 -1.5579E+00  3.8214E-01  5.1693E-01 -7.1895E-02  9.5203E-02  5.0537E-01  2.7842E-01 -1.3395E-01 -1.7377E-01
             1.6612E-01
 GRADIENT:   2.1689E+00  1.5372E-01 -8.5970E-02 -1.2785E+01  4.8566E-01  9.7529E-02  1.2084E-02  5.2690E-02  1.5624E-01 -5.5919E-04
             1.5237E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -2125.88441913927        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3495             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0215E+00  1.9151E-01  1.3255E+00  1.5170E+00  8.4184E-01  9.9522E-01  1.4811E+00  1.1944E+00  7.9132E-01  7.6041E-01
             1.0683E+00
 PARAMETER:  1.2127E-01 -1.5528E+00  3.8178E-01  5.1674E-01 -7.2169E-02  9.5212E-02  4.9279E-01  2.7768E-01 -1.3406E-01 -1.7390E-01
             1.6610E-01
 GRADIENT:   4.8074E+02  2.5294E+01  8.9873E+00  8.7301E+02  6.3468E+00  3.9738E+01  1.1900E+00  1.0639E+00  1.5504E+01  6.6738E-01
             1.6476E+00

0ITERATION NO.:  100    OBJECTIVE VALUE:  -2125.88457873447        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     3678
 NPARAMETR:  1.0215E+00  1.9215E-01  1.3251E+00  1.5167E+00  8.4171E-01  9.9523E-01  1.4784E+00  1.1939E+00  7.9146E-01  7.6042E-01
             1.0683E+00
 PARAMETER:  1.2127E-01 -1.5495E+00  3.8145E-01  5.1655E-01 -7.2321E-02  9.5219E-02  4.9094E-01  2.7719E-01 -1.3388E-01 -1.7389E-01
             1.6610E-01
 GRADIENT:   2.1063E+00  2.9731E-01  3.6374E-01 -1.1656E+01 -4.4684E-01  9.0779E-02 -1.4927E-03  2.4070E-03 -1.0742E-01  1.9184E-02
            -1.6999E-02

0ITERATION NO.:  105    OBJECTIVE VALUE:  -2125.88501009207        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     3868             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0215E+00  1.9243E-01  1.3241E+00  1.5161E+00  8.4178E-01  9.9525E-01  1.4985E+00  1.1934E+00  7.9178E-01  7.6027E-01
             1.0683E+00
 PARAMETER:  1.2130E-01 -1.5480E+00  3.8071E-01  5.1616E-01 -7.2232E-02  9.5238E-02  5.0447E-01  2.7680E-01 -1.3348E-01 -1.7408E-01
             1.6611E-01
 GRADIENT:   4.8087E+02  2.5411E+01  8.7191E+00  8.7083E+02  6.8031E+00  3.9738E+01  1.2642E+00  1.0864E+00  1.5603E+01  6.6503E-01
             1.6695E+00

0ITERATION NO.:  110    OBJECTIVE VALUE:  -2125.88523522444        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     4053
 NPARAMETR:  1.0215E+00  1.9290E-01  1.3238E+00  1.5159E+00  8.4171E-01  9.9526E-01  1.4958E+00  1.1930E+00  7.9183E-01  7.6024E-01
             1.0683E+00
 PARAMETER:  1.2130E-01 -1.5456E+00  3.8048E-01  5.1602E-01 -7.2319E-02  9.5244E-02  5.0267E-01  2.7646E-01 -1.3341E-01 -1.7412E-01
             1.6611E-01
 GRADIENT:   2.1479E+00  2.0551E-01  5.2781E-02 -1.2317E+01  1.2774E-01  9.5397E-02  7.5960E-03  3.0786E-02  5.3464E-02  3.5881E-03
             2.4293E-03

0ITERATION NO.:  111    OBJECTIVE VALUE:  -2125.88523522444        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     4077
 NPARAMETR:  1.0215E+00  1.9290E-01  1.3238E+00  1.5159E+00  8.4171E-01  9.9526E-01  1.4958E+00  1.1930E+00  7.9183E-01  7.6024E-01
             1.0683E+00
 PARAMETER:  1.2130E-01 -1.5456E+00  3.8048E-01  5.1602E-01 -7.2319E-02  9.5244E-02  5.0267E-01  2.7646E-01 -1.3341E-01 -1.7412E-01
             1.6611E-01
 GRADIENT:  -5.5691E-03 -4.9105E-02  7.7139E-02  2.6794E-01  1.3657E-01 -1.4486E-03  1.0650E-03  2.7127E-02  4.2801E-03  2.2369E-03
             3.5747E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     4077
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2434E-04 -4.8078E-03 -2.5747E-02 -3.4270E-03 -3.1310E-02
 SE:             2.9871E-02  4.9106E-03  1.9449E-02  2.9151E-02  1.9263E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9401E-01  3.2755E-01  1.8557E-01  9.0641E-01  1.0408E-01

 ETASHRINKSD(%)  1.0000E-10  8.3549E+01  3.4842E+01  2.3413E+00  3.5466E+01
 ETASHRINKVR(%)  1.0000E-10  9.7294E+01  5.7544E+01  4.6277E+00  5.8354E+01
 EBVSHRINKSD(%)  3.7049E-01  8.3966E+01  3.6518E+01  2.7277E+00  3.4427E+01
 EBVSHRINKVR(%)  7.3962E-01  9.7429E+01  5.9700E+01  5.3810E+00  5.7002E+01
 RELATIVEINF(%)  9.5796E+01  1.3047E-01  8.4770E+00  6.2652E+00  5.8733E+00
 EPSSHRINKSD(%)  3.3607E+01
 EPSSHRINKVR(%)  5.5920E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2125.8852352244407     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1206.9467020197681     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    62.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2125.885       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.93E-01  1.32E+00  1.52E+00  8.42E-01  9.95E-01  1.50E+00  1.19E+00  7.92E-01  7.60E-01  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       62.296
Stop Time:
Fri Oct  1 14:24:08 CDT 2021