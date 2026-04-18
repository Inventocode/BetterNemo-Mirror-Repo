.class public Lcn/codemao/android/account/bean/EmailRegisterVO;
.super Ljava/lang/Object;
.source "EmailRegisterVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->email:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->language:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->password:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcn/codemao/android/account/bean/EmailRegisterVO;->pid:Ljava/lang/String;

    return-void
.end method
