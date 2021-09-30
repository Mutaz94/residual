Wed Sep 29 15:50:18 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat43.csv ignore=@
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
Current Date:       29 SEP 2021
Days until program expires : 200
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1664.90411552575        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2408E+02 -1.2612E+01 -1.2476E+01  2.9024E+01  5.0392E+01  4.4191E+01  1.0186E+01  3.3269E+00  3.9388E+01 -1.2210E+01
             6.6306E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1669.16241712943        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8942E-01  1.0376E+00  9.6620E-01  1.0077E+00  9.6272E-01  9.9244E-01  9.3311E-01  9.8180E-01  7.5397E-01  1.0888E+00
             9.6792E-01
 PARAMETER:  8.9359E-02  1.3688E-01  6.5612E-02  1.0766E-01  6.2010E-02  9.2408E-02  3.0772E-02  8.1634E-02 -1.8240E-01  1.8511E-01
             6.7389E-02
 GRADIENT:  -2.0831E+00  9.9392E+00  4.9796E+00 -2.5640E+00 -1.1557E+01 -1.2217E+00 -9.4368E+00  2.8048E+00 -1.7234E+01  5.3370E+00
            -1.0482E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1670.78688866549        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.8935E-01  8.6549E-01  8.9622E-01  1.1249E+00  8.5690E-01  9.8489E-01  1.1813E+00  7.3458E-01  6.6363E-01  1.0003E+00
             9.8722E-01
 PARAMETER:  8.9292E-02 -4.4458E-02 -9.5640E-03  2.1772E-01 -5.4429E-02  8.4772E-02  2.6658E-01 -2.0845E-01 -3.1003E-01  1.0027E-01
             8.7134E-02
 GRADIENT:  -2.9066E+00  2.7778E+01 -4.1408E+00  4.7064E+01  2.6593E+00 -4.3848E+00 -6.2055E+00  1.2738E+00 -1.8114E+01  5.1295E+00
            -2.0845E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1673.97019167636        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.9108E-01  7.4086E-01  7.3751E-01  1.1746E+00  7.0998E-01  1.0051E+00  1.3732E+00  4.5184E-01  6.9611E-01  8.2425E-01
             9.8640E-01
 PARAMETER:  9.1037E-02 -1.9995E-01 -2.0447E-01  2.6089E-01 -2.4251E-01  1.0512E-01  4.1713E-01 -6.9443E-01 -2.6225E-01 -9.3280E-02
             8.6307E-02
 GRADIENT:  -1.1552E+00  2.2839E+01  5.6745E+00  3.0566E+01 -6.3671E+00  3.0763E+00  2.1348E+00 -2.8014E-01 -4.2341E-01 -3.0330E+00
            -1.1268E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1676.23097830144        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  9.9057E-01  5.0084E-01  6.7512E-01  1.2806E+00  5.9903E-01  9.9829E-01  1.7195E+00  2.0694E-01  6.4523E-01  8.2354E-01
             9.8620E-01
 PARAMETER:  9.0525E-02 -5.9147E-01 -2.9287E-01  3.4730E-01 -4.1245E-01  9.8293E-02  6.4203E-01 -1.4753E+00 -3.3815E-01 -9.4147E-02
             8.6107E-02
 GRADIENT:   7.9007E-01  5.1479E+00  4.6554E+00 -6.4100E-01 -1.0627E+01  1.0436E+00 -2.5586E+00 -9.4559E-02 -3.0630E+00  3.0705E+00
            -1.9508E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1677.49483178373        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.8393E-01  2.6191E-01  7.3740E-01  1.4241E+00  5.8134E-01  9.8873E-01  2.6885E+00  7.0114E-02  6.2414E-01  8.8248E-01
             1.0059E+00
 PARAMETER:  8.3796E-02 -1.2397E+00 -2.0463E-01  4.5357E-01 -4.4242E-01  8.8667E-02  1.0890E+00 -2.5576E+00 -3.7138E-01 -2.5015E-02
             1.0588E-01
 GRADIENT:  -8.1208E-01  5.3693E+00  2.2023E+00  2.6032E+01 -7.0269E+00 -5.1615E-01  1.3154E+00 -3.6173E-02  3.3434E-01  6.1159E-01
             1.7091E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1677.70906493421        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.8306E-01  2.0031E-01  7.4369E-01  1.4445E+00  5.7499E-01  9.8872E-01  3.1068E+00  4.4401E-02  6.1774E-01  8.8767E-01
             1.0033E+00
 PARAMETER:  8.2919E-02 -1.5079E+00 -1.9613E-01  4.6776E-01 -4.5339E-01  8.8654E-02  1.2336E+00 -3.0145E+00 -3.8168E-01 -1.9159E-02
             1.0326E-01
 GRADIENT:   1.4188E+00  1.8790E-01  1.5044E+00 -9.0000E+00 -7.0646E-01  1.0976E-01  9.9740E-01 -1.6392E-02  2.3735E-01  3.2004E-01
             4.1655E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1677.71597997310        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1247
 NPARAMETR:  9.8280E-01  2.0147E-01  7.4222E-01  1.4447E+00  5.7460E-01  9.8863E-01  3.0810E+00  5.4603E-02  6.1743E-01  8.8592E-01
             1.0033E+00
 PARAMETER:  8.2654E-02 -1.5021E+00 -1.9811E-01  4.6789E-01 -4.5408E-01  8.8561E-02  1.2252E+00 -2.8077E+00 -3.8218E-01 -2.1125E-02
             1.0330E-01
 GRADIENT:   6.6660E-01  1.0673E-01  2.5508E-01 -5.0224E+00  3.3900E-01  5.3142E-02  4.1884E-01 -2.4825E-02  1.1914E-02  1.0943E-01
             9.9252E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1677.72445771712        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.8283E-01  2.0255E-01  7.4108E-01  1.4440E+00  5.7427E-01  9.8865E-01  3.0706E+00  6.6203E-02  6.1742E-01  8.8391E-01
             1.0030E+00
 PARAMETER:  8.2680E-02 -1.4968E+00 -1.9965E-01  4.6743E-01 -4.5465E-01  8.8584E-02  1.2219E+00 -2.6150E+00 -3.8220E-01 -2.3396E-02
             1.0295E-01
 GRADIENT:   6.2593E-01  8.6224E-02 -2.0951E-01 -4.4413E+00  9.1387E-01  4.6503E-02  3.4573E-01 -3.6805E-02 -1.6372E-02 -1.0066E-01
            -7.5457E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1677.73571109149        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     1621             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8309E-01  2.0423E-01  7.4061E-01  1.4423E+00  5.7363E-01  9.8878E-01  3.0765E+00  7.7208E-02  6.1764E-01  8.8304E-01
             1.0027E+00
 PARAMETER:  8.2948E-02 -1.4885E+00 -2.0028E-01  4.6623E-01 -4.5578E-01  8.8716E-02  1.2238E+00 -2.4613E+00 -3.8185E-01 -2.4389E-02
             1.0269E-01
 GRADIENT:   3.6768E+02  3.3812E+01  1.3096E+01  6.1817E+02  5.9015E+01  3.8048E+01  4.2474E+01  2.0353E-02  1.9528E+01  1.0532E+00
             7.7035E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1677.74463296339        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1803             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8313E-01  2.0438E-01  7.3976E-01  1.4419E+00  5.7367E-01  9.8881E-01  3.0720E+00  8.7148E-02  6.1778E-01  8.8279E-01
             1.0027E+00
 PARAMETER:  8.2984E-02 -1.4878E+00 -2.0143E-01  4.6595E-01 -4.5570E-01  8.8751E-02  1.2223E+00 -2.3401E+00 -3.8163E-01 -2.4669E-02
             1.0271E-01
 GRADIENT:   3.6766E+02  3.3633E+01  1.1460E+01  6.1718E+02  6.1115E+01  3.8050E+01  4.2345E+01  2.4852E-02  1.9567E+01  1.2731E+00
             9.4225E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1678.08856641126        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1989
 NPARAMETR:  9.8289E-01  2.1426E-01  7.3499E-01  1.4376E+00  5.7008E-01  9.8894E-01  2.9743E+00  4.0015E-01  6.1719E-01  8.2636E-01
             9.9101E-01
 PARAMETER:  8.2742E-02 -1.4406E+00 -2.0790E-01  4.6297E-01 -4.6197E-01  8.8879E-02  1.1900E+00 -8.1592E-01 -3.8258E-01 -9.0720E-02
             9.0964E-02
 GRADIENT:   1.2259E-01  4.6118E-01 -2.4321E+00 -1.7954E+00 -5.3190E-01  1.5003E-02 -1.5458E-01 -1.1240E-01  2.4015E-01 -4.5707E-01
            -1.7899E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1678.12131770238        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2165
 NPARAMETR:  9.8172E-01  1.8699E-01  7.6064E-01  1.4560E+00  5.7756E-01  9.8822E-01  3.1760E+00  4.5435E-01  6.1447E-01  8.2623E-01
             9.8851E-01
 PARAMETER:  8.1547E-02 -1.5767E+00 -1.7360E-01  4.7572E-01 -4.4895E-01  8.8149E-02  1.2556E+00 -6.8888E-01 -3.8699E-01 -9.0880E-02
             8.8443E-02
 GRADIENT:  -4.1863E-02 -9.7896E-02  1.4247E+00 -4.4549E+00 -4.0699E+00  5.1936E-02 -5.1818E-01 -1.9579E-01 -5.1908E-01 -1.5186E+00
            -9.9424E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1678.14807232066        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2347             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8211E-01  1.8337E-01  7.6583E-01  1.4578E+00  5.8030E-01  9.8821E-01  3.2757E+00  4.5973E-01  6.1500E-01  8.3463E-01
             9.9013E-01
 PARAMETER:  8.1944E-02 -1.5962E+00 -1.6679E-01  4.7695E-01 -4.4421E-01  8.8143E-02  1.2865E+00 -6.7712E-01 -3.8614E-01 -8.0766E-02
             9.0082E-02
 GRADIENT:   3.7814E+02  3.2922E+01  8.9178E+00  6.6223E+02  5.6834E+01  3.9143E+01  4.8766E+01  7.4887E-01  2.1165E+01  9.5577E-01
             8.1888E-01

0ITERATION NO.:   67    OBJECTIVE VALUE:  -1678.14807232066        NO. OF FUNC. EVALS.:  60
 CUMULATIVE NO. OF FUNC. EVALS.:     2407
 NPARAMETR:  9.8211E-01  1.8337E-01  7.6583E-01  1.4578E+00  5.8030E-01  9.8821E-01  3.2757E+00  4.5973E-01  6.1500E-01  8.3463E-01
             9.9013E-01
 PARAMETER:  8.1944E-02 -1.5962E+00 -1.6679E-01  4.7695E-01 -4.4421E-01  8.8143E-02  1.2865E+00 -6.7712E-01 -3.8614E-01 -8.0766E-02
             9.0082E-02
 GRADIENT:  -4.6811E-03 -5.9819E-02 -2.1769E-01  6.4558E-01 -1.7670E+00 -6.5794E-03  2.8126E-01  3.2646E-02  3.3444E-01  4.5950E-02
             1.9353E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2407
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.2126E-04  3.5305E-02 -1.7015E-02 -2.4653E-02 -3.6217E-04
 SE:             2.9876E-02  1.6073E-02  1.0952E-02  2.5559E-02  2.3627E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7540E-01  2.8057E-02  1.2026E-01  3.3476E-01  9.8777E-01

 ETASHRINKSD(%)  1.0000E-10  4.6152E+01  6.3311E+01  1.4375E+01  2.0848E+01
 ETASHRINKVR(%)  1.0000E-10  7.1004E+01  8.6539E+01  2.6683E+01  3.7349E+01
 EBVSHRINKSD(%)  4.1877E-01  5.5406E+01  6.4804E+01  1.0512E+01  1.7166E+01
 EBVSHRINKVR(%)  8.3579E-01  8.0113E+01  8.7613E+01  1.9919E+01  3.1385E+01
 RELATIVEINF(%)  9.8363E+01  4.8046E+00  9.5008E-01  2.1069E+01  5.2142E+00
 EPSSHRINKSD(%)  4.4536E+01
 EPSSHRINKVR(%)  6.9237E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1678.1480723206582     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -942.99724575692005     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.82
 Elapsed covariance  time in seconds:     6.31
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1678.148       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  1.83E-01  7.66E-01  1.46E+00  5.80E-01  9.88E-01  3.28E+00  4.60E-01  6.15E-01  8.35E-01  9.90E-01
 


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
 
         2.94E-02  9.08E-02  2.25E-01  6.40E-02  1.27E-01  6.69E-02  1.18E+00  4.04E-01  8.13E-02  1.63E-01  7.40E-02
 


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
+        8.66E-04
 
 TH 2
+        6.21E-05  8.24E-03
 
 TH 3
+       -7.57E-04  2.01E-03  5.07E-02
 
 TH 4
+       -1.18E-04 -2.92E-03  9.80E-03  4.10E-03
 
 TH 5
+       -3.82E-04  2.57E-03  2.82E-02  4.84E-03  1.62E-02
 
 TH 6
+        4.46E-04 -2.31E-04 -1.26E-03  9.85E-05 -8.92E-04  4.47E-03
 
 TH 7
+        2.65E-03 -8.63E-02 -1.06E-01  8.02E-03 -7.32E-02  7.26E-03  1.40E+00
 
 TH 8
+       -1.71E-03  8.79E-04  4.44E-02  7.01E-03  2.35E-02 -2.31E-05 -5.55E-02  1.64E-01
 
 TH 9
+        1.63E-05  1.60E-03  7.50E-03  1.54E-03  4.41E-03 -6.75E-04 -5.37E-02 -1.11E-03  6.62E-03
 
 TH10
+       -9.83E-05  2.45E-03  2.84E-02  5.04E-03  1.63E-02 -5.08E-04 -6.64E-02  3.81E-03  6.14E-03  2.65E-02
 
 TH11
+        2.31E-04  3.36E-04  1.91E-04  3.30E-04  2.53E-04 -1.71E-04 -1.26E-02 -9.40E-03  1.51E-03  6.64E-04  5.47E-03
 
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
+        2.94E-02
 
 TH 2
+        2.33E-02  9.08E-02
 
 TH 3
+       -1.14E-01  9.86E-02  2.25E-01
 
 TH 4
+       -6.27E-02 -5.03E-01  6.80E-01  6.40E-02
 
 TH 5
+       -1.02E-01  2.22E-01  9.82E-01  5.94E-01  1.27E-01
 
 TH 6
+        2.27E-01 -3.80E-02 -8.39E-02  2.30E-02 -1.05E-01  6.69E-02
 
 TH 7
+        7.61E-02 -8.05E-01 -3.98E-01  1.06E-01 -4.86E-01  9.19E-02  1.18E+00
 
 TH 8
+       -1.44E-01  2.39E-02  4.88E-01  2.71E-01  4.56E-01 -8.54E-04 -1.16E-01  4.04E-01
 
 TH 9
+        6.81E-03  2.17E-01  4.10E-01  2.96E-01  4.26E-01 -1.24E-01 -5.59E-01 -3.36E-02  8.13E-02
 
 TH10
+       -2.05E-02  1.66E-01  7.76E-01  4.84E-01  7.87E-01 -4.67E-02 -3.45E-01  5.79E-02  4.64E-01  1.63E-01
 
 TH11
+        1.06E-01  5.01E-02  1.15E-02  6.97E-02  2.69E-02 -3.45E-02 -1.44E-01 -3.14E-01  2.51E-01  5.51E-02  7.40E-02
 
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
+        1.31E+03
 
 TH 2
+       -1.49E+02  1.01E+03
 
 TH 3
+        7.26E+01  2.81E+02  1.22E+03
 
 TH 4
+       -4.95E+01  6.65E+02 -3.29E+02  1.38E+03
 
 TH 5
+       -1.19E+02 -5.60E+02 -1.86E+03  5.39E+01  3.42E+03
 
 TH 6
+       -1.30E+02 -5.21E+01 -3.57E+01 -1.02E+02  1.35E+02  2.55E+02
 
 TH 7
+       -1.47E+01  5.29E+01  8.14E+00  1.01E+01  1.60E+00  9.40E-01  5.11E+00
 
 TH 8
+        5.73E+00 -1.13E+01 -4.47E+01  1.77E+01  1.57E+01 -5.06E+00 -1.16E+00  1.54E+01
 
 TH 9
+       -8.29E+01  1.55E+02  2.25E+01 -9.90E+01  5.90E+01  4.01E+01  2.45E+01 -1.77E+00  3.52E+02
 
 TH10
+        3.62E+00 -8.02E+01 -1.01E+02  4.02E+01 -7.02E+01 -2.23E+01 -9.28E+00  3.07E+01 -7.47E+01  1.78E+02
 
 TH11
+       -4.54E+01 -1.25E+01 -9.88E+00 -4.02E+01 -2.99E+01  2.88E+00  5.31E-01  2.07E+01 -3.75E+01  3.90E+01  2.32E+02
 
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
 #CPUT: Total CPU Time in Seconds,       39.192
Stop Time:
Wed Sep 29 15:50:59 CDT 2021
