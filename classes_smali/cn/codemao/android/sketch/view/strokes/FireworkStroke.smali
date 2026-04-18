.class public Lcn/codemao/android/sketch/view/strokes/FireworkStroke;
.super Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;
.source "FireworkStroke.java"


# instance fields
.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    .line 33
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 43
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/FireworkStroke;->random:Ljava/util/Random;

    .line 44
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/codemao/android/sketch/R$drawable;->crayon:I

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected afterDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 3

    .line 135
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->afterDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    return-void
.end method

.method protected createDegrees([F[FF)F
    .registers 4

    .line 125
    iget-object p1, p0, Lcn/codemao/android/sketch/view/strokes/FireworkStroke;->random:Ljava/util/Random;

    const/16 p2, 0x168

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method protected createIcons()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/strokes/StokeBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v9, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v2, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/codemao/android/sketch/R$drawable;->icon_fire_1:I

    const/high16 v5, 0x42900000  # 72.0f

    const/high16 v6, 0x42900000  # 72.0f

    const/high16 v7, 0x40c00000  # 6.0f

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_fire_2:I

    const/high16 v13, 0x42900000  # 72.0f

    const/high16 v14, 0x42900000  # 72.0f

    const/high16 v15, 0x40c00000  # 6.0f

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_fire_3:I

    const/high16 v7, 0x42900000  # 72.0f

    const/high16 v8, 0x40c00000  # 6.0f

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_fire_4:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_fire_5:I

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_fire_6:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_fire_7:I

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_fire_8:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_fire_9:I

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_fire_10:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getForwordLenght()F
    .registers 3

    .line 164
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 63
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_firework:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 58
    sget v0, Lcn/codemao/android/sketch/R$drawable;->icon_tuya_firework:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected needDrawOverPath()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
