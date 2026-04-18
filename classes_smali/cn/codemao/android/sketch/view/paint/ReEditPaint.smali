.class public Lcn/codemao/android/sketch/view/paint/ReEditPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "ReEditPaint.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;


# instance fields
.field protected MlastX:F

.field protected MlastY:F

.field public final cavasPaint:Landroid/graphics/Paint;

.field private curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field private endRotateAngle:F

.field public ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

.field public figureMode:I

.field private mEreasers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mReEditBitmap:Landroid/graphics/Bitmap;

.field public mReEditCanvas:Landroid/graphics/Canvas;

.field public originRect:Landroid/graphics/RectF;

.field private reEditBitmap:Landroid/graphics/Bitmap;

.field public selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

.field public startRotateAngle:F

.field public stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

.field public stickerFigureInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    const/16 v0, 0x7d1

    .line 41
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    .line 60
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mEreasers:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    .line 67
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    .line 68
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->cavasPaint:Landroid/graphics/Paint;

    .line 70
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    new-instance v1, Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-direct {v1}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    .line 74
    invoke-virtual {v1, p1, v0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    .line 75
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getPenPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->bindPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method private configHelpRectBeforeDraw()V
    .registers 8

    .line 394
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v0

    .line 396
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result v1

    .line 398
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v0

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 400
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    const/16 v2, 0x14

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    .line 403
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    invoke-interface {v3, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v2

    .line 405
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_81

    .line 406
    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 407
    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 410
    :cond_81
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_a7

    .line 411
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 412
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_a7
    return-void
.end method

.method private isInRect(FF)Z
    .registers 5

    .line 509
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    .line 510
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    .line 512
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v1

    neg-float v1, v1

    invoke-static {p1, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 198
    :cond_3
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->startRotateAngle:F

    .line 200
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 201
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    const/16 p2, 0x4e2b

    const/4 p3, 0x4

    if-eq p4, p2, :cond_6b

    const/16 p2, 0x4e2e

    if-eq p4, p2, :cond_55

    const/16 p2, 0x4e30

    if-eq p4, p2, :cond_3f

    const/16 p2, 0x4e31

    if-eq p4, p2, :cond_29

    goto :goto_80

    .line 217
    :cond_29
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1, p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    goto :goto_80

    .line 213
    :cond_3f
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1, p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    goto :goto_80

    .line 210
    :cond_55
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1, p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    goto :goto_80

    .line 206
    :cond_6b
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1, p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    :goto_80
    return-void
.end method

.method private onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 326
    :cond_3
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->endRotateAngle:F

    const/16 p1, 0x7d3

    if-eq p4, p1, :cond_5b

    const/16 p1, 0x7d4

    if-eq p4, p1, :cond_3d

    const/16 p1, 0x4e2b

    if-eq p4, p1, :cond_22

    const/16 p1, 0x4e2e

    if-eq p4, p1, :cond_22

    const/16 p1, 0x4e30

    if-eq p4, p1, :cond_22

    const/16 p1, 0x4e31

    if-eq p4, p1, :cond_22

    goto :goto_73

    .line 345
    :cond_22
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p1

    new-instance v7, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startY:F

    move-object v0, v7

    move v2, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;-><init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFFFF)V

    invoke-virtual {p1, v7}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_73

    .line 337
    :cond_3d
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p1

    new-instance p4, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v2, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startX:F

    iget v3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startY:F

    iget v6, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->startRotateAngle:F

    iget v7, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->endRotateAngle:F

    move-object v0, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFFFFF)V

    invoke-virtual {p1, p4}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_73

    .line 332
    :cond_5b
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p1

    new-instance p4, Lcn/codemao/android/sketch/action/ReEditMoveAction;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startX:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startY:F

    sub-float/2addr p3, v1

    invoke-direct {p4, v0, p2, p3}, Lcn/codemao/android/sketch/action/ReEditMoveAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    invoke-virtual {p1, p4}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :goto_73
    return-void
.end method

.method private refreshEditBitmap()V
    .registers 6

    .line 579
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 580
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->reEditBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 582
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mEreasers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 583
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1, v4}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->drawCustomCenter(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;Landroid/graphics/RectF;)V

    goto :goto_16

    .line 586
    :cond_2c
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method private toOragin()V
    .registers 6

    .line 525
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v1, v2

    .line 529
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, v3

    .line 531
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    .line 532
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    .line 534
    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    .line 535
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    .line 538
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    .line 539
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    return-void
.end method


# virtual methods
.method public bindBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap;Z)V
    .registers 11

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 82
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 83
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x384

    const/16 v4, 0x232

    if-eqz p3, :cond_16

    goto :goto_1a

    :cond_16
    const/16 v3, 0x232

    const/16 v4, 0x384

    :goto_1a
    int-to-float p3, v3

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v5, v1, p3

    if-gtz v5, :cond_2c

    int-to-float v5, v4

    cmpl-float v6, v2, v5

    if-lez v6, :cond_27

    goto :goto_2c

    :cond_27
    div-float v3, v1, p3

    div-float p3, v2, v5

    goto :goto_44

    :cond_2c
    :goto_2c
    div-float v5, v1, v2

    const v6, 0x440c8000  # 562.0f

    int-to-float v4, v4

    div-float/2addr v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3d

    div-float/2addr p3, v1

    mul-float v2, v2, p3

    div-float/2addr v2, v4

    move p3, v2

    goto :goto_44

    :cond_3d
    div-float/2addr v4, v2

    mul-float v1, v1, v4

    div-float/2addr v1, p3

    move v3, v1

    const/high16 p3, 0x3f800000  # 1.0f

    .line 108
    :goto_44
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v3

    .line 109
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, p3

    .line 111
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    const/high16 v3, 0x40000000  # 2.0f

    div-float v4, v1, v3

    sub-float/2addr p3, v4

    iput p3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v1

    .line 112
    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 114
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    div-float p3, v2, v3

    sub-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v2

    .line 115
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 117
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    .line 118
    iget p3, p1, Landroid/graphics/RectF;->left:F

    neg-float p3, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 119
    iput-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->reEditBitmap:Landroid/graphics/Bitmap;

    .line 121
    new-instance p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 122
    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setDrawing(Z)V

    .line 123
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1, p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 124
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 125
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setRectF(Landroid/graphics/RectF;)V

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfos:Ljava/util/ArrayList;

    .line 128
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-direct {p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    .line 133
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->bindSelectFigureInfo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 137
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditBitmap:Landroid/graphics/Bitmap;

    .line 138
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditCanvas:Landroid/graphics/Canvas;

    .line 140
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->refreshEditBitmap()V

    return-void
.end method

.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    .line 180
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    return-void
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 6

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-interface {p3, p1, p2, v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->checkReEditTouchType(FFLjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    .line 188
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result p3

    if-eqz p3, :cond_28

    .line 189
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object p3

    iget-object p3, p3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    invoke-direct {p0, p3, p1, p2, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    .line 192
    :cond_28
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    .line 193
    iput p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 7

    .line 229
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    .line 232
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    if-eq p3, v1, :cond_f

    const/16 v1, 0x7d7

    if-ne p3, v1, :cond_19

    .line 233
    :cond_f
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result p3

    if-eqz p3, :cond_19

    .line 234
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    .line 238
    :cond_19
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    if-ne p3, v0, :cond_34

    .line 239
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    sub-float p3, p1, p3

    .line 240
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    sub-float v0, p2, v0

    .line 241
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v2, 0x0

    neg-float p3, p3

    neg-float v0, v0

    invoke-virtual {p0, v1, v2, p3, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    .line 242
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    .line 243
    iput p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    goto :goto_4d

    :cond_34
    const/16 v0, 0x7d4

    if-ne p3, v0, :cond_4d

    .line 246
    iget p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    sub-float p3, p1, p3

    .line 247
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    sub-float v0, p2, v0

    .line 248
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    neg-float p3, p3

    neg-float v0, v0

    invoke-virtual {p0, v1, p3, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 249
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    .line 250
    iput p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    .line 257
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 5

    .line 297
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 298
    iget p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    const/16 p2, 0x7d4

    if-eq p1, p2, :cond_2d

    const/16 p2, 0x7d7

    if-eq p1, p2, :cond_2d

    const/16 p2, 0x7da

    if-eq p1, p2, :cond_2d

    const/16 p2, 0x4e2b

    if-eq p1, p2, :cond_2d

    const/16 p2, 0x4e2e

    if-eq p1, p2, :cond_2d

    const/16 p2, 0x4e30

    if-eq p1, p2, :cond_2d

    const/16 p2, 0x4e31

    if-eq p1, p2, :cond_2d

    .line 315
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object p2, p2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    invoke-direct {p0, p2, p3, v0, p1}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    goto :goto_42

    .line 308
    :cond_2d
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 309
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastX:F

    iget p3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->MlastY:F

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->figureMode:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V

    .line 321
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public drawHelper(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/RectHelper;)V
    .registers 8

    .line 164
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 167
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 168
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000  # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_91

    .line 169
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasWidth()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v4

    invoke-interface {v4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcn/codemao/android/sketch/RectHelper;->getCanvasHeight()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_be

    .line 171
    :cond_91
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasWidth()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v4

    invoke-interface {v4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcn/codemao/android/sketch/RectHelper;->getCanvasHeight()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 173
    :goto_be
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcn/codemao/android/sketch/RectHelper;->drawReEditHelpRect(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_cc
    return-void
.end method

.method public drawMaterial(Landroid/graphics/Canvas;)V
    .registers 7

    .line 447
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->configHelpRectBeforeDraw()V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 453
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 454
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 460
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getColorByXY(FF)I
    .registers 5

    .line 595
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->isInRect(FF)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 596
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->toOragin()V

    .line 597
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    float-to-int v0, v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return p1

    :catch_30
    move-exception p1

    .line 600
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public getMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 355
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_reedit:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStickerFigureInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 2

    .line 154
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    return-object v0
.end method

.method public insertEraser(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 3

    .line 429
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mEreasers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->refreshEditBitmap()V

    return-void
.end method

.method public moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 271
    :cond_3
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 5

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    .line 291
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 5

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    .line 284
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result p3

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 5

    return-void
.end method

.method public onEraserDown(FF)V
    .registers 4

    .line 550
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->isInRect(FF)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 551
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->toOragin()V

    .line 552
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v0, p2}, Lcn/codemao/android/sketch/view/paint/PenPaint;->resetPaint(FF)V

    :cond_14
    return-void
.end method

.method public onEraserMove(FF)V
    .registers 7

    .line 470
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->isInRect(FF)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 472
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->toOragin()V

    .line 474
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_20

    .line 475
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v0, p2}, Lcn/codemao/android/sketch/view/paint/PenPaint;->resetPaint(FF)V

    .line 480
    :cond_20
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->stickerFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 484
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result p2

    .line 486
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 487
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5c

    .line 490
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 491
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    goto :goto_71

    .line 493
    :cond_5c
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 495
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->originRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    :goto_71
    mul-float v1, v1, v0

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    .line 501
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2, v1, v3, v0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->drawEraserPathWithScale(FFLandroid/graphics/Canvas;F)V

    .line 503
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mReEditCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_88
    return-void
.end method

.method public onTouchOutside()V
    .registers 2

    .line 421
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    .line 422
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public removeEraser(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 3

    .line 434
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->mEreasers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->refreshEditBitmap()V

    return-void
.end method

.method public rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/RectHelper;->updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    return-void
.end method

.method public saveEraserPath()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 5

    .line 560
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_f
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 564
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 565
    new-instance v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v2, 0x63

    invoke-direct {v1, v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 566
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v2, 0x3ea

    .line 567
    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPaintType(I)V

    .line 568
    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 569
    invoke-virtual {v1, p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 570
    invoke-static {v1}, Lcn/codemao/android/sketch/utils/RectUtil;->getPathRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 572
    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->insertEraser(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 574
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->ereaserPaint:Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->clearPath()V

    return-object v1
.end method
