import data.real.basic


/- TEXT:

Wir wollen nun am Beispiel der Funktion

.. math::
  f(x) = 7x^4 + x^3 + 3x^2 + 5x - 7

das Taylorpolynon des 4. Grades aufstellen. Als Entwicklungspunkt wählen wir den Punkt :math:`x_0 = 1`

Wir haben also gegeben

- :math:`f(x) = 7x^4 + x^3 + 3x^2 + 5x - 7`,
- :math:`x_0 = 1` und
- :math:`n = 4`.

Bevor wir mit dem ersten Schritt loslegen müssen wir zuerst die Funktion :math:`f` implementieren.

TEXT. -/

-- QUOTE:

def f (x: nat) := () -- dein Code hier

-- QUOTE.

-- SOLUTIONS:

def f (x: nat) := 7*x^4 + x^3 + 3*x^2 + 5*x - 7

/- TEXT:

Um deine Funktion zu überprüfen kannst du die folgenden beiden Werte ausrechnen lassen:

- :math:`f(0) = -7`
- :math:`f(5) = 13768`

TEXT. -/

-- QUOTE:

#eval f 0       -- -7
#eval f 5       -- 13768

-- QUOTE.

/- TEXT:

Eine weitere Formel die wir aufstellen müssen, bevor wir loslegen können ist die Fakultätsfunktion.
Zur Erinnerung es gibt 2 Fälle:
- Fakultät von 0 ergibt 1,
- Fakultät von n ergibt n * Fakultät von n-1

Kopiere den Codeschnipsel raus und vervollständige die Fakultätsfunktion. 
Mithilfe der *#eval* Statements kannst du deine Definition überprüfen. 


TEXT. -/

-- QUOTE:

def fac : ℕ → ℕ 
| -- dein Code hier
| -- dein Code hier

-- Test
#eval fac 0     -- 1
#eval fac 5     -- 120

-- QUOTE.

-- SOLUTIONS:

def fac : ℕ → ℕ
| 0 := 1
| (n + 1) := (n + 1) * fac n

/- TEXT:

Ableitungen bestimmen
--------------------------------

Im 1. Schritt müssen die Ableitungen definiert werden. 
Da wir das Taylorpolynom des 4. Grades berechnen wollen, benötigen wir die ersten 4 Ableitungen der Funktion :math:`f(x)`.

Kopiere die unteren Codeschnipsel und füge jeweils die Ableitungen hinzu.
Um dein Ergebnis zu testen, kannst du wieder die *#eval* Statements ausführen.
Kommen die Ergebnisse, die als Kommentar dahinter notiert sind raus, so ist die Ableitung korrekt.

TEXT. -/

-- QUOTE:
-- EXAMPLES:

-- 1. Ableitungen definieren 
def f' (x: nat) := () -- dein Code hier

-- Test
#eval f' 0      -- 5
#eval f' 5      -- 2735

-- QUOTE.

-- SOLUTIONS:

def f' (x: nat) := 21*x^3 + 3*x^2 + 6*x + 5


-- QUOTE:
-- EXAMPLES:

-- 2. Ableitung definieren
def f'' (x: nat) := () -- dein Code hier

-- Test
#eval f'' 0     -- 6
#eval f'' 5     -- 1611

-- QUOTE.

-- SOLUTIONS:

def f'' (x: nat) := 63*x^2 + 6*x + 6

-- QUOTE:
-- EXAMPLES:
-- 3. Ableitung definieren
def f''' (x: nat) := () -- dein Code hier

-- Test
#eval f''' 0    -- 6
#eval f''' 5    -- 636

-- QUOTE.

-- SOLUTIONS:

def f''' (x: nat) := 126*x + 6

-- QUOTE:
-- EXAMPLES:

-- 4. Ableitung definieren
def f'''' (x: nat) := () -- dein Code hier

-- Test
#eval f'''' 0   -- 126
#eval f'''' 5   -- 126

-- QUOTE.

-- SOLUTIONS:

def f'''' (x: nat) := 126





