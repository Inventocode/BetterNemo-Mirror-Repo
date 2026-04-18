.class final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->onMattingFailed()V
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
.method public static synthetic $r8$lambda$LctSqJuuqUeVjAM7iqchqMRtRgA(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;->invoke$lambda$0(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getUI_STATE_CUT_FAIL$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$changeUIState(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    new-instance v2, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
