.class public Lcn/codemao/android/account/bean/SignProtocolsRequest;
.super Ljava/lang/Object;
.source "SignProtocolsRequest.java"


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

.field private pid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/SignProtocolsRequest;->pid:Ljava/lang/String;

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

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/SignProtocolsRequest;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcn/codemao/android/account/bean/SignProtocolsRequest;->pid:Ljava/lang/String;

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

    .line 33
    iput-object p1, p0, Lcn/codemao/android/account/bean/SignProtocolsRequest;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcn/codemao/android/account/bean/SignProtocolsRequest;->pid:Ljava/lang/String;

    return-void
.end method
