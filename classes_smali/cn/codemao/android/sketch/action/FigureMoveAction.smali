.class public Lcn/codemao/android/sketch/action/FigureMoveAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "FigureMoveAction.java"


# instance fields
.field private dx:F

.field private dy:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 4

    .line 21
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 22
    iput p2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dx:F

    .line 23
    iput p3, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dy:F

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 6

    .line 37
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 38
    iget-object p1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dx:F

    neg-float v1, v1

    iget v2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dy:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 6

    .line 29
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 31
    iget-object p1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dx:F

    iget v2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dy:F

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    return-void
.end method

.method public updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 44
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 45
    iget p2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dx:F

    mul-float p2, p2, p1

    iput p2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dx:F

    .line 46
    iget p2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dy:F

    mul-float p2, p2, p1

    iput p2, p0, Lcn/codemao/android/sketch/action/FigureMoveAction;->dy:F

    return-void
.end method
