.class Lcn/codemao/android/sketch/SketchActivity2$3;
.super Lcn/codemao/android/sketch/listener/CanvasVariableWather;
.source "SketchActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity2;->delayInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity2;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity2;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$3;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {p0}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;-><init>()V

    return-void
.end method


# virtual methods
.method public cutBitmapModelChanged(Z)V
    .registers 4

    .line 304
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->cutBitmapModelChanged(Z)V

    .line 305
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$3;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$1200(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f4ccccd  # 0.8f

    invoke-static {p1, v0, v1, p1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animScaleAlpha(ZLandroid/view/View;FZ)V

    .line 306
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$3;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$1300(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_19

    const/4 p1, 0x4

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public pickColorModelChanged(Z)V
    .registers 4

    .line 297
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->pickColorModelChanged(Z)V

    .line 298
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$3;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$1200(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animAlpha(Landroid/view/View;Z)V

    .line 299
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$3;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$1300(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2$3;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$600(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    return-void
.end method
