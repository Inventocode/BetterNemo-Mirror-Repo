.class public Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;
.super Ljava/lang/Object;
.source "UpdataPhoneCaptchaVO.java"


# instance fields
.field private old_phone_number:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->pid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOld_phone_number()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->old_phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public setOld_phone_number(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->old_phone_number:Ljava/lang/String;

    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->phone_number:Ljava/lang/String;

    return-void
.end method
