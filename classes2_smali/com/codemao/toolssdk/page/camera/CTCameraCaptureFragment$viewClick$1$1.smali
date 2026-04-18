.class final Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTCameraCaptureFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;


# direct methods
.method public static synthetic $r8$lambda$obPGqoOKfinpWKhHwv6o3nrzmcw(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->invoke$lambda$0(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->access$getCameraManager$p(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->stopPreview()V

    :cond_e
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->invoke(ZLjava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/String;Landroid/net/Uri;)V
    .registers 10

    .line 71
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_72

    if-eqz p3, :cond_72

    .line 74
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_72

    .line 75
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    :try_start_31
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-static {p1, p3}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->access$compress(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 81
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;

    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1$2;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_88

    .line 88
    :cond_52
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "图片压缩失败了"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_59} :catch_5a

    goto :goto_88

    :catch_5a
    move-exception p1

    .line 91
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "图片处理异常了:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    goto :goto_88

    .line 94
    :cond_72
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "失败了:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    :goto_88
    return-void
.end method
