.class public Lcn/codemao/android/account/bean/AuthResultVO;
.super Ljava/lang/Object;
.source "AuthResultVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private has_password:Z

.field private phone_number:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcn/codemao/android/account/bean/AuthResultVO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcn/codemao/android/account/bean/AuthResultVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcn/codemao/android/account/bean/AuthResultVO;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_password()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/AuthResultVO;->has_password:Z

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->email:Ljava/lang/String;

    return-void
.end method

.method public setHas_password(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->has_password:Z

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthInfoVO{has_password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->has_password:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phone_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->phone_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/AuthResultVO;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/AuthResultVO;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
