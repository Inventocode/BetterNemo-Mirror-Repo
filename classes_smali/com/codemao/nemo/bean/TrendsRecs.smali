.class public Lcom/codemao/nemo/bean/TrendsRecs;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "TrendsRecs.java"


# instance fields
.field private find_new_friends:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecs;->items:Ljava/util/List;

    return-object v0
.end method

.method public isFind_new_friends()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/TrendsRecs;->find_new_friends:Z

    return v0
.end method

.method public setFind_new_friends(Z)V
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/TrendsRecs;->find_new_friends:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecs;->items:Ljava/util/List;

    return-void
.end method
