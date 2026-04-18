.class public Lcn/codemao/android/account/bean/UserInfoVO;
.super Ljava/lang/Object;
.source "UserInfoVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private birthday:J

.field private description:Ljava/lang/String;

.field private fullname:Ljava/lang/String;

.field private grade:I

.field private grade_desc:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private nickname:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private sex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->birthday:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullname()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .registers 2

    .line 87
    iget v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->grade:I

    return v0
.end method

.method public getGrade_desc()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->grade_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .registers 2

    .line 55
    iget v0, p0, Lcn/codemao/android/account/bean/UserInfoVO;->sex:I

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(J)V
    .registers 3

    .line 75
    iput-wide p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->birthday:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->description:Ljava/lang/String;

    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->fullname:Ljava/lang/String;

    return-void
.end method

.method public setGrade(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->grade:I

    return-void
.end method

.method public setGrade_desc(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->grade_desc:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->id:Ljava/lang/Long;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->qq:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->sex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoVO{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/UserInfoVO;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatar_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->avatar_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->sex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fullname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->fullname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthday="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->birthday:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", qq=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->qq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", grade="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->grade:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", grade_desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/UserInfoVO;->grade_desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
