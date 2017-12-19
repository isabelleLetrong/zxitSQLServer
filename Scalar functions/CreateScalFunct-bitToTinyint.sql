SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

DROP	FUNCTION	IF	EXISTS	bitToTinyint
GO
CREATE	FUNCTION				bitToTinyint 
(
@BinaryDigit					BIT
)
RETURNS							TINYINT
AS
BEGIN
/* ===================================================================================================================
**	bitToTinyint()		Convertion d'un bit en entier
**	------------------------------------------------------------------------------------------------------------------
**	Auteur			:	IT-DaaS	-	Isabelle LE TRONG
**
**	Versions 		:	1.0		2017-05-17	Version initiale
**	------------------------------------------------------------------------------------------------------------------
**	PARAMETRES
**
**	@BinaryDigit		BIT(1)		:	Bit à convertir
** ===================================================================================================================
**
**	(V)	Variables locales
*/
DECLARE	@Version			DECIMAL(4,2)		=	1.0													;
DECLARE	@ConvertedInt		TINYINT																		;
DECLARE	@OFF				BIT					=	0													;
/*
**	(1)	Set @ConvertedInt
*/
IF		(@BinaryDigit		=	@OFF)
		SET	@ConvertedInt	=	0																		;
ELSE	SET	@ConvertedInt	=	1																		;
/*
**	(EXIT)
*/
RETURN	@ConvertedInt																					;

END
GO

