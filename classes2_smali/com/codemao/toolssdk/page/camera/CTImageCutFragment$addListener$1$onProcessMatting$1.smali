.class final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->onProcessMatting(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;


# direct methods
.method public static synthetic $r8$lambda$fH4fqKQ71SsLfPLdZjJpQLc2tNE(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;->invoke$lambda$0(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getBinding$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getCheckMattingProgressRunnable$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 205
    invoke-virtual {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    new-instance v2, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
