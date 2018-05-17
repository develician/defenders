package members;

public class memberDTO {
    private String memberID;
    private String memberPassword;
    private String memberEmail;

    public memberDTO(String memberID, String memberPassword, String memberEmail) {
        this.memberID = memberID;
        this.memberPassword = memberPassword;
        this.memberEmail = memberEmail;
    }


    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getMemberPassword() {
        return memberPassword;
    }

    public void setMemberPassword(String memberPassword) {
        this.memberPassword = memberPassword;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail;
    }
}
