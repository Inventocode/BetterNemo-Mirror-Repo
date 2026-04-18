.class public Lcn/codemao/android/sketch/action/CreateFigureAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "CreateFigureAction.java"


# instance fields
.field private isAdd:Z


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 20
    iput-boolean p2, p0, Lcn/codemao/android/sketch/action/CreateFigureAction;->isAdd:Z

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 37
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 39
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/CreateFigureAction;->isAdd:Z

    if-eqz v0, :cond_13

    .line 40
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 42
    :cond_13
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1c
    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 27
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/CreateFigureAction;->isAdd:Z

    if-eqz v0, :cond_11

    .line 28
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 30
    :cond_11
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    return-void
.end method
