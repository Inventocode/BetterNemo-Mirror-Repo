.class public Lcn/codemao/android/account/bean/LoginResultVO;
.super Lcn/codemao/android/account/rx/ResonseData;
.source "LoginResultVO.java"


# instance fields
.field private cmid:Ljava/lang/String;

.field private expiration_time:J

.field private has_password:Z

.field private is_first_login:Z

.field private token:Ljava/lang/String;

.field private user_info:Lcn/codemao/android/account/bean/UserInfoVO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcn/codemao/android/account/rx/ResonseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmid()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginResultVO;->cmid:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration_time()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcn/codemao/android/account/bean/LoginResultVO;->expiration_time:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginResultVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 2

    .line 21
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginResultVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    return-object v0
.end method

.method public isHas_password()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/LoginResultVO;->has_password:Z

    return v0
.end method

.method public isIs_first_login()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/LoginResultVO;->is_first_login:Z

    return v0
.end method

.method public setCmid(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->cmid:Ljava/lang/String;

    return-void
.end method

.method public setExpiration_time(J)V
    .registers 3

    .line 49
    iput-wide p1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->expiration_time:J

    return-void
.end method

.method public setHas_password(Z)V
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->has_password:Z

    return-void
.end method

.method public setIs_first_login(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->is_first_login:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser_info(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginResultVO{user_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/LoginResultVO;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cmid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/LoginResultVO;->cmid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
