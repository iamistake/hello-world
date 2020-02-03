%%Mērījumu datu apstrāde

%pieņemsim kā mums ir merījumu dati
% mainam sprigumu un mēram stravu
Vm = [-1 0.3 1.5 2.5 3.2}
 Vm = [-1 0.3 1.5 2.5 3.2}
                         ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched delimiters.
} 
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm,Im,'-o')
%pielaikosim 2.kārtas polinomu
%y = a*x^2+b*x+c
%polifit - meklē polinomu koeficientus
% C = polyfit(x,y,N)
% N = polinoma kārta
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

%y=C(1)*x^2+C(2)*x+C(3);
%definēsim x ar sīkāku soli 
V = -1:0.01:3.2;
V = min(Vm):0,01:max(Vm);

V =

    -1     0

V = min(Vm):0.01:max(Vm);
V = linspace(min(Vm),max(Vm),100);
%liekam x mūsu izteiksmē
I =C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

V = -1:0.01:3.2;
V = linspace(min(Vm),max(Vm),100);
I =C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
I =C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

C = polyfit(Vm,Im,3);
%izmantosim polyval funkciju kas apreikinas polinoma vertibas
%I =C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
I = polyval(C,V);
%sintakse ir y= polyval(C,x)
plot(Vm,Im,'o',V,I)
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,4);
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
%gadijumu kad pielaikota polinoma karta ir vienada ar (n - 1 ) , kur n - punkts sauc par polinomialo interpolaciju 
% (polinomu iet tiesi caur merijumu punktu ,bet citus gadijumus sauc par polinomialo aproksimaciju 
%(tad polinoms un merijumu punkti var nesakrist)

%uzdevums atkartot pirmai kartai
C = polyfit(Vm,Im,1);
I = polyval(C,V);
plot(Vm,Im,'o',V,I)



%%Mērījumu serijas
%pienemsim ka mes  katrai sprieguma vertibai stravu nomerisim 5 reizes
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 2.1 2.5 3.2 4.6;
         0.9 1.9 2.3 3.2 4.4]

Im =

    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.2000    4.6000
    0.9000    1.9000    2.3000    3.2000    4.4000

%pameiginasim to uzzimet ar plot
plot(V,m
 plot(V,m
         ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched delimiters.
} 
plot(V,m)
{Undefined function or variable 'm'.
} 
plot(Vm,Im,'-o')
%%
%matlab zime matricas pa kolonam
%musu dati bija ierakstiti pa rindam
%tapec ja transpone matricas
plot(Vm,Im','-o')
%pielaikosim polinomu
%strada tikai vektoriem
%strada tikai vektoriem
%strada tikai vektoriem polifit
figure
Im = [1.1 2.2 2.1 3.2 4.7;
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 2.1 2.5 3.2 4.6;
         0.9 1.9 2.3 3.2 4.4]

Im =

    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.2000    4.6000
    0.9000    1.9000    2.3000    3.2000    4.4000

A = [1 2 3 4 5];
sum(A)

ans =

    15

sum(Im)

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

Ivid = sum(Im)/5

Ivid =

    0.9400    2.0000    2.3800    3.2600    4.5000

sum(Im,2)

ans =

   13.3000
   13.1000
   13.1000
   13.2000
   12.7000

sum(Im,1)

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

sum(Im,2)

ans =

   13.3000
   13.1000
   13.1000
   13.2000
   12.7000

Ivid = mean(Im)

Ivid =

    0.9400    2.0000    2.3800    3.2600    4.5000

C = polyfit(Vm,Im,3);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
C = polyfit(Vm,Ivid,3);
V = linspace(min(Vm),max(Vm),100);
I = polyval(C,V);
plot (Vm,Ivid,'-o')
plot (Vm,Ivid,'o r','-o')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid data argument.
} 
plot (Vm,Ivid,'- & o')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.
} 
linetype
{Undefined function or variable 'linetype'.
} 
help
HELP topics:

<a href="matlab:help user/lab1">user/lab1</a>                      - (No table of contents file)
<a href="matlab:help sdr_book_library">sdr_book_library</a>               - (No table of contents file)
<a href="matlab:help matlab/sparfun">matlab/sparfun</a>                 - Sparse matrices.
<a href="matlab:help matlab/elfun">matlab/elfun</a>                   - Elementary math functions.
<a href="matlab:help matlab/iofun">matlab/iofun</a>                   - File input and output.
<a href="matlab:help matlab/datatypes">matlab/datatypes</a>               - Data types and structures.
<a href="matlab:help matlab/specfun">matlab/specfun</a>                 - Specialized math functions.
<a href="matlab:help matlab/funfun">matlab/funfun</a>                  - Function functions and ODE solvers.
<a href="matlab:help matlab/elmat">matlab/elmat</a>                   - Elementary matrices and matrix manipulation.
<a href="matlab:help matlab/timefun">matlab/timefun</a>                 - Time and dates.
<a href="matlab:help matlab/polyfun">matlab/polyfun</a>                 - Interpolation and polynomials.
<a href="matlab:help matlab/ops">matlab/ops</a>                     - Operators and special characters.
<a href="matlab:help matlab/general">matlab/general</a>                 - General purpose commands.
<a href="matlab:help matlab/validators">matlab/validators</a>              - (No table of contents file)
<a href="matlab:help matlab/strfun">matlab/strfun</a>                  - Character arrays and strings.
<a href="matlab:help matlab/matfun">matlab/matfun</a>                  - Matrix functions    - numerical linear algebra.
<a href="matlab:help matlab/lang">matlab/lang</a>                    - Programming language constructs.
<a href="matlab:help matlab/datafun">matlab/datafun</a>                 - Data analysis and Fourier transforms.
<a href="matlab:help matlab/randfun">matlab/randfun</a>                 - Random matrices and random streams.
<a href="matlab:help codeanalysis/analysis">codeanalysis/analysis</a>          - (No table of contents file)
<a href="matlab:help matlab/demos">matlab/demos</a>                   - Examples.
<a href="matlab:help unittest/core">unittest/core</a>                  - (No table of contents file)
<a href="matlab:help hardware/stubs">hardware/stubs</a>                 - (No table of contents file)
<a href="matlab:help matlab/verctrl">matlab/verctrl</a>                 - (No table of contents file)
<a href="matlab:help matlab/graph2d">matlab/graph2d</a>                 - Two dimensional graphs.
<a href="matlab:help matlab/graph3d">matlab/graph3d</a>                 - Three dimensional graphs.
<a href="matlab:help matlab/graphics">matlab/graphics</a>                - Handle Graphics.
<a href="matlab:help graphics/obsolete">graphics/obsolete</a>              - (No table of contents file)
<a href="matlab:help matlab/plottools">matlab/plottools</a>               - Graphical plot editing tools 
<a href="matlab:help matlab/scribe">matlab/scribe</a>                  - Annotation and Plot Editing.
<a href="matlab:help scribe/obsolete">scribe/obsolete</a>                - (No table of contents file)
<a href="matlab:help matlab/specgraph">matlab/specgraph</a>               - Specialized graphs.
<a href="matlab:help matlab/uitools">matlab/uitools</a>                 - Graphical user interface components and tools
<a href="matlab:help uitools/obsolete">uitools/obsolete</a>               - (No table of contents file)
<a href="matlab:help matlab/codetools">matlab/codetools</a>               - Commands for creating and debugging code
<a href="matlab:help matlab/mapreduceio">matlab/mapreduceio</a>             - (No table of contents file)
<a href="matlab:help graphics/maps">graphics/maps</a>                  - (No table of contents file)
<a href="matlab:help performance/core">performance/core</a>               - (No table of contents file)
<a href="matlab:help matlab/bigdata">matlab/bigdata</a>                 - (No table of contents file)
<a href="matlab:help matlab/images">matlab/images</a>                  - (No table of contents file)
<a href="matlab:help matlab/datamanager">matlab/datamanager</a>             - (No table of contents file)
<a href="matlab:help matlab/helptools">matlab/helptools</a>               - Help commands.
<a href="matlab:help matlab/winfun">matlab/winfun</a>                  - Windows Operating System Interface Files (COM/DDE)
<a href="matlab:help winfun/NET">winfun/NET</a>                     - Using .NET from within MATLAB
<a href="matlab:help matlab/optimfun">matlab/optimfun</a>                - Optimization and root finding.
<a href="matlab:help matlab/datastoreio">matlab/datastoreio</a>             - (No table of contents file)
<a href="matlab:help toolbox/local">toolbox/local</a>                  - General preferences and configuration information.
<a href="matlab:help matlab/graphfun">matlab/graphfun</a>                - (No table of contents file)
<a href="matlab:help matlab/guide">matlab/guide</a>                   - Graphical user interface design environment
<a href="matlab:help simulink/blocks">simulink/blocks</a>                - Simulink block library.
<a href="matlab:help simulink">simulink</a>                       - 
<a href="matlab:help simulink/MPlayIO">simulink/MPlayIO</a>               - (No table of contents file)
<a href="matlab:help simulink/units">simulink/units</a>                 - (No table of contents file)
<a href="matlab:help simulink/model_transformer">simulink/model_transformer</a>     - (No table of contents file)
<a href="matlab:help simulink/clone_detection">simulink/clone_detection</a>       - (No table of contents file)
<a href="matlab:help simulink/sfuncheck">simulink/sfuncheck</a>             - (No table of contents file)
<a href="matlab:help config/m">config/m</a>                       - (No table of contents file)
<a href="matlab:help core/m">core/m</a>                         - (No table of contents file)
<a href="matlab:help asap2">asap2</a>                          - (No table of contents file)
<a href="matlab:help asap2/user">asap2/user</a>                     - (No table of contents file)
<a href="matlab:help can/blocks">can/blocks</a>                     - (No table of contents file)
<a href="matlab:help common">common</a>                         - (No table of contents file)
<a href="matlab:help coder">coder</a>                          - Simulink Coder
<a href="matlab:help targets/pil">targets/pil</a>                    - (No table of contents file)
<a href="matlab:help simdemos/aerospace">simdemos/aerospace</a>             - (No table of contents file)
<a href="matlab:help coder/advisor">coder/advisor</a>                  - (No table of contents file)
<a href="matlab:help simulink/modeladvisor">simulink/modeladvisor</a>          - (No table of contents file)
<a href="matlab:help modeladvisor/fixpt">modeladvisor/fixpt</a>             - (No table of contents file)
<a href="matlab:help modeladvisor/misra">modeladvisor/misra</a>             - (No table of contents file)
<a href="matlab:help modeladvisor/security">modeladvisor/security</a>          - (No table of contents file)
<a href="matlab:help testsequence">testsequence</a>                   - (No table of contents file)
<a href="matlab:help automotive/fuelsys">automotive/fuelsys</a>             - (No table of contents file)
<a href="matlab:help simulink/hmi">simulink/hmi</a>                   - (No table of contents file)
<a href="matlab:help rtw/accel">rtw/accel</a>                      - (No table of contents file)
<a href="matlab:help coder_core">coder_core</a>                     - (No table of contents file)
<a href="matlab:help simdemos/automotive">simdemos/automotive</a>            - (No table of contents file)
<a href="matlab:help simulink/simdemos">simulink/simdemos</a>              - Simulink examples
<a href="matlab:help simulink/frameedit">simulink/frameedit</a>             - (No table of contents file)
<a href="matlab:help simulink_export_methods">simulink_export_methods</a>        - (No table of contents file)
<a href="matlab:help simulink/components">simulink/components</a>            - Simulink components.
<a href="matlab:help simulink/dee">simulink/dee</a>                   - Differential Equation Editor
<a href="matlab:help rtwdemos">rtwdemos</a>                       - Simulink Coder Demos
<a href="matlab:help rtwdemos/rsimdemos">rtwdemos/rsimdemos</a>             - (No table of contents file)
<a href="matlab:help library/simulinkcoder">library/simulinkcoder</a>          - (No table of contents file)
<a href="matlab:help blocks/obsolete">blocks/obsolete</a>                - (No table of contents file)
<a href="matlab:help simdemos/simgeneral">simdemos/simgeneral</a>            - (No table of contents file)
<a href="matlab:help widgets/m">widgets/m</a>                      - (No table of contents file)
<a href="matlab:help automotive/powerwindow">automotive/powerwindow</a>         - (No table of contents file)
<a href="matlab:help simdemos/simfeatures">simdemos/simfeatures</a>           - (No table of contents file)
<a href="matlab:help simfeatures/modelreference">simfeatures/modelreference</a>     - (No table of contents file)
<a href="matlab:help simfeatures/datadictionary">simfeatures/datadictionary</a>     - (No table of contents file)
<a href="matlab:help slde">slde</a>                           - (No table of contents file)
<a href="matlab:help stateflow/sfdemos">stateflow/sfdemos</a>              - Stateflow examples and samples.
<a href="matlab:help stateflow">stateflow</a>                      - (No table of contents file)
<a href="matlab:help rptgendemos">rptgendemos</a>                    - (No table of contents file)
<a href="matlab:help symbolic">symbolic</a>                       - Math Toolbox
<a href="matlab:help shared/statslib">shared/statslib</a>                - Statistics and Machine Learning Toolbox Library
<a href="matlab:help blks/masks">blks/masks</a>                     - (No table of contents file)
<a href="matlab:help blks/mex">blks/mex</a>                       - (No table of contents file)
<a href="matlab:help controllib/graphics">controllib/graphics</a>            - Control Library - Graphics.
<a href="matlab:help graphics/utils">graphics/utils</a>                 - (No table of contents file)
<a href="matlab:help graphics/plotoptions">graphics/plotoptions</a>           - (No table of contents file)
<a href="matlab:help dig">dig</a>                            - (No table of contents file)
<a href="matlab:help dsp">dsp</a>                            - System Toolbox
<a href="matlab:help dsputilities">dsputilities</a>                   - (No table of contents file)
<a href="matlab:help dsputilities/dspinit">dsputilities/dspinit</a>           - (No table of contents file)
<a href="matlab:help dsputilities/dspmex">dsputilities/dspmex</a>            - (No table of contents file)
<a href="matlab:help optim">optim</a>                          - ization Toolbox
<a href="matlab:help matlab/toolbox_packaging">matlab/toolbox_packaging</a>       - (No table of contents file)
<a href="matlab:help controllib/engine">controllib/engine</a>              - Control Library - Engine.
<a href="matlab:help engine/numerics">engine/numerics</a>                - (No table of contents file)
<a href="matlab:help engine/options">engine/options</a>                 - (No table of contents file)
<a href="matlab:help engine/blocks">engine/blocks</a>                  - (No table of contents file)
<a href="matlab:help finance/calendar">finance/calendar</a>               - Financial Toolbox calendar functions.
<a href="matlab:help finance">finance</a>                        - Financial Toolbox
<a href="matlab:help finance/finsupport">finance/finsupport</a>             - (No table of contents file)
<a href="matlab:help finance/ftseries">finance/ftseries</a>               - Financial Toolbox Times Series Functions.
<a href="matlab:help dsp/filterdesign">dsp/filterdesign</a>               - (No table of contents file)
<a href="matlab:help ident">ident</a>                          - System Identification Toolbox
<a href="matlab:help ident">ident</a>                          - Nonlinear System Identification features. Type "help ident" for more info.
<a href="matlab:help ident/idobsolete">ident/idobsolete</a>               - (No table of contents file)
<a href="matlab:help ident/idguis">ident/idguis</a>                   - (No table of contents file)
<a href="matlab:help ident/idutils">ident/idutils</a>                  - (No table of contents file)
<a href="matlab:help ident/idrecursive">ident/idrecursive</a>              - (No table of contents file)
<a href="matlab:help library/m">library/m</a>                      - (No table of contents file)
<a href="matlab:help simulink/sl_async_streaming">simulink/sl_async_streaming</a>    - (No table of contents file)
<a href="matlab:help ident/iddemos">ident/iddemos</a>                  - (No table of contents file)
<a href="matlab:help iddemos/examples">iddemos/examples</a>               - (No table of contents file)
<a href="matlab:help dsp/examples">dsp/examples</a>                   - (No table of contents file)
<a href="matlab:help fuzzy/fuzdemos">fuzzy/fuzdemos</a>                 - Fuzzy Logic Toolbox Demos.
<a href="matlab:help shared/slvnv">shared/slvnv</a>                   - (No table of contents file)
<a href="matlab:help dpvu">dpvu</a>                           - (No table of contents file)
<a href="matlab:help dpvu/metamodel">dpvu/metamodel</a>                 - (No table of contents file)
<a href="matlab:help dpvu/actions">dpvu/actions</a>                   - (No table of contents file)
<a href="matlab:help dsp/dialog">dsp/dialog</a>                     - (No table of contents file)
<a href="matlab:help matlab/webcam">matlab/webcam</a>                  - Webcam support.
<a href="matlab:help simscapedemos">simscapedemos</a>                  - (No table of contents file)
<a href="matlab:help elecdemos">elecdemos</a>                      - (No table of contents file)
<a href="matlab:help instrumentdemos">instrumentdemos</a>                - (No table of contents file)
<a href="matlab:help optimdemos">optimdemos</a>                     - Demonstrations.
<a href="matlab:help eml">eml</a>                            - (No table of contents file)
<a href="matlab:help pm_sli">pm_sli</a>                         - (No table of contents file)
<a href="matlab:help shared/measure">shared/measure</a>                 - (No table of contents file)
<a href="matlab:help shared/m3i">shared/m3i</a>                     - (No table of contents file)
<a href="matlab:help rfdemos">rfdemos</a>                        - RF Toolbox Demos
<a href="matlab:help codeinstrum">codeinstrum</a>                    - (No table of contents file)
<a href="matlab:help coder/xrelexport">coder/xrelexport</a>               - (No table of contents file)
<a href="matlab:help signal">signal</a>                         - Processing Toolbox 
<a href="matlab:help signal/sigtools">signal/sigtools</a>                - (No table of contents file)
<a href="matlab:help signal/sptoolgui">signal/sptoolgui</a>               - (No table of contents file)
<a href="matlab:help webservices/restful">webservices/restful</a>            - (No table of contents file)
<a href="matlab:help interfaces/webservices">interfaces/webservices</a>         - MATLAB Web Services Interfaces.
<a href="matlab:help ecoderdemos">ecoderdemos</a>                    - (No table of contents file)
<a href="matlab:help instrument">instrument</a>                     - Control Toolbox
<a href="matlab:help instrumentblks">instrumentblks</a>                 - (No table of contents file)
<a href="matlab:help instrumentblks/instrumentmex">instrumentblks/instrumentmex</a>   - (No table of contents file)
<a href="matlab:help instrumentblks/instrumentmasks">instrumentblks/instrumentmasks</a> - (No table of contents file)
<a href="matlab:help elec">elec</a>                           - Simscape Electronics 
<a href="matlab:help stats/distributed">stats/distributed</a>              - (No table of contents file)
<a href="matlab:help shared/siglib">shared/siglib</a>                  - (No table of contents file)
<a href="matlab:help commhdloptimized">commhdloptimized</a>               - (No table of contents file)
<a href="matlab:help commhdloptimized/commutilities">commhdloptimized/commutilities</a> - (No table of contents file)
<a href="matlab:help hdllib/ml_lib">hdllib/ml_lib</a>                  - (No table of contents file)
<a href="matlab:help coder">coder</a>                          - MATLAB Coder
<a href="matlab:help imaqdemos">imaqdemos</a>                      - Image Acquisition Toolbox.
<a href="matlab:help hdlshared_gui">hdlshared_gui</a>                  - (No table of contents file)
<a href="matlab:help matlab/serial">matlab/serial</a>                  - (No table of contents file)
<a href="matlab:help simulink/slhistory">simulink/slhistory</a>             - (No table of contents file)
<a href="matlab:help sta/derivedSignals">sta/derivedSignals</a>             - (No table of contents file)
<a href="matlab:help factsdemo">factsdemo</a>                      - (No table of contents file)
<a href="matlab:help comm/cdma2000">comm/cdma2000</a>                  - The first two lines are intentionally left blank, to avoid participation 
<a href="matlab:help interfaces/python">interfaces/python</a>              - (No table of contents file)
<a href="matlab:help advisor/m">advisor/m</a>                      - (No table of contents file)
<a href="matlab:help advisor/m">advisor/m</a>                      - (No table of contents file)
<a href="matlab:help shared/configset">shared/configset</a>               - (No table of contents file)
<a href="matlab:help AUTOSAR">AUTOSAR</a>                        - (No table of contents file)
<a href="matlab:help iodata/iomap">iodata/iomap</a>                   - (No table of contents file)
<a href="matlab:help globaloptim">globaloptim</a>                    - Global Optimization Toolbox
<a href="matlab:help shared/sl_coverage_configset">shared/sl_coverage_configset</a>   - (No table of contents file)
<a href="matlab:help advisor/m">advisor/m</a>                      - (No table of contents file)
<a href="matlab:help compiler/mltall">compiler/mltall</a>                - (No table of contents file)
<a href="matlab:help coder/connectivity">coder/connectivity</a>             - (No table of contents file)
<a href="matlab:help imaqblks">imaqblks</a>                       - (No table of contents file)
<a href="matlab:help imaqblks/imaqmex">imaqblks/imaqmex</a>               - (No table of contents file)
<a href="matlab:help imaqblks/imaqmasks">imaqblks/imaqmasks</a>             - (No table of contents file)
<a href="matlab:help shared/rptgen">shared/rptgen</a>                  - (No table of contents file)
<a href="matlab:help curvefit">curvefit</a>                       - Curve Fitting Toolbox
<a href="matlab:help curvefit/splines">curvefit/splines</a>               - Curve Fitting Toolbox -- Spline Functions
<a href="matlab:help curvefit/sftoolgui">curvefit/sftoolgui</a>             - (No table of contents file)
<a href="matlab:help foundation/simscape">foundation/simscape</a>            - Simscape
<a href="matlab:help econ">econ</a>                           - ometrics Toolbox
<a href="matlab:help econdata">econdata</a>                       - Econometrics Toolbox: Data, Demos, and Examples
<a href="matlab:help shared/reqmgt">shared/reqmgt</a>                  - Requirements Management Interface.
<a href="matlab:help reqmgt/mmutils">reqmgt/mmutils</a>                 - Subdirectory "shared/reqmgt/mmutils" - part of RMI data model infrastructure
<a href="matlab:help fluids">fluids</a>                         - Simscape Fluids 
<a href="matlab:help spcuilib/slscopes">spcuilib/slscopes</a>              - (No table of contents file)
<a href="matlab:help powerdemo/power_electronics">powerdemo/power_electronics</a>    - (No table of contents file)
<a href="matlab:help trackinglib">trackinglib</a>                    - Tracking Filters
<a href="matlab:help images/imdemos">images/imdemos</a>                 - Image Processing Toolbox --- demos
<a href="matlab:help comm/examples">comm/examples</a>                  - (No table of contents file)
<a href="matlab:help rptgenextdemos/slxmlcomp">rptgenextdemos/slxmlcomp</a>       - (No table of contents file)
<a href="matlab:help fuzzy">fuzzy</a>                          - Logic Toolbox
<a href="matlab:help fuzzyutil">fuzzyutil</a>                      - (No table of contents file)
<a href="matlab:help network_engine">network_engine</a>                 - (No table of contents file)
<a href="matlab:help coder/codegendemos">coder/codegendemos</a>             - (No table of contents file)
<a href="matlab:help simulink/upgradeadvisor">simulink/upgradeadvisor</a>        - (No table of contents file)
<a href="matlab:help hdlcoder/hdlslrt">hdlcoder/hdlslrt</a>               - (No table of contents file)
<a href="matlab:help library/m">library/m</a>                      - (No table of contents file)
<a href="matlab:help foundation/util">foundation/util</a>                - (No table of contents file)
<a href="matlab:help foundation/errorhandler">foundation/errorhandler</a>        - (No table of contents file)
<a href="matlab:help foundation/xmakefile">foundation/xmakefile</a>           - (No table of contents file)
<a href="matlab:help foundation/hookpoints">foundation/hookpoints</a>          - (No table of contents file)
<a href="matlab:help powersys/library">powersys/library</a>               - (No table of contents file)
<a href="matlab:help shared/rflib">shared/rflib</a>                   - (No table of contents file)
<a href="matlab:help toolbox/slcoverage">toolbox/slcoverage</a>             - (No table of contents file)
<a href="matlab:help reg/m">reg/m</a>                          - (No table of contents file)
<a href="matlab:help utils/m">utils/m</a>                        - (No table of contents file)
<a href="matlab:help optim/problemdef">optim/problemdef</a>               - (No table of contents file)
<a href="matlab:help shared/diagnostic">shared/diagnostic</a>              - (No table of contents file)
<a href="matlab:help control">control</a>                        - System Toolbox
<a href="matlab:help control/ctrlmodels">control/ctrlmodels</a>             - Control System Toolbox -- Linear models.
<a href="matlab:help control/ctrlanalysis">control/ctrlanalysis</a>           - Control System Toolbox -- Linear analysis.
<a href="matlab:help control/ctrldesign">control/ctrldesign</a>             - Control System Toolbox -- Compensator design and tuning.
<a href="matlab:help control/ctrlplots">control/ctrlplots</a>              - Control System Toolbox -- Plot creation and manipulation.
<a href="matlab:help control/ctrlguis">control/ctrlguis</a>               - Control System Toolbox -- Applications.
<a href="matlab:help control/ctrlobsolete">control/ctrlobsolete</a>           - Control System Toolbox -- obsolete commands.
<a href="matlab:help control/ctrlutil">control/ctrlutil</a>               - Control System Toolbox -- Utilities and MEX files.
<a href="matlab:help matlab/configtools">matlab/configtools</a>             - (No table of contents file)
<a href="matlab:help matlab/networklib">matlab/networklib</a>              - Network support.
<a href="matlab:help realtime">realtime</a>                       - Run Simulink model on target hardware
<a href="matlab:help sl3ddemos">sl3ddemos</a>                      - Simulink 3D Animation examples.
<a href="matlab:help utilities/init">utilities/init</a>                 - (No table of contents file)
<a href="matlab:help matlab/apps">matlab/apps</a>                    - (No table of contents file)
<a href="matlab:help utils/m">utils/m</a>                        - (No table of contents file)
<a href="matlab:help signal/sigdemos">signal/sigdemos</a>                - (No table of contents file)
<a href="matlab:help sh">sh</a>                             - (No table of contents file)
<a href="matlab:help shared/imageslib">shared/imageslib</a>               - Image Processing Toolbox Library
<a href="matlab:help mli/m">mli/m</a>                          - (No table of contents file)
<a href="matlab:help shared/instrument">shared/instrument</a>              - (No table of contents file)
<a href="matlab:help sldv_cc">sldv_cc</a>                        - (No table of contents file)
<a href="matlab:help powersys/powerdemo">powersys/powerdemo</a>             - Simscape Power Systems Examples
<a href="matlab:help powerdemo/power_utility">powerdemo/power_utility</a>        - (No table of contents file)
<a href="matlab:help appdesigner">appdesigner</a>                    - (No table of contents file)
<a href="matlab:help sl_studio">sl_studio</a>                      - (No table of contents file)
<a href="matlab:help coder/coverage">coder/coverage</a>                 - (No table of contents file)
<a href="matlab:help shared">shared</a>                         - HDL Library
<a href="matlab:help rf">rf</a>                             - Toolbox
<a href="matlab:help rftool">rftool</a>                         - RF Tool Graphical User Interface
<a href="matlab:help hdllib/sl_lib">hdllib/sl_lib</a>                  - (No table of contents file)
<a href="matlab:help uicomponents/components">uicomponents/components</a>        - (No table of contents file)
<a href="matlab:help sl3d">sl3d</a>                           - Simulink 3D Animation
<a href="matlab:help mli/m">mli/m</a>                          - (No table of contents file)
<a href="matlab:help hdlcoder/hdlcommon">hdlcoder/hdlcommon</a>             - (No table of contents file)
<a href="matlab:help hdlcommon/modelcheckeradvisor">hdlcommon/modelcheckeradvisor</a>  - (No table of contents file)
<a href="matlab:help fixedpoint">fixedpoint</a>                     - Fixed-Point Designer
<a href="matlab:help targets/ecoder">targets/ecoder</a>                 - (No table of contents file)
<a href="matlab:help mpt">mpt</a>                            - Module Packaging Feature
<a href="matlab:help mpt/user_specific">mpt/user_specific</a>              - (No table of contents file)
<a href="matlab:help coder">coder</a>                          - Embedded Coder
<a href="matlab:help coder/float2fixed">coder/float2fixed</a>              - (No table of contents file)
<a href="matlab:help float2fixed/demos">float2fixed/demos</a>              - (No table of contents file)
<a href="matlab:help float2fixed/mathlib">float2fixed/mathlib</a>            - (No table of contents file)
<a href="matlab:help sta/sourceBlocks">sta/sourceBlocks</a>               - (No table of contents file)
<a href="matlab:help spcuilib/unifiedscopes">spcuilib/unifiedscopes</a>         - (No table of contents file)
<a href="matlab:help powerdemo/simple">powerdemo/simple</a>               - (No table of contents file)
<a href="matlab:help library/m">library/m</a>                      - (No table of contents file)
<a href="matlab:help shared/comparisons">shared/comparisons</a>             - (No table of contents file)
<a href="matlab:help shared/dastudio">shared/dastudio</a>                - (No table of contents file)
<a href="matlab:help dsphdl">dsphdl</a>                         - (No table of contents file)
<a href="matlab:help dsphdl/dsputilities">dsphdl/dsputilities</a>            - (No table of contents file)
<a href="matlab:help dspdemos">dspdemos</a>                       - DSP System Toolbox demonstrations and examples.
<a href="matlab:help javabuilder">javabuilder</a>                    - (No table of contents file)
<a href="matlab:help powerdemo/machines">powerdemo/machines</a>             - (No table of contents file)
<a href="matlab:help idelinkdemos">idelinkdemos</a>                   - (No table of contents file)
<a href="matlab:help curvefitdemos">curvefitdemos</a>                  - Curve Fitting Toolbox -- Examples
<a href="matlab:help shared/io">shared/io</a>                      - (No table of contents file)
<a href="matlab:help powersys">powersys</a>                       - (No table of contents file)
<a href="matlab:help compiler/java">compiler/java</a>                  - (No table of contents file)
<a href="matlab:help slproject/examples">slproject/examples</a>             - (No table of contents file)
<a href="matlab:help shared/fmu_block">shared/fmu_block</a>               - (No table of contents file)
<a href="matlab:help ticcs/ccslinkblks">ticcs/ccslinkblks</a>              - (No table of contents file)
<a href="matlab:help ccslinkblks/rtdxsimblks">ccslinkblks/rtdxsimblks</a>        - (No table of contents file)
<a href="matlab:help ticcs/mdlinfo">ticcs/mdlinfo</a>                  - (No table of contents file)
<a href="matlab:help ticcs/util">ticcs/util</a>                     - (No table of contents file)
<a href="matlab:help ticcs/envChecker">ticcs/envChecker</a>               - (No table of contents file)
<a href="matlab:help foundation/pjtgenerator">foundation/pjtgenerator</a>        - (No table of contents file)
<a href="matlab:help pjtgenerator/tgtpref2">pjtgenerator/tgtpref2</a>          - (No table of contents file)
<a href="matlab:help pjtgenerator/mdlinfo">pjtgenerator/mdlinfo</a>           - (No table of contents file)
<a href="matlab:help pjtgenerator/blks">pjtgenerator/blks</a>              - (No table of contents file)
<a href="matlab:help blks/masks">blks/masks</a>                     - (No table of contents file)
<a href="matlab:help processor/tic2000">processor/tic2000</a>              - (No table of contents file)
<a href="matlab:help tic2000/utils">tic2000/utils</a>                  - (No table of contents file)
<a href="matlab:help stats/mlearnapp">stats/mlearnapp</a>                - Statistics and Machine Learning Toolbox
<a href="matlab:help matlab/filebrowser">matlab/filebrowser</a>             - (No table of contents file)
<a href="matlab:help sldv">sldv</a>                           - (No table of contents file)
<a href="matlab:help dsp/scopes">dsp/scopes</a>                     - (No table of contents file)
<a href="matlab:help simulink/slexportprevious">simulink/slexportprevious</a>      - (No table of contents file)
<a href="matlab:help sta_editor_block">sta_editor_block</a>               - (No table of contents file)
<a href="matlab:help toolbox/distcomp">toolbox/distcomp</a>               - Parallel Computing Toolbox
<a href="matlab:help distcomp">distcomp</a>                       - (No table of contents file)
<a href="matlab:help distcomp/user">distcomp/user</a>                  - (No table of contents file)
<a href="matlab:help distcomp/mpi">distcomp/mpi</a>                   - Parallel Computing Functions for Message Passing
<a href="matlab:help distcomp/parallel">distcomp/parallel</a>              - Parallel Algorithms
<a href="matlab:help parallel/util">parallel/util</a>                  - (No table of contents file)
<a href="matlab:help distcomp/lang">distcomp/lang</a>                  - Parallel computing programming language constructs.
<a href="matlab:help distcomp/cluster">distcomp/cluster</a>               - Functions and Classes for Parallel Computing with Clusters
<a href="matlab:help distcomp/gpu">distcomp/gpu</a>                   - There are several options available for using your computer's graphics 
<a href="matlab:help connector2/connector">connector2/connector</a>           - connector  Enable or disable the MATLAB Connector. The MATLAB Connector allows you to access a MATLAB session on a desktop from a mobile device using MATLAB Mobile.
<a href="matlab:help target">target</a>                         - (No table of contents file)
<a href="matlab:help signalwavelet">signalwavelet</a>                  - (No table of contents file)
<a href="matlab:help signalanalyzer">signalanalyzer</a>                 - (No table of contents file)
<a href="matlab:help matlab/imagesci">matlab/imagesci</a>                - (No table of contents file)
<a href="matlab:help shared/optimlib">shared/optimlib</a>                - Optimization Toolbox Library
<a href="matlab:help controllib/general">controllib/general</a>             - Control System Toolbox -- General Utilities.
<a href="matlab:help sps">sps</a>                            - Simscape Power Systems
<a href="matlab:help toolbox/compiler">toolbox/compiler</a>               - MATLAB Compiler
<a href="matlab:help stats/bayesoptim">stats/bayesoptim</a>               - (No table of contents file)
<a href="matlab:help stats/bigdata">stats/bigdata</a>                  - (No table of contents file)
<a href="matlab:help stats/classreg">stats/classreg</a>                 - (No table of contents file)
<a href="matlab:help stats/clustering">stats/clustering</a>               - (No table of contents file)
<a href="matlab:help stats/featlearn">stats/featlearn</a>                - (No table of contents file)
<a href="matlab:help stats">stats</a>                          - Statistics and Machine Learning Toolbox
<a href="matlab:help blks/masks">blks/masks</a>                     - (No table of contents file)
<a href="matlab:help symbolicdemos">symbolicdemos</a>                  - (No table of contents file)
<a href="matlab:help control/ctrldemos">control/ctrldemos</a>              - Control System Toolbox -- Examples.
<a href="matlab:help sta/editor">sta/editor</a>                     - (No table of contents file)
<a href="matlab:help fixedpoint/fidemos">fixedpoint/fidemos</a>             - (No table of contents file)
<a href="matlab:help sysarch">sysarch</a>                        - (No table of contents file)
<a href="matlab:help controllib/requirements">controllib/requirements</a>        - Control Library - Design Requirements.
<a href="matlab:help fixedandfloat/fxpdemos">fixedandfloat/fxpdemos</a>         - Fixed-Point Designer Demos
<a href="matlab:help stats/gpu">stats/gpu</a>                      - (No table of contents file)
<a href="matlab:help shared/filterdesignlib">shared/filterdesignlib</a>         - (No table of contents file)
<a href="matlab:help filterdesignlib/filterbuilder">filterdesignlib/filterbuilder</a>  - (No table of contents file)
<a href="matlab:help distcomp/pctdemos">distcomp/pctdemos</a>              - (No table of contents file)
<a href="matlab:help drivesdemo">drivesdemo</a>                     - (No table of contents file)
<a href="matlab:help dsp/hdl">dsp/hdl</a>                        - (No table of contents file)
<a href="matlab:help simulink_general/main">simulink_general/main</a>          - (No table of contents file)
<a href="matlab:help shared/mldatx">shared/mldatx</a>                  - (No table of contents file)
<a href="matlab:help rptgen">rptgen</a>                         - MATLAB Report Generator
<a href="matlab:help shared/sigbldr">shared/sigbldr</a>                 - (No table of contents file)
<a href="matlab:help simscape/m">simscape/m</a>                     - (No table of contents file)
<a href="matlab:help interfaces/json">interfaces/json</a>                - (No table of contents file)
<a href="matlab:help shared/maputils">shared/maputils</a>                - Map Utility Functions
<a href="matlab:help rtw">rtw</a>                            - (No table of contents file)
<a href="matlab:help tools/registry">tools/registry</a>                 - (No table of contents file)
<a href="matlab:help foundation/tfl">foundation/tfl</a>                 - (No table of contents file)
<a href="matlab:help AUTOSAR4p0/IFX">AUTOSAR4p0/IFX</a>                 - (No table of contents file)
<a href="matlab:help AUTOSAR4p0/IFL">AUTOSAR4p0/IFL</a>                 - (No table of contents file)
<a href="matlab:help tfl/gui">tfl/gui</a>                        - (No table of contents file)
<a href="matlab:help advisor/m">advisor/m</a>                      - (No table of contents file)
<a href="matlab:help shared/imaqlib">shared/imaqlib</a>                 - Image Acquisition Toolbox Library
<a href="matlab:help images/colorspaces">images/colorspaces</a>             - Image Processing Toolbox --- colorspaces
<a href="matlab:help images">images</a>                         - Image Processing Toolbox
<a href="matlab:help images/imdata">images/imdata</a>                  - Image Processing Toolbox --- sample images
<a href="matlab:help images/imuitools">images/imuitools</a>               - Image Processing Toolbox --- imuitools
<a href="matlab:help images/iptformats">images/iptformats</a>              - Image Processing Toolbox --- File Formats
<a href="matlab:help images/iptutils">images/iptutils</a>                - Image Processing Toolbox --- utilities
<a href="matlab:help coder/xrel">coder/xrel</a>                     - (No table of contents file)
<a href="matlab:help shared/sldv">shared/sldv</a>                    - sldvisactive         - Check if Simulink Design Verifier software is analyzing model 
<a href="matlab:help finance/findemos">finance/findemos</a>               - Financial Toolbox Examples
<a href="matlab:help commdemos">commdemos</a>                      - Communications System Toolbox Demos.
<a href="matlab:help dspblks">dspblks</a>                        - (No table of contents file)
<a href="matlab:help pedemos">pedemos</a>                        - (No table of contents file)
<a href="matlab:help shdemos">shdemos</a>                        - (No table of contents file)
<a href="matlab:help matlab/pathtool">matlab/pathtool</a>                - (No table of contents file)
<a href="matlab:help imaq">imaq</a>                           - Image Acquisition Toolbox
<a href="matlab:help globaloptimdemos">globaloptimdemos</a>               - Global Optimization Toolbox Demos
<a href="matlab:help controllib/estimation">controllib/estimation</a>          - Control Library - Estimation algorithms.
<a href="matlab:help toolbox/fixpoint">toolbox/fixpoint</a>               - Fixed-Point Designer
<a href="matlab:help fixpoint/fpca">fixpoint/fpca</a>                  - (No table of contents file)
<a href="matlab:help spc/src_ml">spc/src_ml</a>                     - (No table of contents file)
<a href="matlab:help foundation/utils">foundation/utils</a>               - (No table of contents file)
<a href="matlab:help utils/resource_config">utils/resource_config</a>          - (No table of contents file)
<a href="matlab:help blks/mex">blks/mex</a>                       - (No table of contents file)
<a href="matlab:help blks/masks">blks/masks</a>                     - (No table of contents file)
<a href="matlab:help ti/mdlinfo">ti/mdlinfo</a>                     - (No table of contents file)
<a href="matlab:help tils">tils</a>                           - (No table of contents file)
<a href="matlab:help blks/masks">blks/masks</a>                     - (No table of contents file)
<a href="matlab:help ARM/tfl">ARM/tfl</a>                        - (No table of contents file)
<a href="matlab:help etargets">etargets</a>                       - (No table of contents file)
<a href="matlab:help etargets/demoutils">etargets/demoutils</a>             - (No table of contents file)
<a href="matlab:help slreportgen/reportexplorer">slreportgen/reportexplorer</a>     - (No table of contents file)
<a href="matlab:help uicomponents">uicomponents</a>                   - (No table of contents file)
<a href="matlab:help uicomponents/graphics">uicomponents/graphics</a>          - (No table of contents file)
<a href="matlab:help blocks/sb2sl">blocks/sb2sl</a>                   - (No table of contents file)
<a href="matlab:help matlab/audiovideo">matlab/audiovideo</a>              - Audio and Video support.
<a href="matlab:help shared/can">shared/can</a>                     - (No table of contents file)
<a href="matlab:help canblks">canblks</a>                        - (No table of contents file)
<a href="matlab:help canmasks">canmasks</a>                       - (No table of contents file)
<a href="matlab:help canmex">canmex</a>                         - (No table of contents file)
<a href="matlab:help DRdemo">DRdemo</a>                         - (No table of contents file)
<a href="matlab:help fixedpointtool">fixedpointtool</a>                 - (No table of contents file)
<a href="matlab:help shared/channel">shared/channel</a>                 - (No table of contents file)
<a href="matlab:help matlab/timeseries">matlab/timeseries</a>              - Time series data visualization and exploration.
<a href="matlab:help ne_sli">ne_sli</a>                         - (No table of contents file)
<a href="matlab:help simulink/fixedandfloat">simulink/fixedandfloat</a>         - Fixed-Point Designer utilities.
<a href="matlab:help fixedandfloat/obsolete">fixedandfloat/obsolete</a>         - (No table of contents file)
<a href="matlab:help intelhost/tfl">intelhost/tfl</a>                  - (No table of contents file)
<a href="matlab:help statsdemos">statsdemos</a>                     - (No table of contents file)
<a href="matlab:help supportsoftware/upgrade">supportsoftware/upgrade</a>        - (No table of contents file)
<a href="matlab:help performancea">performancea</a>                   - (No table of contents file)
<a href="matlab:help shared/slcontrollib">shared/slcontrollib</a>            - Simulink Control Design Library
<a href="matlab:help comm">comm</a>                           - unications System Toolbox
<a href="matlab:help commutilities/comminit">commutilities/comminit</a>         - (No table of contents file)
<a href="matlab:help commutilities/commmex">commutilities/commmex</a>          - (No table of contents file)
<a href="matlab:help commutilities">commutilities</a>                  - (No table of contents file)
<a href="matlab:help commdeprecated">commdeprecated</a>                 - Archived MATLAB Files from Communications System Toolbox.
<a href="matlab:help matlab/reports">matlab/reports</a>                 - (No table of contents file)
<a href="matlab:help plutoradio_hspdef">plutoradio_hspdef</a>              - (No table of contents file)
<a href="matlab:help sdrrdemos">sdrrdemos</a>                      - (No table of contents file)
<a href="matlab:help lib/maci64">lib/maci64</a>                     - (No table of contents file)
<a href="matlab:help plutoradio_hspdef/plutoradiodemos">plutoradio_hspdef/plutoradiodemos</a> - (No table of contents file)
<a href="matlab:help sdrudemos">sdrudemos</a>                      - (No table of contents file)
<a href="matlab:help sdrrapps">sdrrapps</a>                       - (No table of contents file)
<a href="matlab:help lib/win64">lib/win64</a>                      - (No table of contents file)
<a href="matlab:help host/funcs">host/funcs</a>                     - (No table of contents file)
<a href="matlab:help sdru/usrp_uhd_mapi">sdru/usrp_uhd_mapi</a>             - (No table of contents file)
<a href="matlab:help sdrumex">sdrumex</a>                        - (No table of contents file)
<a href="matlab:help sdru">sdru</a>                           - Communications System Toolbox Support Package for USRP(R) Radio
<a href="matlab:help host/sdrmapi">host/sdrmapi</a>                   - (No table of contents file)
<a href="matlab:help sdrpluginbase/host">sdrpluginbase/host</a>             - (No table of contents file)
<a href="matlab:help sdru/uhdapps">sdru/uhdapps</a>                   - (No table of contents file)
<a href="matlab:help sdrbase/sdr">sdrbase/sdr</a>                    - Communications System Toolbox Support Packages for Software Defined Radios
<a href="matlab:help sdrr">sdrr</a>                           - Communications System Toolbox Support Package for RTL-SDR Radio
<a href="matlab:help sdrplugins/plutoradio">sdrplugins/plutoradio</a>          - Communications System Toolbox Support Package for ADALM-PLUTO Radio
<a href="matlab:help lib/glnxa64">lib/glnxa64</a>                    - (No table of contents file)
<a href="matlab:help sdrrmex">sdrrmex</a>                        - (No table of contents file)
<a href="matlab:help sdrrmapi">sdrrmapi</a>                       - (No table of contents file)
<a href="matlab:help sw_targeting/registry">sw_targeting/registry</a>          - (No table of contents file