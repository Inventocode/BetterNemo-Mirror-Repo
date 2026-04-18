.class public final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;
.super Ljava/lang/Object;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$mattingResult(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;Ljava/lang/String;)V
    .registers 2

    .line 196
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->mattingResult(Ljava/lang/String;)V

    return-void
.end method

.method private final mattingResult(Ljava/lang/String;)V
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$mattingResult$1;

    invoke-direct {v1, v0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$mattingResult$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$isSafe(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public onMattingFailed()V
    .registers 3

    .line 256
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "回调抠图失败"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingFailed$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$isSafe(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onMattingSuccess(Ljava/lang/String;)V
    .registers 5

    const-string v0, "resultUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "抠图成功:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 215
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 217
    :cond_29
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$isSafe(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onProcessMatting(Ljava/lang/String;)V
    .registers 4

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getStopMattingIfInProgressing$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 199
    invoke-virtual {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->onMattingFailed()V

    .line 200
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "抠图失败"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_20
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "还在抠图中"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onProcessMatting$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$isSafe(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
