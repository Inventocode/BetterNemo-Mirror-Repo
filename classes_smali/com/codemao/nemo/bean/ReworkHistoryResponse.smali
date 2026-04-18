.class public Lcom/codemao/nemo/bean/ReworkHistoryResponse;
.super Lcom/codemao/nemo/bean/BaseData;
.source "ReworkHistoryResponse.java"


# instance fields
.field private fork_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;"
        }
    .end annotation
.end field

.field private root_work:Lcom/codemao/nemo/bean/ReworkHistoryVO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getFork_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryResponse;->fork_work_list:Ljava/util/List;

    return-object v0
.end method

.method public getRoot_work()Lcom/codemao/nemo/bean/ReworkHistoryVO;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryResponse;->root_work:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    return-object v0
.end method

.method public setFork_work_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryResponse;->fork_work_list:Ljava/util/List;

    return-void
.end method

.method public setRoot_work(Lcom/codemao/nemo/bean/ReworkHistoryVO;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryResponse;->root_work:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    return-void
.end method
