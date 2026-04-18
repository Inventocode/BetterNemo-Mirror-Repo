.class final Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModifyRecordFileState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $endTimeMills:I

.field final synthetic $isCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $startTimeMills:I

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;II)V
    .registers 5

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->$isCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->$endTimeMills:I

    iput p4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->$startTimeMills:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop()V

    .line 93
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->$isCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_15

    return-void

    .line 96
    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "music_url"

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$getSavePath$p(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "music_path"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->$endTimeMills:I

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->$startTimeMills:I

    sub-int/2addr p1, v1

    int-to-long v1, p1

    const-string p1, "music_duration"

    .line 99
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "activity.dataBinding.tvTitle.text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "music_name"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
