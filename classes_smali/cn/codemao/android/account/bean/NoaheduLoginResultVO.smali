.class public Lcn/codemao/android/account/bean/NoaheduLoginResultVO;
.super Ljava/lang/Object;
.source "NoaheduLoginResultVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;
    }
.end annotation


# instance fields
.field private cmid:Ljava/lang/String;

.field private expiration_time:J

.field private mUserInfoVO:Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_info"
    .end annotation
.end field

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmid()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->cmid:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration_time()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->expiration_time:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfoVO()Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;
    .registers 2

    .line 43
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->mUserInfoVO:Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;

    return-object v0
.end method

.method public setCmid(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->cmid:Ljava/lang/String;

    return-void
.end method

.method public setExpiration_time(J)V
    .registers 3

    .line 31
    iput-wide p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->expiration_time:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserInfoVO(Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->mUserInfoVO:Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginUserInfoVO{token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expiration_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->expiration_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cmid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->cmid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mUserInfoVO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->mUserInfoVO:Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
