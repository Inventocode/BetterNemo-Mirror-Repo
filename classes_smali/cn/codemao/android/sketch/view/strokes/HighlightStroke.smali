.class public Lcn/codemao/android/sketch/view/strokes/HighlightStroke;
.super Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;
.source "HighlightStroke.java"


# instance fields
.field private m_paint:Landroid/graphics/Paint;

.field private maskPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V
    .registers 6

    .line 33
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 37
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 38
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    const v1, -0x4c00ff4c

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    :try_start_45
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_5d
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 61
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    const/16 v0, -0xf06

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected afterDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 4

    .line 97
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->afterDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 98
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected createIcons()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/strokes/StokeBean;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v8, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/codemao/android/sketch/R$drawable;->yingguang2:I

    const/high16 v4, 0x42100000  # 36.0f

    const/high16 v5, 0x42100000  # 36.0f

    const/high16 v6, 0x40c00000  # 6.0f

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getForwordLenght()F
    .registers 3

    .line 102
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 118
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_highlight:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 113
    sget v0, Lcn/codemao/android/sketch/R$drawable;->icon_tuya_hightlite:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected needDrawOverPath()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateUnsize()V
    .registers 5

    .line 71
    invoke-super {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->updateUnsize()V

    .line 72
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->maskPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    :try_start_1e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/HighlightStroke;->m_paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method
