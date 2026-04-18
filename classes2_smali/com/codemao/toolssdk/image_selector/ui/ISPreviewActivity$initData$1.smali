.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;
.super Ljava/lang/Object;
.source "ISPreviewActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;


# direct methods
.method public static synthetic $r8$lambda$HECj5Qeis7ktM-tM6_d7QmnZFmk(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->onMattingFailed$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P0akFHNHb5p8g_ivVb9Hd0Azr_M(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->onProcessMatting$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5JdOgfskh_aYh39HfhfmBbefoQ(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->mattingResult$lambda$2(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$mattingResult(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;Ljava/lang/String;)V
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->mattingResult(Ljava/lang/String;)V

    return-void
.end method

.method private final mattingResult(Ljava/lang/String;)V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final mattingResult$lambda$2(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$addUndoPreviewImage(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$stopLoadingAnima(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method private static final onMattingFailed$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$stopLoadingAnima(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method private static final onProcessMatting$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getCheckMattingProgressRunnable$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onMattingFailed()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    const-string v1, "抠图失败，请重试或选择手动抠图"

    const/4 v2, 0x0

    .line 173
    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 176
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$setCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMattingSuccess(Ljava/lang/String;)V
    .registers 4

    const-string v0, "resultUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 137
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$setCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$onMattingSuccess$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-direct {v0, p0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$onMattingSuccess$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    :cond_2f
    return-void
.end method

.method public onProcessMatting(Ljava/lang/String;)V
    .registers 3

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getStopMattingIfInProgressing$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$getCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 126
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->onMattingFailed()V

    return-void

    .line 129
    :cond_19
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$setCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
