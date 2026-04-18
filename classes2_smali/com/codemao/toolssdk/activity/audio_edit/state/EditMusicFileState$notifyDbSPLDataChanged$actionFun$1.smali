.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;
.super Ljava/lang/Object;
.source "EditMusicFileState.kt"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged$actionFun(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $complete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

.field private final volumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FYv1bu2-Pe2Etd1rm_2lrzrqAJM(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->processingFinished$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;Lkotlin/jvm/functions/Function0;)V

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

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->$complete:Lkotlin/jvm/functions/Function0;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->volumeList:Ljava/util/List;

    return-void
.end method

.method private static final processingFinished$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->clearVolumeList()V

    .line 583
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget-object p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->volumeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->addAllVolumeData(Ljava/util/List;Z)V

    .line 584
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutState()V

    .line 585
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v0, "activity.dataBinding.vMusicCutout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->reTidyData$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;ZILjava/lang/Object;)V

    .line 586
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getOriginTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)F

    move-result p1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-nez p1, :cond_57

    const/4 v1, 0x1

    :cond_57
    if-nez v1, :cond_9c

    .line 588
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getOriginTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)F

    move-result p1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getCurrentActionStep$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeedFactor()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p1, p1, v0

    .line 590
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setTotalSeconds(F)V

    .line 591
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getCurrentCutOutDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {p0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$formatRecordFileDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;F)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x73

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 591
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_9c
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 3

    const-string v0, "audioEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 571
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->calculateRecordVolume(Lcom/codemao/toolssdk/dsp/AudioEvent;)F

    move-result p1

    goto :goto_22

    .line 573
    :cond_18
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->calculateSoundVolume(Lcom/codemao/toolssdk/dsp/AudioEvent;)F

    move-result p1

    .line 575
    :goto_22
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->volumeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;->$complete:Lkotlin/jvm/functions/Function0;

    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
