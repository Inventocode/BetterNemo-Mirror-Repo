.class public Lcn/codemao/android/account/bean/PasswordFirstVO;
.super Ljava/lang/Object;
.source "PasswordFirstVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private confirm_password:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfirm_password()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordFirstVO;->confirm_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordFirstVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setConfirm_password(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordFirstVO;->confirm_password:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordFirstVO;->password:Ljava/lang/String;

    return-void
.end method
