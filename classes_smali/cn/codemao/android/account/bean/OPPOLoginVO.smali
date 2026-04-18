.class public Lcn/codemao/android/account/bean/OPPOLoginVO;
.super Ljava/lang/Object;
.source "OPPOLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agreementIds:Ljava/util/List;
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

.field private pid:Ljava/lang/String;

.field private ssoid:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoid()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->ssoid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setSsoid(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->ssoid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcn/codemao/android/account/bean/OPPOLoginVO;->token:Ljava/lang/String;

    return-void
.end method
