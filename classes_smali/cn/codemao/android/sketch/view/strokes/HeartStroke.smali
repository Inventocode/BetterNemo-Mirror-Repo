.class public Lcn/codemao/android/sketch/view/strokes/HeartStroke;
.super Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;
.source "HeartStroke.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    return-void
.end method


# virtual methods
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

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v9, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v2, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_1:I

    const/high16 v5, 0x42000000  # 32.0f

    const/high16 v6, 0x42000000  # 32.0f

    const/high16 v7, 0x41f00000  # 30.0f

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_2:I

    const/high16 v13, 0x41a00000  # 20.0f

    const/high16 v14, 0x42000000  # 32.0f

    const/high16 v15, 0x41f00000  # 30.0f

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_3:I

    const/high16 v7, 0x42000000  # 32.0f

    const/high16 v8, 0x41f00000  # 30.0f

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_4:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_5:I

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_6:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_7:I

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/codemao/android/sketch/R$drawable;->icon_katong_heart_8:I

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcn/codemao/android/sketch/view/strokes/StokeBean;-><init>(Landroid/content/Context;IFFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 53
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_heart:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 48
    sget v0, Lcn/codemao/android/sketch/R$drawable;->icon_tuya_heart:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
