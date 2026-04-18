.class public Lcn/codemao/android/account/bean/LoginVO;
.super Ljava/lang/Object;
.source "LoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private identity:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginVO;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/LoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginVO;->identity:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginVO;->password:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/LoginVO;->pid:Ljava/lang/String;

    return-void
.end method
