.class public Lcom/codemao/nemo/bean/BroadcastsVO;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "BroadcastsVO.java"


# instance fields
.field private broadcast_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/BroadcastVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadcast_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/BroadcastVO;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/BroadcastsVO;->broadcast_dict:Ljava/util/Map;

    return-object v0
.end method

.method public setBroadcast_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/BroadcastVO;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/BroadcastsVO;->broadcast_dict:Ljava/util/Map;

    return-void
.end method
