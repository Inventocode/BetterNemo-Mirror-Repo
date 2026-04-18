.class public Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;
.super Ljava/lang/Object;
.source "AccountLoginResultVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/bean/AccountLoginResultVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthBean"
.end annotation


# instance fields
.field private email:Ljava/lang/String;

.field private has_password:Z

.field private is_weak_password:Z

.field private phone_number:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_password()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->has_password:Z

    return v0
.end method

.method public isIs_weak_password()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->is_weak_password:Z

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setHas_password(Z)V
    .registers 2

    .line 79
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->has_password:Z

    return-void
.end method

.method public setIs_weak_password(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->is_weak_password:Z

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthInfo {email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "is_weak_password="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->is_weak_password:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->phone_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", has_password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->has_password:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
