
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/07/2017 09:40:08
-- Generated from EDMX file: C:\Users\Diogo\Desktop\TeSP\2 semestre\Aplicações\Projeto\AMT\AMT\EntityDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [AMT];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'JogoSet'
CREATE TABLE [dbo].[JogoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL,
    [Data] datetime  NOT NULL,
    [Numero] int  NOT NULL,
    [ArbitroId] int  NOT NULL,
    [DeckId] int  NOT NULL,
    [DeckId1] int  NOT NULL
);
GO

-- Creating table 'DeckSet'
CREATE TABLE [dbo].[DeckSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CartaSet'
CREATE TABLE [dbo].[CartaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [Custo] nvarchar(max)  NOT NULL,
    [Lealdade] int  NOT NULL,
    [TextoRegras] nvarchar(max)  NOT NULL,
    [Ataque] int  NOT NULL,
    [Defesa] int  NOT NULL
);
GO

-- Creating table 'TorneioSet'
CREATE TABLE [dbo].[TorneioSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Data] datetime  NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EquipaSet'
CREATE TABLE [dbo].[EquipaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Avatar] nvarchar(max)  NOT NULL,
    [JogoEquipaId] int  NOT NULL,
    [JogoEquipaId1] int  NOT NULL
);
GO

-- Creating table 'JogadorSet'
CREATE TABLE [dbo].[JogadorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Nickname] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Idade] int  NOT NULL
);
GO

-- Creating table 'UserSet_Arbitro'
CREATE TABLE [dbo].[UserSet_Arbitro] (
    [Nome] nvarchar(max)  NOT NULL,
    [Avatar] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'JogoSet_JogoEquipa'
CREATE TABLE [dbo].[JogoSet_JogoEquipa] (
    [TorneioEquipaId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'TorneioSet_TorneioEquipa'
CREATE TABLE [dbo].[TorneioSet_TorneioEquipa] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'JogoSet_JogoStandard'
CREATE TABLE [dbo].[JogoSet_JogoStandard] (
    [JogadorId] int  NOT NULL,
    [JogadorId1] int  NOT NULL,
    [TorneioStandardId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'TorneioSet_TorneioStandard'
CREATE TABLE [dbo].[TorneioSet_TorneioStandard] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'UserSet_Administrador'
CREATE TABLE [dbo].[UserSet_Administrador] (
    [email] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'DeckCarta'
CREATE TABLE [dbo].[DeckCarta] (
    [Deck_Id] int  NOT NULL,
    [Carta_Id] int  NOT NULL
);
GO

-- Creating table 'EquipaTorneioEquipa'
CREATE TABLE [dbo].[EquipaTorneioEquipa] (
    [Equipa_Id] int  NOT NULL,
    [TorneioEquipa_Id] int  NOT NULL
);
GO

-- Creating table 'EquipaJogador'
CREATE TABLE [dbo].[EquipaJogador] (
    [Equipa_Id] int  NOT NULL,
    [Jogador_Id] int  NOT NULL
);
GO

-- Creating table 'JogadorTorneioStandard'
CREATE TABLE [dbo].[JogadorTorneioStandard] (
    [Jogador_Id] int  NOT NULL,
    [TorneioStandard_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JogoSet'
ALTER TABLE [dbo].[JogoSet]
ADD CONSTRAINT [PK_JogoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DeckSet'
ALTER TABLE [dbo].[DeckSet]
ADD CONSTRAINT [PK_DeckSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CartaSet'
ALTER TABLE [dbo].[CartaSet]
ADD CONSTRAINT [PK_CartaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TorneioSet'
ALTER TABLE [dbo].[TorneioSet]
ADD CONSTRAINT [PK_TorneioSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EquipaSet'
ALTER TABLE [dbo].[EquipaSet]
ADD CONSTRAINT [PK_EquipaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JogadorSet'
ALTER TABLE [dbo].[JogadorSet]
ADD CONSTRAINT [PK_JogadorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet_Arbitro'
ALTER TABLE [dbo].[UserSet_Arbitro]
ADD CONSTRAINT [PK_UserSet_Arbitro]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JogoSet_JogoEquipa'
ALTER TABLE [dbo].[JogoSet_JogoEquipa]
ADD CONSTRAINT [PK_JogoSet_JogoEquipa]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TorneioSet_TorneioEquipa'
ALTER TABLE [dbo].[TorneioSet_TorneioEquipa]
ADD CONSTRAINT [PK_TorneioSet_TorneioEquipa]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JogoSet_JogoStandard'
ALTER TABLE [dbo].[JogoSet_JogoStandard]
ADD CONSTRAINT [PK_JogoSet_JogoStandard]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TorneioSet_TorneioStandard'
ALTER TABLE [dbo].[TorneioSet_TorneioStandard]
ADD CONSTRAINT [PK_TorneioSet_TorneioStandard]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet_Administrador'
ALTER TABLE [dbo].[UserSet_Administrador]
ADD CONSTRAINT [PK_UserSet_Administrador]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Deck_Id], [Carta_Id] in table 'DeckCarta'
ALTER TABLE [dbo].[DeckCarta]
ADD CONSTRAINT [PK_DeckCarta]
    PRIMARY KEY CLUSTERED ([Deck_Id], [Carta_Id] ASC);
GO

-- Creating primary key on [Equipa_Id], [TorneioEquipa_Id] in table 'EquipaTorneioEquipa'
ALTER TABLE [dbo].[EquipaTorneioEquipa]
ADD CONSTRAINT [PK_EquipaTorneioEquipa]
    PRIMARY KEY CLUSTERED ([Equipa_Id], [TorneioEquipa_Id] ASC);
GO

-- Creating primary key on [Equipa_Id], [Jogador_Id] in table 'EquipaJogador'
ALTER TABLE [dbo].[EquipaJogador]
ADD CONSTRAINT [PK_EquipaJogador]
    PRIMARY KEY CLUSTERED ([Equipa_Id], [Jogador_Id] ASC);
GO

-- Creating primary key on [Jogador_Id], [TorneioStandard_Id] in table 'JogadorTorneioStandard'
ALTER TABLE [dbo].[JogadorTorneioStandard]
ADD CONSTRAINT [PK_JogadorTorneioStandard]
    PRIMARY KEY CLUSTERED ([Jogador_Id], [TorneioStandard_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ArbitroId] in table 'JogoSet'
ALTER TABLE [dbo].[JogoSet]
ADD CONSTRAINT [FK_JogoArbitro]
    FOREIGN KEY ([ArbitroId])
    REFERENCES [dbo].[UserSet_Arbitro]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogoArbitro'
CREATE INDEX [IX_FK_JogoArbitro]
ON [dbo].[JogoSet]
    ([ArbitroId]);
GO

-- Creating foreign key on [Deck_Id] in table 'DeckCarta'
ALTER TABLE [dbo].[DeckCarta]
ADD CONSTRAINT [FK_DeckCarta_Deck]
    FOREIGN KEY ([Deck_Id])
    REFERENCES [dbo].[DeckSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Carta_Id] in table 'DeckCarta'
ALTER TABLE [dbo].[DeckCarta]
ADD CONSTRAINT [FK_DeckCarta_Carta]
    FOREIGN KEY ([Carta_Id])
    REFERENCES [dbo].[CartaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeckCarta_Carta'
CREATE INDEX [IX_FK_DeckCarta_Carta]
ON [dbo].[DeckCarta]
    ([Carta_Id]);
GO

-- Creating foreign key on [DeckId] in table 'JogoSet'
ALTER TABLE [dbo].[JogoSet]
ADD CONSTRAINT [FK_JogoDeck]
    FOREIGN KEY ([DeckId])
    REFERENCES [dbo].[DeckSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogoDeck'
CREATE INDEX [IX_FK_JogoDeck]
ON [dbo].[JogoSet]
    ([DeckId]);
GO

-- Creating foreign key on [DeckId1] in table 'JogoSet'
ALTER TABLE [dbo].[JogoSet]
ADD CONSTRAINT [FK_JogoDeck1]
    FOREIGN KEY ([DeckId1])
    REFERENCES [dbo].[DeckSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogoDeck1'
CREATE INDEX [IX_FK_JogoDeck1]
ON [dbo].[JogoSet]
    ([DeckId1]);
GO

-- Creating foreign key on [JogoEquipaId] in table 'EquipaSet'
ALTER TABLE [dbo].[EquipaSet]
ADD CONSTRAINT [FK_JogoEquipaEquipa]
    FOREIGN KEY ([JogoEquipaId])
    REFERENCES [dbo].[JogoSet_JogoEquipa]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogoEquipaEquipa'
CREATE INDEX [IX_FK_JogoEquipaEquipa]
ON [dbo].[EquipaSet]
    ([JogoEquipaId]);
GO

-- Creating foreign key on [JogoEquipaId1] in table 'EquipaSet'
ALTER TABLE [dbo].[EquipaSet]
ADD CONSTRAINT [FK_JogoEquipaEquipa1]
    FOREIGN KEY ([JogoEquipaId1])
    REFERENCES [dbo].[JogoSet_JogoEquipa]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogoEquipaEquipa1'
CREATE INDEX [IX_FK_JogoEquipaEquipa1]
ON [dbo].[EquipaSet]
    ([JogoEquipaId1]);
GO

-- Creating foreign key on [Equipa_Id] in table 'EquipaTorneioEquipa'
ALTER TABLE [dbo].[EquipaTorneioEquipa]
ADD CONSTRAINT [FK_EquipaTorneioEquipa_Equipa]
    FOREIGN KEY ([Equipa_Id])
    REFERENCES [dbo].[EquipaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TorneioEquipa_Id] in table 'EquipaTorneioEquipa'
ALTER TABLE [dbo].[EquipaTorneioEquipa]
ADD CONSTRAINT [FK_EquipaTorneioEquipa_TorneioEquipa]
    FOREIGN KEY ([TorneioEquipa_Id])
    REFERENCES [dbo].[TorneioSet_TorneioEquipa]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EquipaTorneioEquipa_TorneioEquipa'
CREATE INDEX [IX_FK_EquipaTorneioEquipa_TorneioEquipa]
ON [dbo].[EquipaTorneioEquipa]
    ([TorneioEquipa_Id]);
GO

-- Creating foreign key on [Equipa_Id] in table 'EquipaJogador'
ALTER TABLE [dbo].[EquipaJogador]
ADD CONSTRAINT [FK_EquipaJogador_Equipa]
    FOREIGN KEY ([Equipa_Id])
    REFERENCES [dbo].[EquipaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Jogador_Id] in table 'EquipaJogador'
ALTER TABLE [dbo].[EquipaJogador]
ADD CONSTRAINT [FK_EquipaJogador_Jogador]
    FOREIGN KEY ([Jogador_Id])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EquipaJogador_Jogador'
CREATE INDEX [IX_FK_EquipaJogador_Jogador]
ON [dbo].[EquipaJogador]
    ([Jogador_Id]);
GO

-- Creating foreign key on [JogadorId] in table 'JogoSet_JogoStandard'
ALTER TABLE [dbo].[JogoSet_JogoStandard]
ADD CONSTRAINT [FK_JogadorJogoStandard]
    FOREIGN KEY ([JogadorId])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorJogoStandard'
CREATE INDEX [IX_FK_JogadorJogoStandard]
ON [dbo].[JogoSet_JogoStandard]
    ([JogadorId]);
GO

-- Creating foreign key on [JogadorId1] in table 'JogoSet_JogoStandard'
ALTER TABLE [dbo].[JogoSet_JogoStandard]
ADD CONSTRAINT [FK_JogadorJogoStandard1]
    FOREIGN KEY ([JogadorId1])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorJogoStandard1'
CREATE INDEX [IX_FK_JogadorJogoStandard1]
ON [dbo].[JogoSet_JogoStandard]
    ([JogadorId1]);
GO

-- Creating foreign key on [Jogador_Id] in table 'JogadorTorneioStandard'
ALTER TABLE [dbo].[JogadorTorneioStandard]
ADD CONSTRAINT [FK_JogadorTorneioStandard_Jogador]
    FOREIGN KEY ([Jogador_Id])
    REFERENCES [dbo].[JogadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TorneioStandard_Id] in table 'JogadorTorneioStandard'
ALTER TABLE [dbo].[JogadorTorneioStandard]
ADD CONSTRAINT [FK_JogadorTorneioStandard_TorneioStandard]
    FOREIGN KEY ([TorneioStandard_Id])
    REFERENCES [dbo].[TorneioSet_TorneioStandard]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JogadorTorneioStandard_TorneioStandard'
CREATE INDEX [IX_FK_JogadorTorneioStandard_TorneioStandard]
ON [dbo].[JogadorTorneioStandard]
    ([TorneioStandard_Id]);
GO

-- Creating foreign key on [TorneioStandardId] in table 'JogoSet_JogoStandard'
ALTER TABLE [dbo].[JogoSet_JogoStandard]
ADD CONSTRAINT [FK_TorneioStandardJogoStandard]
    FOREIGN KEY ([TorneioStandardId])
    REFERENCES [dbo].[TorneioSet_TorneioStandard]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TorneioStandardJogoStandard'
CREATE INDEX [IX_FK_TorneioStandardJogoStandard]
ON [dbo].[JogoSet_JogoStandard]
    ([TorneioStandardId]);
GO

-- Creating foreign key on [TorneioEquipaId] in table 'JogoSet_JogoEquipa'
ALTER TABLE [dbo].[JogoSet_JogoEquipa]
ADD CONSTRAINT [FK_TorneioEquipaJogoEquipa]
    FOREIGN KEY ([TorneioEquipaId])
    REFERENCES [dbo].[TorneioSet_TorneioEquipa]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TorneioEquipaJogoEquipa'
CREATE INDEX [IX_FK_TorneioEquipaJogoEquipa]
ON [dbo].[JogoSet_JogoEquipa]
    ([TorneioEquipaId]);
GO

-- Creating foreign key on [Id] in table 'UserSet_Arbitro'
ALTER TABLE [dbo].[UserSet_Arbitro]
ADD CONSTRAINT [FK_Arbitro_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'JogoSet_JogoEquipa'
ALTER TABLE [dbo].[JogoSet_JogoEquipa]
ADD CONSTRAINT [FK_JogoEquipa_inherits_Jogo]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[JogoSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'TorneioSet_TorneioEquipa'
ALTER TABLE [dbo].[TorneioSet_TorneioEquipa]
ADD CONSTRAINT [FK_TorneioEquipa_inherits_Torneio]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[TorneioSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'JogoSet_JogoStandard'
ALTER TABLE [dbo].[JogoSet_JogoStandard]
ADD CONSTRAINT [FK_JogoStandard_inherits_Jogo]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[JogoSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'TorneioSet_TorneioStandard'
ALTER TABLE [dbo].[TorneioSet_TorneioStandard]
ADD CONSTRAINT [FK_TorneioStandard_inherits_Torneio]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[TorneioSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'UserSet_Administrador'
ALTER TABLE [dbo].[UserSet_Administrador]
ADD CONSTRAINT [FK_Administrador_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------