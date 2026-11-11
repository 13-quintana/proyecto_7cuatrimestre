
IF DB_ID(N'MiFinanzas') IS NULL
BEGIN
    CREATE DATABASE MiFinanzas;
END;
GO

USE MiFinanzas;
GO

IF OBJECT_ID(N'dbo.Usuarios', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Usuarios (
        IdUsuario INT IDENTITY(1,1) NOT NULL,
        Nombre VARCHAR(100) NOT NULL,
        Correo VARCHAR(150) NOT NULL,
        Contrasena VARCHAR(255) NOT NULL,
        FechaRegistro DATETIME2 NOT NULL
            CONSTRAINT DF_Usuarios_FechaRegistro
            DEFAULT SYSDATETIME(),

        CONSTRAINT PK_Usuarios
            PRIMARY KEY (IdUsuario),

        CONSTRAINT UQ_Usuarios_Correo
            UNIQUE (Correo)
    );
END;
GO

IF OBJECT_ID(N'dbo.Categorias', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Categorias (
        IdCategoria INT IDENTITY(1,1) NOT NULL,
        Nombre VARCHAR(100) NOT NULL,
        Tipo VARCHAR(20) NOT NULL,
        Descripcion VARCHAR(255) NULL,
        FechaRegistro DATETIME2 NOT NULL
            CONSTRAINT DF_Categorias_FechaRegistro
            DEFAULT SYSDATETIME(),

        CONSTRAINT PK_Categorias
            PRIMARY KEY (IdCategoria),

        CONSTRAINT CK_Categorias_Tipo
            CHECK (Tipo IN ('Ingreso', 'Gasto')),

        CONSTRAINT UQ_Categorias_NombreTipo
            UNIQUE (Nombre, Tipo)
    );
END;
GO

IF OBJECT_ID(N'dbo.Movimientos', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Movimientos (
        IdMovimiento INT IDENTITY(1,1) NOT NULL,
        IdUsuario INT NOT NULL,
        IdCategoria INT NOT NULL,
        Tipo VARCHAR(20) NOT NULL,
        Descripcion VARCHAR(150) NULL,
        Monto DECIMAL(10,2) NOT NULL,
        Fecha DATE NOT NULL,
        FechaRegistro DATETIME2 NOT NULL
            CONSTRAINT DF_Movimientos_FechaRegistro
            DEFAULT SYSDATETIME(),

        CONSTRAINT PK_Movimientos
            PRIMARY KEY (IdMovimiento),

        CONSTRAINT FK_Movimientos_Usuarios
            FOREIGN KEY (IdUsuario)
            REFERENCES dbo.Usuarios(IdUsuario),

        CONSTRAINT FK_Movimientos_Categorias
            FOREIGN KEY (IdCategoria)
            REFERENCES dbo.Categorias(IdCategoria),

        CONSTRAINT CK_Movimientos_Monto
            CHECK (Monto > 0),

        CONSTRAINT CK_Movimientos_Tipo
            CHECK (Tipo IN ('Ingreso', 'Gasto'))
    );
END;
GO

IF OBJECT_ID(N'dbo.MetasAhorro', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.MetasAhorro (
        IdMeta INT IDENTITY(1,1) NOT NULL,
        IdUsuario INT NOT NULL,
        Nombre VARCHAR(100) NOT NULL,
        MontoObjetivo DECIMAL(10,2) NOT NULL,
        MontoAhorrado DECIMAL(10,2) NOT NULL
            CONSTRAINT DF_Metas_MontoAhorrado
            DEFAULT 0,
        FechaLimite DATE NULL,
        Estado VARCHAR(20) NOT NULL
            CONSTRAINT DF_Metas_Estado
            DEFAULT 'En progreso',

        CONSTRAINT PK_MetasAhorro
            PRIMARY KEY (IdMeta),

        CONSTRAINT FK_MetasAhorro_Usuarios
            FOREIGN KEY (IdUsuario)
            REFERENCES dbo.Usuarios(IdUsuario),

        CONSTRAINT CK_Metas_MontoObjetivo
            CHECK (MontoObjetivo > 0),

        CONSTRAINT CK_Metas_MontoAhorrado
            CHECK (MontoAhorrado >= 0),

        CONSTRAINT CK_Metas_Estado
            CHECK (
                Estado IN (
                    'En progreso',
                    'Completada',
                    'Cancelada'
                )
            )
    );
END;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = N'IX_Movimientos_UsuarioFecha'
      AND object_id = OBJECT_ID(N'dbo.Movimientos')
)
BEGIN
    CREATE INDEX IX_Movimientos_UsuarioFecha
        ON dbo.Movimientos(IdUsuario, Fecha DESC);
END;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = N'IX_Movimientos_Categoria'
      AND object_id = OBJECT_ID(N'dbo.Movimientos')
)
BEGIN
    CREATE INDEX IX_Movimientos_Categoria
        ON dbo.Movimientos(IdCategoria);
END;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = N'IX_MetasAhorro_Usuario'
      AND object_id = OBJECT_ID(N'dbo.MetasAhorro')
)
BEGIN
    CREATE INDEX IX_MetasAhorro_Usuario
        ON dbo.MetasAhorro(IdUsuario);
END;
GO

SELECT TABLE_NAME AS NombreTabla
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
  AND TABLE_SCHEMA = 'dbo'
ORDER BY TABLE_NAME;
GO

SELECT
    TABLE_NAME AS Tabla,
    COLUMN_NAME AS Columna,
    DATA_TYPE AS TipoDato,
    IS_NULLABLE AS PermiteNulos
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME IN (
      'Usuarios',
      'Categorias',
      'Movimientos',
      'MetasAhorro'
  )
ORDER BY TABLE_NAME, ORDINAL_POSITION;
GO
