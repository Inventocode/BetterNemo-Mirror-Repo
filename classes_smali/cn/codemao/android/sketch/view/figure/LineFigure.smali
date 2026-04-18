.class public Lcn/codemao/android/sketch/view/figure/LineFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "LineFigure.java"


# instance fields
.field protected isClick:Z

.field private lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->isClick:Z

    return-void
.end method


# virtual methods
.method public addFigure()V
    .registers 3

    .line 40
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/LineFigure;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->setCurSelectFigure(I)V

    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 4

    .line 93
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getHelpRectVerticlePadding()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 109
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_line:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 30
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_line:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected minHelpRectHeight()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V
    .registers 5

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->isClick:Z

    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 49
    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    :cond_14
    return-void
.end method

.method public onTouchMove(FFI)V
    .registers 11

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchMove(FFI)V

    const/4 p3, 0x0

    .line 57
    iput-boolean p3, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->isClick:Z

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-nez v0, :cond_32

    .line 69
    new-instance v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/LineFigure;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 70
    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setLineSize(I)V

    .line 71
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 72
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0, p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setDrawing(Z)V

    .line 73
    iget-object p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {p3, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 75
    :cond_32
    iget-object p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startX:F

    iget v3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startY:F

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/codemao/android/sketch/RectHelper;->caculatorLineRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFZ)V

    .line 76
    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V
    .registers 12

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/figure/IFigure;->onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    .line 83
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->isClick:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz p1, :cond_1d

    .line 85
    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/LineFigure;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startX:F

    iget v3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startY:F

    const/4 v6, 0x1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcn/codemao/android/sketch/RectHelper;->caculatorLineRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFZ)V

    :cond_1d
    return-void
.end method
