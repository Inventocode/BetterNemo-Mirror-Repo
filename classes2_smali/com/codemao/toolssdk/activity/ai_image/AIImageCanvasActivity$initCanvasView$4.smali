.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$4;
.super Ljava/lang/Object;
.source "AIImageCanvasActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$4;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$4;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_e
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->setCurrentColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public onDrawToolSelected(II)V
    .registers 3

    if-nez p2, :cond_5

    .line 250
    sget-object p1, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->PEN:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    goto :goto_7

    .line 252
    :cond_5
    sget-object p1, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->ERASER:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    .line 254
    :goto_7
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$4;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object p2

    if-nez p2, :cond_15

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_15
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->setCurrentDrawType(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;)V

    return-void
.end method
