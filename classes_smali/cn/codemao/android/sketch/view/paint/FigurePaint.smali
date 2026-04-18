.class public Lcn/codemao/android/sketch/view/paint/FigurePaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "FigurePaint.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;


# instance fields
.field private curSelectFigure:I

.field private figureMode:I

.field iFigureSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/figure/IFigure;",
            ">;"
        }
    .end annotation
.end field

.field private lastColor:I

.field private lastFrom:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    const/16 v0, 0x7d1

    .line 36
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->curSelectFigure:I

    return-void
.end method


# virtual methods
.method public addFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;Ljava/lang/String;)V
    .registers 6

    .line 240
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->curSelectFigure:I

    const/16 v0, 0x7d2

    .line 241
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    .line 242
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_pattern_choose:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcn/codemao/android/sketch/model/ReportParams;->setMode(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    return-void
.end method

.method public bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V
    .registers 3

    .line 307
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    .line 308
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasPenUpdateListener(Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;)V

    return-void
.end method

.method public canAnim()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public copyFigureView()V
    .registers 7

    .line 194
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_34

    .line 197
    iget-object v2, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v2, :cond_34

    .line 198
    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->copy()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v2

    .line 200
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object v3

    new-instance v4, Lcn/codemao/android/sketch/action/CreateFigureAction;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcn/codemao/android/sketch/action/CreateFigureAction;-><init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    invoke-virtual {v3, v4}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 202
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 207
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    :cond_34
    return-void
.end method

.method public deleteFigure()V
    .registers 5

    .line 214
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 223
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/sketch/action/CreateFigureAction;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/sketch/action/CreateFigureAction;-><init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 227
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    .line 229
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    :cond_4c
    return-void
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 6

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    invoke-interface {p3, p1, p2, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->checkFigureTouchType(FFI)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    .line 58
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result p3

    if-eqz p3, :cond_45

    .line 59
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p3

    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result p3

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/view/figure/IFigure;

    if-eqz p3, :cond_57

    .line 62
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    invoke-virtual {p3, v0, p1, p2, v1}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    goto :goto_57

    .line 64
    :cond_45
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->curSelectFigure:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/view/figure/IFigure;

    if-eqz p3, :cond_57

    const/4 v0, 0x0

    .line 65
    iget v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    invoke-virtual {p3, v0, p1, p2, v1}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    :cond_57
    :goto_57
    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 7

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p3

    .line 75
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    const/16 v1, 0x7d3

    const/16 v2, 0x7da

    if-eq v0, v2, :cond_17

    const/16 v2, 0x7d7

    if-ne v0, v2, :cond_1f

    .line 76
    :cond_17
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 77
    iput v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    .line 80
    :cond_1f
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    if-ne v0, v1, :cond_32

    .line 81
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    sub-float/2addr p1, v0

    .line 82
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    sub-float/2addr p2, v0

    .line 83
    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v0, 0x0

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p0, p3, v0, p1, p2}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    goto :goto_6d

    :cond_32
    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_4a

    .line 86
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    sub-float v0, p1, v0

    .line 87
    iget v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    sub-float v1, p2, v1

    .line 88
    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p0, p3, v0, v1}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 89
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    .line 90
    iput p2, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    goto :goto_6d

    :cond_4a
    const/16 v1, 0x4e2a

    if-lt v0, v1, :cond_5c

    const/16 v1, 0x4e31

    if-gt v0, v1, :cond_5c

    .line 92
    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p0, p3, v0, p1, p2}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V

    .line 93
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    .line 94
    iput p2, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    goto :goto_6d

    .line 96
    :cond_5c
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->curSelectFigure:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/view/figure/IFigure;

    if-eqz p3, :cond_6d

    .line 98
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    invoke-virtual {p3, p1, p2, v0}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchMove(FFI)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 6

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p3

    .line 112
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    const/16 v1, 0x7d4

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_49

    const/16 v1, 0x7d7

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x4e2b

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x4e2e

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x7d9

    if-eq v0, v1, :cond_45

    const/16 v1, 0x7da

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x4e30

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x4e31

    if-eq v0, v1, :cond_4d

    .line 144
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->curSelectFigure:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    if-eqz v0, :cond_64

    .line 146
    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    invoke-virtual {v0, p3, p1, p2, v1}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    goto :goto_64

    .line 120
    :cond_45
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->copyFigureView()V

    goto :goto_64

    .line 115
    :cond_49
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->deleteFigure()V

    goto :goto_64

    .line 131
    :cond_4d
    iget-object v0, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_64

    .line 132
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    invoke-virtual {v0, p3, p1, p2, v1}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    .line 152
    :cond_64
    :goto_64
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    return-void
.end method

.method public getMode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 255
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_pattern:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 260
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_figure:I

    return v0
.end method

.method public moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V
    .registers 11

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/IPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    .line 183
    move-object v1, p1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v1, :cond_24

    .line 186
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    iget v5, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    move v2, p3

    move v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/view/figure/IFigure;->moveFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFZI)V

    .line 187
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_24
    return-void
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 11

    .line 281
    move-object v1, p1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 282
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    iget v5, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/view/figure/IFigure;->moveFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFZI)V

    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 6

    .line 294
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 295
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/view/figure/IFigure;->onCanvasScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;FZ)V

    return-void
.end method

.method public onChanged(Landroid/graphics/Paint;Lcn/codemao/android/sketch/view/paint/IPaint;Z)V
    .registers 6

    if-ne p2, p0, :cond_64

    .line 314
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p2

    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p2

    .line 315
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_64

    if-eqz p3, :cond_26

    .line 319
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastFrom:Z

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastFrom:Z

    .line 321
    iget-object v0, p2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastColor:I

    goto :goto_3a

    .line 324
    :cond_26
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastFrom:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastFrom:Z

    goto :goto_3a

    .line 327
    :cond_2e
    iget-object v0, p2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastColor:I

    .line 332
    :cond_3a
    :goto_3a
    iget-object v0, p2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p3, :cond_61

    .line 335
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    new-instance v0, Lcn/codemao/android/sketch/action/ModifyColorAction;

    iget-object p2, p2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->lastColor:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-direct {v0, p2, v1, p1}, Lcn/codemao/android/sketch/action/ModifyColorAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;II)V

    invoke-virtual {p3, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 336
    :cond_61
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->invalidate()V

    :cond_64
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 6

    .line 288
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 289
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/codemao/android/sketch/view/figure/IFigure;

    invoke-virtual {p4, p1, p2, p3}, Lcn/codemao/android/sketch/view/figure/IFigure;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    return-void
.end method

.method public rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 6

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 160
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz p1, :cond_1d

    .line 162
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/view/figure/IFigure;->onRotateAndScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;FF)V

    .line 163
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_1d
    return-void
.end method

.method public setCurSelectFigure(I)V
    .registers 2

    .line 248
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->curSelectFigure:I

    const/16 p1, 0x7d2

    .line 249
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->figureMode:I

    return-void
.end method

.method public setiFigureSparseArray(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/figure/IFigure;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method public singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V
    .registers 7

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/IPaint;->singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V

    .line 172
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz p1, :cond_1d

    .line 175
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/FigurePaint;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/figure/IFigure;->onSingleScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFF)V

    .line 176
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_1d
    return-void
.end method
