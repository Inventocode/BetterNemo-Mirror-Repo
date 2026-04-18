.class public Lcn/codemao/android/account/bean/CheckCaptchaVO;
.super Ljava/lang/Object;
.source "CheckCaptchaVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private captcha:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;

.field private type:I


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

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/CheckCaptchaVO;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcn/codemao/android/account/bean/CheckCaptchaVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 31
    iget v0, p0, Lcn/codemao/android/account/bean/CheckCaptchaVO;->type:I

    return v0
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/CheckCaptchaVO;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/bean/CheckCaptchaVO;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcn/codemao/android/account/bean/CheckCaptchaVO;->type:I

    return-void
.end method
