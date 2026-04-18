.class public Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;
.super Ljava/lang/Object;
.source "PreOnekeyLoginInfoVO.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private provider:Ljava/lang/String;


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

    .line 27
    iget-object v0, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;->provider:Ljava/lang/String;

    return-void
.end method
