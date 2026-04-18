.class public Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;
.super Ljava/lang/Object;
.source "GeetestVerifyRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appid:Ljava/lang/String;

.field private geetestChallenge:Ljava/lang/String;

.field private geetestSeccode:Ljava/lang/String;

.field private geetestValidate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getGeetestChallenge()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->geetestChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getGeetestSeccode()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->geetestSeccode:Ljava/lang/String;

    return-object v0
.end method

.method public getGeetestValidate()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->geetestValidate:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setGeetestChallenge(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->geetestChallenge:Ljava/lang/String;

    return-void
.end method

.method public setGeetestSeccode(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->geetestSeccode:Ljava/lang/String;

    return-void
.end method

.method public setGeetestValidate(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVerifyRequestVO;->geetestValidate:Ljava/lang/String;

    return-void
.end method
