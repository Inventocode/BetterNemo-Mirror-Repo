.class public Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;
.super Ljava/lang/Object;
.source "OnekeyLoginCheckRequestVO.java"


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

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
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

    .line 53
    iget-object v0, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->token:Ljava/lang/String;

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

    .line 57
    iput-object p1, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->token:Ljava/lang/String;

    return-void
.end method
