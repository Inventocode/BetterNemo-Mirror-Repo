.class public Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;
.super Ljava/lang/Object;
.source "CMToolsManagerRegisterActivity.kt"


# instance fields
.field private activityResultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/activity/result/ActivityResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private register:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final activityResultCallback(Landroidx/activity/result/ActivityResult;)V
    .registers 3

    const-string v0, "activityResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->activityResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public final launch(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/activity/result/ActivityResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->activityResultCallback:Lkotlin/jvm/functions/Function1;

    .line 31
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->register:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final setActivityResultLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->register:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method
