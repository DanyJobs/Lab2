create database videos

create table video(
idVideo int primary key,
titulo varchar(100),
reproducciones int,
url varchar (100)
)

CREATE PROCEDURE sp_video_insertar
@idVideo int,
@titulo varchar(100),
@reproducciones int,
@url varchar (100)
AS
BEGIN
INSERT INTO video VALUES (@idVideo,@titulo,@reproducciones,@url)
END

EXEC sp_video_insertar 1,'video 1', 1, 'youtube.com'


CREATE PROCEDURE sp_video_actualizar
@idVideo int,
@titulo varchar(100),
@reproducciones int,
@url varchar (100)
AS
BEGIN
Update Video SET titulo=@titulo,reproducciones=@reproducciones,url=@url where idVideo=@idVideo
END


EXEC sp_video_actualizar 1,'vidSADeo 1', 1, 'youtube.com'


CREATE PROCEDURE sp_video_eliminar
@idVideo int
AS
BEGIN
DELETE FROM VIDEO WHERE idvideo=@idVideo
END


EXEC sp_video_eliminar 1
SELECT * FROM video
