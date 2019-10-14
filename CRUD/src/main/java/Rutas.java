import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.Version;
import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import static spark.Spark.get;
import static spark.Spark.post;

public class Rutas {
    public void manejador(){
        final Configuration configuration = new Configuration(new Version(2, 3, 0));
        try {
            configuration.setDirectoryForTemplateLoading(new File(
                    "C:/Users/luis_/Documents/Web/CRUD/src/main/resources/freemarker"));
        } catch (IOException e) {
            e.printStackTrace();
        }

        get("/inicio/", (request, response) -> {
            int i = 1;
            Template plantillaFormulario = configuration.getTemplate("Listado.ftl");
            StringWriter writer = new StringWriter();
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("persona", Main.getPersonas());
            attributes.put("id", i);
            plantillaFormulario.process(attributes, writer);
            return writer;
        });

        get("/formulario/", (request, response) -> {
            String id = request.queryParams("idBusquda");
            Persona per = null;
            if(id != null)
            {
                per = Main.buscar(id);
            }
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("persona", per);
            Template plantillaFormulario = configuration.getTemplate("formulario.ftl");
            StringWriter writer = new StringWriter();
            plantillaFormulario.process(attributes, writer);
            return writer;
        });

        post("/procesarFormulario/", (request, response) -> {
            Template plantillaFormProcess = configuration.getTemplate("procesar.ftl");
            StringWriter writer = new StringWriter();
            String id = request.queryParams("id");
            String nombre = request.queryParams("nombre");
            String apellido =request.queryParams("apellido");
            String correo = request.queryParams("correo");
            String telefono = request.queryParams("telefono");
            Persona persona = new Persona(id, nombre, apellido, correo, telefono);
            Main.getPersonas().add(persona);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("persona", persona);
            plantillaFormProcess.process(attributes, writer);
            return writer;
        });

        get("/eliminar/:id", (request, response) -> {
            Main.eliminar(request.params("id"));
            response.redirect("/inicio/");
            return "";
        });

        post("/modificar/", (request, response) -> {
            String id = request.queryParams("id");
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String correo = request.queryParams("correo");
            String telefono = request.queryParams("telefono");
            Main.mod(id, nombre, apellido, correo, telefono);
            response.redirect("/inicio/");
            return "";
        });
    }
}