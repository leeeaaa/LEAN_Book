/- TEXT:
Werte in die Formel einsetzen
--------------------------------

Zur Erinnerung, die Formel lautet:

.. math::

  T(x) = \sum_{k=0}^{n} \frac{f^(k)(x_0) \cdot (x - x_0)^1}{k!}

Angewendet auf unseren Anwendungsfall mit :math:'n = 4' ergibt sich:

.. math::

  T(x) = \sum_{k=0}^{4} \frac{f^(k)(1) \cdot (x - 1)^1}{k!}

Nun können wir mit den bereits definierten Ableitungen unsere Taylorpolynom-Formel aufstellen.
:math:'x_0' geben wir vorerst als zweite Variable mit in unsere Taylorpolynom-Formel, so können wir für verschiedene Entwicklungspunkte das Taylorpolynom berechnen.

TEXT. -/

-- QUOTE:

def taylor (x : nat) (x0 : nat) := () -- dein Code hier

-- QUOTE.

-- SOLUTIONS:

def taylor (x : nat) (x0 : nat):= 
(f x0)/(fac 0) + (f' x0)/(fac 1)*(x-x0) + (f'' x0)/(fac 2)*(x-x0)^2 + (f''' x0)/(fac 3)*(x-x0)^3 + (f'''' x0)/(fac 4)*(x-x0)^4 

/- TEXT:

Jetzt wollen wir unsere Formel auf den Entwicklungspunkt :math:'x_0 = 1' anwenden und unser Ergebnis testen:


TEXT. -/

-- QUOTE:

#eval taylor 0 1 -- 9
#eval taylor 5 1 -- 3429

-- QUOTE.