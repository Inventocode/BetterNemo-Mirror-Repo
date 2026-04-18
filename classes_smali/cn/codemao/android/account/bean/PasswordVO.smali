.class public Lcn/codemao/android/account/bean/PasswordVO;
.super Ljava/lang/Object;
.source "PasswordVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private captcha:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptcha()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordVO;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordVO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcn/codemao/android/account/bean/PasswordVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordVO;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordVO;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/bean/PasswordVO;->phone_number:Ljava/lang/String;

    return-void
.end method
