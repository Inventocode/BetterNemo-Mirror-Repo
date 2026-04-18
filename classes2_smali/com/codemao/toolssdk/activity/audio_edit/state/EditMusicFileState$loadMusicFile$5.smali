.class final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;
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
        "Ljava/lang/Exception;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $loadFail:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method public static synthetic $r8$lambda$G_1GV7u7Rkx5LFxcN9dT65632cE(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;->invoke$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;->$loadFail:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$loadFail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 538
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;->invoke(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;->$loadFail:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
