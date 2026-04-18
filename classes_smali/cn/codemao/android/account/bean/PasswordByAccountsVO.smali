.class public Lcn/codemao/android/account/bean/PasswordByAccountsVO;
.super Ljava/lang/Object;
.source "PasswordByAccountsVO.java"


# instance fields
.field private confirm_password:Ljava/lang/String;

.field private old_password:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfirm_password()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->confirm_password:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_password()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->old_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setConfirm_password(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->confirm_password:Ljava/lang/String;

    return-void
.end method

.method public setOld_password(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->old_password:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->password:Ljava/lang/String;

    return-void
.end method
