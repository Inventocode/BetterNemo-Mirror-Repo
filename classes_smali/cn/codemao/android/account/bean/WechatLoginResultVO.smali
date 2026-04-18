.class public Lcn/codemao/android/account/bean/WechatLoginResultVO;
.super Lcn/codemao/android/account/bean/LoginUserInfoVO;
.source "WechatLoginResultVO.java"


# instance fields
.field private existed:Ljava/lang/Boolean;

.field private oauth_ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;-><init>()V

    return-void
.end method


# virtual methods
.method public Boolean(Ljava/lang/Boolean;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginResultVO;->existed:Ljava/lang/Boolean;

    return-void
.end method

.method public getExisted()Ljava/lang/Boolean;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatLoginResultVO;->existed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOauth_ticket()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatLoginResultVO;->oauth_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setExisted(Ljava/lang/Boolean;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginResultVO;->existed:Ljava/lang/Boolean;

    return-void
.end method

.method public setOauth_ticket(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginResultVO;->oauth_ticket:Ljava/lang/String;

    return-void
.end method
