.class public Lcn/codemao/android/account/bean/AccountLoginResultVO;
.super Ljava/lang/Object;
.source "AccountLoginResultVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;
    }
.end annotation


# instance fields
.field private auth:Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;

.field private user_info:Lcn/codemao/android/account/bean/UserInfoVO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth()Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;
    .registers 2

    .line 27
    iget-object v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;->auth:Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;

    return-object v0
.end method

.method public getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    return-object v0
.end method

.method public setAuth(Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;->auth:Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;

    return-void
.end method

.method public setUser_info(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginUserInfoVO [user_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    .line 104
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;->auth:Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;

    .line 105
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
