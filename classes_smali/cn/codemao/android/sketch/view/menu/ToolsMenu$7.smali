.class Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;
.super Lcn/codemao/android/sketch/listener/CanvasVariableWather;
.source "ToolsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ToolsMenu;->init(Lcn/codemao/android/sketch/view/paint/SketchControll;ILcn/codemao/android/sketch/view/menu/ScrawlMenu;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;


# direct methods
.method public static synthetic $r8$lambda$G0UDrNk-t7Un2wZPYKDQ-ZeCykw(Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->lambda$bgPreviewModelChanged$0()V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-direct {p0}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;-><init>()V

    return-void
.end method

.method private synthetic lambda$bgPreviewModelChanged$0()V
    .registers 4

    .line 372
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$2000(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/paint/IPaint;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V

    return-void
.end method


# virtual methods
.method public bgPreviewModelChanged(Z)V
    .registers 5

    .line 364
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->bgPreviewModelChanged(Z)V

    if-eqz p1, :cond_17

    .line 367
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1900(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_38

    :cond_17
    const/4 p1, 0x0

    .line 369
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1900(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    .line 371
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_38
    return-void
.end method

.method public cutBitmapModelChanged(Z)V
    .registers 4

    .line 357
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->cutBitmapModelChanged(Z)V

    .line 358
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    return-void
.end method

.method public onCanvasRectChanged(Landroid/graphics/RectF;)V
    .registers 4

    .line 382
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->onCanvasRectChanged(Landroid/graphics/RectF;)V

    .line 383
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->onScale(FLandroid/graphics/RectF;)V

    return-void
.end method

.method public onReady(Landroid/graphics/RectF;)V
    .registers 2

    .line 349
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->onReady(Landroid/graphics/RectF;)V

    .line 351
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1800(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    return-void
.end method

.method public pickColorModelChanged(Z)V
    .registers 4

    .line 343
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->pickColorModelChanged(Z)V

    .line 344
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$7;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1700(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    return-void
.end method
