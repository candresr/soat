class UsuarioCorreoMailer < ApplicationMailer
    default from: 'cesarramirez@example.com'
    def resumenCorreo(resumen, poliza)
        @resumen = resumen
        @poliza = poliza
        mail(to:@resumen.correo , subject: 'Registro de compra SOAT')
   end   
end
