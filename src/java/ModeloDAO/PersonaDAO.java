
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class PersonaDAO implements CRUD{

Conexion cn = new Conexion();
Connection con;
PreparedStatement ps;
ResultSet rs;

Persona p = new Persona(); 

@Override
    public List listar() {
        
ArrayList<Persona>list= new ArrayList<>();
String sql = "select  * from  tb_persona";

try{
con =cn.getConnection();
ps=con.prepareStatement(sql);
rs=ps.executeQuery();

while(rs.next()){
    
Persona pers = new Persona();

pers.setId(rs.getInt("id"));
pers.setDui(rs.getString("dui"));
pers.setNombre(rs.getString("nombre"));
pers.setApellido(rs.getString("apellido"));
list.add(pers);
}

}catch(Exception e){

}

    return list;
}
    
    
    
@Override
 public Persona list(int id) {
        
String sql ="select  * from  tb_persona  where id="+id;

try{
con =cn.getConnection();
ps=con.prepareStatement(sql);
rs=ps.executeQuery();

while(rs.next()){
p.setId(rs.getInt("id"));
p.setDui(rs.getString("dui"));
p.setNombre(rs.getString("nombre"));
p.setApellido(rs.getString("apellido"));
}
}catch(Exception e){

}
    return p;
}


@Override
public boolean add(Persona per) {
String sql="insert into tb_persona(dui, nombre, apellido)values('"+per.getDui()+"' , '"+per.getNombre()+"', '"+per.getApellido()+"' )";             

try{
con =cn.getConnection();
ps=con.prepareStatement(sql);
ps.executeUpdate();



}catch(Exception e){

}
return false;
}

@Override

 public boolean edit(Persona per) {
     
String sql="update tb_persona set dui='"+per.getDui()+"' ,nombre '"+per.getNombre()+"',apellido '"+per.getApellido()+"' where id="+per.getId();             
try{

con=cn.getConnection();
ps=con.prepareStatement(sql);
ps.executeUpdate();

}catch(Exception e){
    
}  
return false;

}
    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
