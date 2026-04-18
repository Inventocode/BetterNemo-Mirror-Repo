.class public Lcn/codemao/android/sketch/action/CreateDrawsAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "CreateDrawsAction.java"


# instance fields
.field private isAdd:Z

.field private stickerFigureInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->stickerFigureInfo:Ljava/util/List;

    .line 25
    iput-boolean p2, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->isAdd:Z

    return-void
.end method


# virtual methods
.method public getStickerFigureInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->stickerFigureInfo:Ljava/util/List;

    return-object v0
.end method

.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 47
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 49
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->isAdd:Z

    if-eqz v0, :cond_11

    .line 50
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->stickerFigureInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 52
    :cond_11
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->stickerFigureInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 54
    :goto_1a
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 31
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 32
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->isAdd:Z

    if-eqz v0, :cond_11

    .line 33
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->stickerFigureInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 35
    :cond_11
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/CreateDrawsAction;->stickerFigureInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :goto_1a
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
