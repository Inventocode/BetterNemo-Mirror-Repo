.class public Lcn/codemao/android/account/bean/WechatLoginVO;
.super Ljava/lang/Object;
.source "WechatLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agreeProtocolIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agreement_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appid:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreeProtocolIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->agreeProtocolIds:Ljava/util/List;

    return-object v0
.end method

.method public getApp_id()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreeProtocolIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->agreeProtocolIds:Ljava/util/List;

    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->code:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/account/bean/WechatLoginVO;->pid:Ljava/lang/String;

    return-void
.end method
