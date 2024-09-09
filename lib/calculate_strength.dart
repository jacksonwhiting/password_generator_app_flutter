/*
- Calculates the strength of the password based on four criteria:
(too weak!, weak, medium, strong)
- Takes Character Length (integer), includeUppercase (boolean), includeLowercase (boolean), includeNumbers (boolean), includeSymbols (boolean) as inputs
- Strength Criteria:

-- Too weak: 
--- Character Length < 8
--- Only one boolean true

-- Weak: 
--- 8 <= Character Length <= 10
--- Two boolean values true

-- Medium: 
--- 10 < Character Length <= 12
--- Three boolean values true

-- Strong: 
--- Character Length > 12
--- Four boolean values true

*/