CREATE TABLE [dbo].[Relacionados] (
    [IdRelacionados] INT         IDENTITY (1, 1) NOT NULL,
    [IdCiudadano]    INT         NOT NULL,
    [Nombre ]        NCHAR (30)  NOT NULL,
    [Apellidos]      NCHAR (30)  NULL,
    [Parentesco]     NCHAR (15)  NULL,
    [Dirección]      NCHAR (100) NULL,
    [Estado]         NCHAR (10)  DEFAULT ('Activo') NOT NULL,
    PRIMARY KEY CLUSTERED ([IdRelacionados] ASC),
    CONSTRAINT [FK_Relacionados_Ciudadano] FOREIGN KEY ([IdCiudadano]) REFERENCES [dbo].[Relacionados] ([IdRelacionados])
);

