Nachhilfe
=========

Im Rahmen des IQSH-Projekts 2014 wird eine Web-Anwendung
implementiert, mit der SchülerInnen untereinander Nachhilfe-Angebote
und -Gesuche vermitteln können.

## Grundfunktionalität

SchülerInnen sollen sich am System anmelden können. In ihrem Profil
wird folgende Information gespeichert:

  * Name
  * Klassenstufe
  * Kontaktdaten (optional)
  * Stundensatz (optional)
  * Foto (optional)

Neben persönlichen Daten soll im System abgelegt werden, für welche
Fächer und Klassenstufen eine Person Nachhilfe anbietet bzw sucht.

Zu Angeboten werden Zeiträume (ggf. mit Ort?) gespeichert, an denen
Nachhilfe gegeben werden kann.

Zu eigenen Gesuchen sollen passende fremde Angebote angezeigt werden
können, aber nicht umgekehrt.

Suchende können zu angezeigten Angeboten Anfragen stellen, die bei der
anbietenden Person angezeigt werden. Jene kann solche Angebote
annehmen oder ablehnen.

Auch ohne Anmeldung soll es möglich sein, Nachhilfe-Angebote zu
durchsuchen.

## Bewertung

Bei erfolgreicher Terminvereinbarung soll die suchende Person die
anbietende bewerten können. Eventuell soll die Bewertung nur dann
möglich sein, wenn die AnbieterIn dies freischaltet.

Die einfachste Art der Bewertung wäre binar, also durch Angabe von +/-
bei einem bestimmten Termin (bzw. einer Person). Alternativ könnten
vorgegebene Kriterien mit Schulnoten bewertet werden.

Frage: Sollen auch Suchende bewertet werden können?

## Administration

Bestimmte Nutzer sollen die Möglichkeit haben, alle im System
gespeicherten Daten zu bearbeiten. Sie können zum Beispiel Nutzer
anlegen oder entfernen. Nutzer sollen sich nicht selbst registrieren
können.

Nutzer sollen nach Aktivität sortiert werden können, um einfach
inaktive Nutzer entfernen zu können.

## Material

[Grafische Darstellung der Sichten](views.jpg?raw)
