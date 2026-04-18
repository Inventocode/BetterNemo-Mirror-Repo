.class public Lcn/codemao/android/account/bean/WechatBindVO;
.super Ljava/lang/Object;
.source "WechatBindVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appid:Ljava/lang/String;

.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatBindVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatBindVO;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatBindVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatBindVO;->code:Ljava/lang/String;

    return-void
.end method
