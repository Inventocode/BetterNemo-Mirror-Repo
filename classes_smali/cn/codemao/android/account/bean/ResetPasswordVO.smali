.class public Lcn/codemao/android/account/bean/ResetPasswordVO;
.super Ljava/lang/Object;
.source "ResetPasswordVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private confirm_password:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private ticket:Ljava/lang/String;


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

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/bean/ResetPasswordVO;->confirm_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/bean/ResetPasswordVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/ResetPasswordVO;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setConfirm_password(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/account/bean/ResetPasswordVO;->confirm_password:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/bean/ResetPasswordVO;->password:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/ResetPasswordVO;->ticket:Ljava/lang/String;

    return-void
.end method
