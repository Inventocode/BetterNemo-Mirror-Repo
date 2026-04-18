.class public Lcom/codemao/nemo/bean/SplitOptionsVO;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "SplitOptionsVO.java"


# instance fields
.field private options_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/SplitOptionVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
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
            "Lcom/codemao/nemo/bean/SplitOptionVO;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/codemao/nemo/bean/SplitOptionsVO;->options_dict:Ljava/util/Map;

    return-object v0
.end method

.method public setOptions_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/SplitOptionVO;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/SplitOptionsVO;->options_dict:Ljava/util/Map;

    return-void
.end method
