import static spark.Spark.*;
import java.util.ArrayList;

public class Main {
    private static ArrayList<Persona> Personas = new ArrayList<>();
    public static ArrayList<Persona> getPersonas() {return Personas;}
    public static void eliminar(String id){
        for(int i = 0; i < getPersonas().size(); i++){
            if(getPersonas().get(i).getId().equalsIgnoreCase(id))
                getPersonas().remove(i);
        }
    }
    public static Persona buscar(String id){
        for(int i = 0; i < getPersonas().size(); i++){
            if(getPersonas().get(i).getId().equalsIgnoreCase(id))
                return getPersonas().get(i);
        }
        return null;
    }
    public static void mod(String id, String nombre, String apellido, String correo, String telefono){
        Persona tmp = buscar(id);
        tmp.setNombre(nombre);
        tmp.setApellido(apellido);
        tmp.setCorreo(correo);
        tmp.setTelefono(telefono);
    }
    public static void main(String[] args) {
        staticFileLocation("/public");
        get("/saludo", (request, response) -> {
            return "saludo";
        });
        new Rutas().manejador();
    }
}