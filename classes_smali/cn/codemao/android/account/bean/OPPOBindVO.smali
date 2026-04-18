.class public Lcn/codemao/android/account/bean/OPPOBindVO;
.super Ljava/lang/Object;
.source "OPPOBindVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appid:Ljava/lang/String;

.field private ssoid:Ljava/lang/String;

.field private token:Ljava/lang/String;


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

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOBindVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoid()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOBindVO;->ssoid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOBindVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOBindVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setSsoid(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOBindVO;->ssoid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOBindVO;->token:Ljava/lang/String;

    return-void
.end method
