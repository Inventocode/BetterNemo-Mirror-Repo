.class public Lcom/codemao/creativestore/bean/AddSceneInfo;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "AddSceneInfo.java"


# instance fields
.field private indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation
.end field

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->scenes:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->styles:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->indexes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->indexes:Ljava/util/List;

    return-object v0
.end method

.method public getScenes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->scenes:Ljava/util/List;

    return-object v0
.end method

.method public getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->styles:Ljava/util/List;

    return-object v0
.end method

.method public setIndexes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->indexes:Ljava/util/List;

    return-void
.end method

.method public setScenes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->scenes:Ljava/util/List;

    return-void
.end method

.method public setStyles(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddSceneInfo;->styles:Ljava/util/List;

    return-void
.end method
