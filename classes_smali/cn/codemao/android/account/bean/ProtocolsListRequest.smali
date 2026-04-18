.class public Lcn/codemao/android/account/bean/ProtocolsListRequest;
.super Ljava/lang/Object;
.source "ProtocolsListRequest.java"


# instance fields
.field private codeList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "codeList"
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/ProtocolsListRequest;->pid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCodeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/codemao/android/account/bean/ProtocolsListRequest;->codeList:Ljava/util/List;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcn/codemao/android/account/bean/ProtocolsListRequest;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcn/codemao/android/account/bean/ProtocolsListRequest;->codeList:Ljava/util/List;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcn/codemao/android/account/bean/ProtocolsListRequest;->pid:Ljava/lang/String;

    return-void
.end method
