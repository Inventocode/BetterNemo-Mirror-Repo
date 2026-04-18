.class final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditMusicFileState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;->invoke()V
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
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 359
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 5

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$initTotalDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_20

    :catch_6
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "设置音频文件异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 366
    :goto_20
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$dismissMusicDownloading(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 367
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkFasterEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 368
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkLowerEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 369
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkLouderEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 370
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkSofterEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 371
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$updateCurrentStepMusicClipMs(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    return-void
.end method
