.class public Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;
.super Ljava/lang/Object;
.source "WechatCodeLoginResultVO.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private nonce_str:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private time_stamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce_str()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->nonce_str:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_stamp()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->time_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setNonce_str(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->nonce_str:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTime_stamp(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->time_stamp:Ljava/lang/String;

    return-void
.end method
