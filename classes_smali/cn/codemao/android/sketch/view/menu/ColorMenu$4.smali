.class Lcn/codemao/android/sketch/view/menu/ColorMenu$4;
.super Lcn/codemao/android/sketch/listener/CanvasVariableWather;
.source "ColorMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ColorMenu;->bindCanvas(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-direct {p0}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;-><init>()V

    return-void
.end method


# virtual methods
.method public bgPreviewModelChanged(Z)V
    .registers 3

    .line 173
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->bgPreviewModelChanged(Z)V

    .line 174
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    if-eqz p1, :cond_a

    const/16 p1, 0x8

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public cutBitmapModelChanged(Z)V
    .registers 5

    xor-int/lit8 v0, p1, 0x1

    .line 167
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;FZ)V

    return-void
.end method

.method public onCanvasRectChanged(Landroid/graphics/RectF;)V
    .registers 4

    .line 179
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->onCanvasRectChanged(Landroid/graphics/RectF;)V

    .line 180
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->onScale(FLandroid/graphics/RectF;)V

    return-void
.end method

.method public pickColorModelChanged(Z)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$4;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animAlpha(Landroid/view/View;Z)V

    return-void
.end method
