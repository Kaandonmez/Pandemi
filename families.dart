class Families {
  var id = "";
  var members = [];
  var hobbies = [];

  Families(String Id, List Members){
    id = Id;
    for(int i = 0; i<Members.length;i++){
      if(members.contains(Members[i]) == false){
        members.add(Members[i]);
        for(int j = 0; j < Members[i].hobbies.length; j++){
          if(hobbies.contains(Members[i].hobbies[j]) == false){
            hobbies.add(Members[i].hobbies[j]);
          }
        }
        Members[i].setFamilyId(Id);
      }
    }
  }

  @override
    String toString() {
        return id+" is a family. Members are "+members.toString()+" and hobbies are "+hobbies.toString();
  }
}

