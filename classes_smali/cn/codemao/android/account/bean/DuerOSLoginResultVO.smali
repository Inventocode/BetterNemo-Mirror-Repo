.class public Lcn/codemao/android/account/bean/DuerOSLoginResultVO;
.super Lcn/codemao/android/account/bean/LoginUserInfoVO;
.source "DuerOSLoginResultVO.java"


# instance fields
.field private thirdPartyUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getThirdPartyUid()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginResultVO;->thirdPartyUid:Ljava/lang/String;

    return-object v0
.end method

.method public setThirdPartyUid(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginResultVO;->thirdPartyUid:Ljava/lang/String;

    return-void
.end method
