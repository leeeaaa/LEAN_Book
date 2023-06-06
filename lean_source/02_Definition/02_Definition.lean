import data.real.basic


/- TEXT:

In diesem Kapitel wollen wir uns kurz die formale Defintion eines Taylorpolynoms anschauen.

Die Formel für das Taylorpolynom lautet:

.. math::

  T(x) = \sum_{k=0}^{n} \frac{f^(k)(x_0) \cdot (x - x_0)}{k!}

Das Taylorpolynom bildet die Summe über die Ableitungen bis Grad n am Entwicklungspunkt :math:`x_0` multipliziert mit :math:`(x - x_0)` und geteilt durch die Fakultät des Ableitungsgrades.

Um das Taylorpolynom zu bestimmen, müssen die folgenden Schritte abgehandelt werden:

#. Die ersten n Ableitung der Funktion :math:`f` bestimmen.
#. Die Werte der Ableitungen an der Stelle :math:`x_0` berechnen.
#. Die Werte in die Formel einsetzen.

Im nachfolgenden Kapitel wollen wir diese Schritte an einem Beispiel ausführen.

TEXT. -/
