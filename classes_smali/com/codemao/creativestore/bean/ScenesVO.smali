.class public Lcom/codemao/creativestore/bean/ScenesVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ScenesVO.java"


# instance fields
.field private current_scene:Ljava/lang/String;

.field private scenes_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation
.end field

.field private scenes_order:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_scene()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ScenesVO;->current_scene:Ljava/lang/String;

    return-object v0
.end method

.method public getScenes_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ScenesVO;->scenes_dict:Ljava/util/Map;

    return-object v0
.end method

.method public getScenes_order()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ScenesVO;->scenes_order:Ljava/util/Vector;

    return-object v0
.end method

.method public setCurrent_scene(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ScenesVO;->current_scene:Ljava/lang/String;

    return-void
.end method

.method public setScenes_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ScenesVO;->scenes_dict:Ljava/util/Map;

    return-void
.end method

.method public setScenes_order(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ScenesVO;->scenes_order:Ljava/util/Vector;

    return-void
.end method
