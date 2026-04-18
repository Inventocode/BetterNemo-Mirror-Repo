.class public Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;
.super Ljava/lang/Object;
.source "LoginUserInfoVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/bean/LoginUserInfoVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthBean"
.end annotation


# instance fields
.field private email:Ljava/lang/String;

.field private has_password:Z

.field private phone_number:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_password()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->has_password:Z

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setHas_password(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->has_password:Z

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthInfo {email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->phone_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", has_password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->has_password:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
