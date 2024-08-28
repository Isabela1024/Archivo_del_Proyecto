-- current sql file was generated after introspecting the database
-- If you want to run this migration please uncomment this code before executing migrations

   CREATE TABLE `Refrigerios`(
    INTEGER Cantidad
    NUMERIC Grupo
    TEXT Nombre_Est_R_Pae
    TEXT Si_Vino_No_Vino
    TEXT Est_Suplentes
   )

--> statement-breakpoint
CREATE TABLE `SnackDeliverySystem` (
`collections` TEXT,
`PAE`TEXT,
FOREIGN KEY (`collections_id`) REFERENCES `collections` (`id`) ON UPDATE no action ON DELETE no action
FOREIGN KEY (`PAE_id`) REFERENCES `PAE` (`id`) ON UPDATE no action ON DELETE no action
)

-->statement-breakpoint
CREATE TABLE `collections` (
    `id` INTEGER
     `Horario_Llegada` INTEGER
     `Horario_Reclamar` INTEGER
     `Grado` INTEGER
     `Reclamaron` INTEGER
     FOREIGN KEY (`collections_id`) REFERENCES `collections` (`id`) ON UPDATE no action ON DELETE no action
FOREIGN KEY (`PAE_id`) REFERENCES `PAE` (`id`) ON UPDATE no action ON DELETE no action
)

-->statement-breakpoint
CREATE TABLE `PAE` (
    `id` INTEGER
     `cantidad` INTEGER
     `Grupo` INTEGER
     `Nombre_Pae` TEXT
     `Si_Vino_No_Vino` TEXT
     `Estudiantes_suplentes` TEXT
     `Refrigerios_sobraron`INTEGER
     `Refrigerios_Faltan` INTEGER
     `Refrigerios_demás` INTEGER
     `Nombre_Representantes` TEXT
     `Grado` INTEGER
     FOREIGN KEY (`collections_id`) REFERENCES `collections` (`id`) ON UPDATE no action ON DELETE no action
FOREIGN KEY (`PAE_id`) REFERENCES `PAE` (`id`) ON UPDATE no action ON DELETE no action
)

-->statement-breakpoint
   Inf_Refrigerios(
     TEXT `Refrigerios_Sobraron`
    TEXT `Refrigerios_Faltan`
    TEXT `Refrigerios_demas`
   )

-->statement-breakpoint
   Refrigerio_Grado(
    TEXT `Nombre_Representantes`
    TEXT `Grado`
   )

-->statement-breakpoint
CREATE TABLE `Horarios`(
    TEXT `Hora_Llegada`
    TEXT `Hora_Reclamar`
)

-->statement-breakpoint
Grupos(
    NUMERIC `Grado`
    TEXT `Reclamaron`
)

-->statement-breakpoint
Grupos(
    NUMERIC `Grado`
    TEXT `Reclamaron`
)