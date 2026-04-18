.class public Lcn/codemao/android/sketch/action/CreateDrawWhenReEdit;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "CreateDrawWhenReEdit.java"


# instance fields
.field private reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Lcn/codemao/android/sketch/view/paint/ReEditPaint;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 21
    iput-object p2, p0, Lcn/codemao/android/sketch/action/CreateDrawWhenReEdit;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 34
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 36
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 37
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcn/codemao/android/sketch/action/CreateDrawWhenReEdit;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBindObject()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->insertEraser(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 27
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 28
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcn/codemao/android/sketch/action/CreateDrawWhenReEdit;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBindObject()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->removeEraser(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    return-void
.end method
