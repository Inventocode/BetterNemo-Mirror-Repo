.class public Lcn/codemao/android/account/bean/UpdateBindPhoneVO;
.super Ljava/lang/Object;
.source "UpdateBindPhoneVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private captcha:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptcha()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getNew_phone_number()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setNew_phone_number(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;->phone_number:Ljava/lang/String;

    return-void
.end method
