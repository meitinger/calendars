CREATE USER [calendars] FOR LOGIN [Calendars] WITH DEFAULT_SCHEMA=[dbo]
GRANT SELECT ON [dbo].[AUSGABE] TO [calendars]
GRANT SELECT ON [dbo].[DATEPARAMS] TO [calendars]
GRANT SELECT ON [dbo].[DUTIES] TO [calendars]
GRANT SELECT ON [dbo].[FIL] TO [calendars]
GRANT SELECT ON [dbo].[KST] TO [calendars]
GRANT SELECT ON [dbo].[MA_DATEN] TO [calendars]
GRANT SELECT ON [dbo].[MA_STORE] TO [calendars]
GRANT SELECT ON [dbo].[VARCHARPARAMS] TO [calendars]
