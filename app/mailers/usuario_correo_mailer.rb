class UsuarioCorreoMailer < ApplicationMailer
    default from: 'notifications@example.com'
    def resumenCorreo(resumen, poliza)
        @resumen = resumen
        @poliza = poliza
        mail(to:@resumen.correo , subject: 'Registro de compra SOAT')
   end   
end
