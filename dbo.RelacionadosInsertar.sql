CREATE PROCEDURE [dbo].[RelacionadosInsertar]
	
	@pidrelacionados int = null OUTPUT,
	@pidciudadano int = null OUTPUT,
	@pnombre varchar (15),
	@papellidos varchar(100),
	@pdireccion varchar (50),
	@pnumerotelefonico varchar (15),
	@pparentesco varchar (15),
	@pestado varchar(10)
	



 AS

 INSERT into Relacionados ( Nombre , Apellidos, Dirección, NumeroTelefonico, Parentesco, Estado)

	         values ( @pnombre, @pidciudadano, @papellidos, @pdireccion, @pnumerotelefonico, @pparentesco, @pestado)

--Obteniendo el id de ciudadano autogenerado

SET @pidrelacionados = @@IDENTITY;


    UPDATE Relacionados

	SET 

	Nombre=@pnombre,
	Apellidos=@papellidos,
	Dirección= @pdireccion,
	NumeroTelefonico= @pnumerotelefonico,
	Parentesco= @pparentesco,
	Estado=@pestado

	WHERE

	IdRelacionados=@pidrelacionados




RETURN 0