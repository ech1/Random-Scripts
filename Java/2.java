public class Team {
  Member member;
  public Team(Member member){ // Who i sin this team ?
    this.member = member;     // one 'member' is in this team !
  }
  // here's our main method
  public static void main(String[] args){
    Member myMember = new Member("Auriel", "light", 10,1);
    Team myTeam = new Team(MyMember);
    System.out.println(myTeam.member.getName());
    System.out.println(myTeam.member.getType());
    System.out.println(myTeam.member.getLevel());
    System.out.println(myTeam.member.getRank());
  }
}

class Member {
  private String name;
  private String type;
  private int level; // note the data type here and below
  private int rank;

  public Member(String name, String type, int level, int rank){
    this.name = name;
    this.type = type;
    this.level = level;
    this.rank = rank;
  }
  /* let's define our getter functions here */
  public String getName(){
    return this.name;
  }
  public String getType(){
    return this.type;
  }
  public int getLevel(){
    return this.level;
  }
  public int getRank(){
    return this.rank;
  }
}
