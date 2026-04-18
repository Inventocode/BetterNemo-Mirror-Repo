.class final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;
.super Lkotlin/jvm/internal/Lambda;
.source "EditMusicFileState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadMusicFile(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/File;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $loadComplete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $savePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method public static synthetic $r8$lambda$zq1W_k5thLXIPNGEzMAOvY-EVww(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->invoke$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->$savePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->$loadComplete:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$loadComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 538
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->invoke(Ljava/io/File;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/io/File;)V
    .registers 4

    .line 541
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->$savePath:Ljava/lang/String;

    :cond_e
    invoke-static {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$setMusicPath$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;->$loadComplete:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
