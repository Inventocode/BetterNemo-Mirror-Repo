.class public Lcn/codemao/android/sketch/view/paint/BrushPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "BrushPaint.java"


# instance fields
.field private brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    return-void
.end method

.method private saveDrawingPath()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_19

    .line 98
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 99
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/RectUtil;->getPathRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    :cond_19
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 106
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method private updatePath(Landroid/graphics/Path;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 67
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_60

    if-nez v0, :cond_22

    .line 69
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 70
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5d

    .line 72
    :cond_22
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v3, v5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v6, v4

    div-float/2addr v6, v5

    .line 72
    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 77
    :cond_60
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 5

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 35
    new-instance p3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v0, 0x63

    invoke-direct {p3, v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 36
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPaintType(I)V

    .line 38
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    new-instance p2, Landroid/graphics/Paint;

    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 39
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p1, p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 6

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    .line 47
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-nez p3, :cond_8

    return-void

    .line 49
    :cond_8
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 50
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/model/PointInfo;

    .line 52
    iget v0, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2b

    iget p3, p3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float p3, p3, p2

    if-nez p3, :cond_2b

    return-void

    .line 54
    :cond_2b
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 56
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BrushPaint;->brushInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {p1, p2, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->insertDrawingList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    .line 59
    :cond_52
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 90
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/BrushPaint;->saveDrawingPath()V

    return-void
.end method

.method public doSomethingBeforeChangeMode(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->doSomethingBeforeChangeMode(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 84
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/BrushPaint;->saveDrawingPath()V

    return-void
.end method

.method public getMode()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 112
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_brush:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 117
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_brush:I

    return v0
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 8

    .line 129
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 133
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result p4

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float p4, p4, v0

    if-nez p4, :cond_d

    neg-float p2, p2

    .line 136
    :cond_d
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result p4

    cmpl-float p4, p4, v0

    if-nez p4, :cond_16

    neg-float p3, p3

    .line 139
    :cond_16
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    const/4 p4, 0x0

    .line 140
    :goto_1e
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_52

    .line 141
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1e

    :cond_52
    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 10

    .line 147
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 149
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getTextScale()F

    move-result p3

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setTextScale(F)V

    .line 150
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    .line 151
    :goto_13
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_65

    .line 152
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    mul-float v1, v1, p2

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v2, p2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    mul-float v3, v3, p2

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v5}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v5

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_13

    :cond_65
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 8

    .line 158
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 159
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result p4

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 161
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result p4

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p3, p4, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 162
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 164
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p3, p4}, Lcn/codemao/android/sketch/view/paint/BrushPaint;->updatePath(Landroid/graphics/Path;Ljava/util/List;)V

    .line 165
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    .line 166
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getTextScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p4

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
