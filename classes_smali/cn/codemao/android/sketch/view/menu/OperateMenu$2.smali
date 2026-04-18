.class Lcn/codemao/android/sketch/view/menu/OperateMenu$2;
.super Lcn/codemao/android/sketch/listener/CanvasVariableWather;
.source "OperateMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/OperateMenu;->bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

.field final synthetic val$sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/OperateMenu;Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 196
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    iput-object p2, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->val$sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-direct {p0}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;-><init>()V

    return-void
.end method


# virtual methods
.method public bgPreviewModelChanged(Z)V
    .registers 3

    .line 260
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->bgPreviewModelChanged(Z)V

    .line 261
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

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
    .registers 4

    .line 249
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->cutBitmapModelChanged(Z)V

    .line 250
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    const/high16 p1, 0x3f800000  # 1.0f

    .line 251
    :goto_f
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 253
    new-instance v0, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {v0, p1}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 254
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onReady(Landroid/graphics/RectF;)V
    .registers 3

    .line 211
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->onReady(Landroid/graphics/RectF;)V

    .line 212
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$200(Lcn/codemao/android/sketch/view/menu/OperateMenu;Landroid/graphics/RectF;)V

    return-void
.end method

.method public pickColorModelChanged(Z)V
    .registers 4

    .line 238
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->pickColorModelChanged(Z)V

    .line 239
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    const/high16 p1, 0x3f800000  # 1.0f

    .line 240
    :goto_f
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 242
    new-instance v0, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {v0, p1}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 243
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public selectFigureChanged(Lcn/codemao/android/sketch/model/SelectFigureInfo;)V
    .registers 5

    .line 217
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->selectFigureChanged(Lcn/codemao/android/sketch/model/SelectFigureInfo;)V

    .line 218
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$300(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_14

    :cond_12
    const/16 v1, 0x8

    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$400(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 220
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$500(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 222
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->val$sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_71

    .line 224
    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_4e

    .line 226
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$400(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_71

    .line 227
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_5f

    .line 228
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$500(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_71

    .line 230
    :cond_5f
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$400(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 231
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$500(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_71
    :goto_71
    return-void
.end method

.method public selectTextChanged(Lcn/codemao/android/sketch/model/SelectTextInfo;)V
    .registers 4

    .line 200
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->selectTextChanged(Lcn/codemao/android/sketch/model/SelectTextInfo;)V

    .line 201
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$100(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_13

    :cond_11
    const/16 v1, 0x8

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 203
    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground()Z

    move-result p1

    .line 204
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$100(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_2b
    return-void
.end method
