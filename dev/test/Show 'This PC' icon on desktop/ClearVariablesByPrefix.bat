
:: Usage Call :ClearVariablesByPrefix myPrefix
:ClearVariablesByPrefix
for /f "tokens=1,2 delims==" %%a in ('set %~1 2^>nul') do set %%a=
if "[%~1]" NEQ "[]" shift & GoTo :ClearVariablesByPrefix
GoTo :EOF

