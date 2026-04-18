.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;
.super Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;
.source "ModifyRecordFileState.kt"


# instance fields
.field private final isKids:Z

.field private recordDuration:F

.field private final savePath:Ljava/lang/String;

.field private final totalDuration:F


# direct methods
.method public static synthetic $r8$lambda$Au3Nr5Ps4rRiD_qaZ-0Tx7M_wZ0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI$lambda$3$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BYmy915qGEqVUG0i0ecyrnTbHDo(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KCJ142gTqkq9wr5lYFjhcSlTNW0(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI$lambda$4(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KyqQqtXXk2bQ_y_Lol2lZAlV8TM(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI$lambda$6(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXFrh_g7KaUmpmtZYiSFPIJWKtc(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI$lambda$5(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ab_ejc_SlJ36PfpjYpj8URtDSxI(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI$lambda$3$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oNaxVDEgcTVEGMX3FirYkOk27A0(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->resetExitListener$lambda$7(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wExQEw_XyE6Lffxq-1lL1USdNXs(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->nextStep$lambda$8(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;ZLjava/lang/String;F)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    .line 31
    iput-boolean p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->isKids:Z

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    iput p4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->totalDuration:F

    return-void
.end method

.method public static final synthetic access$formatRecordFileDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;F)D
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->formatRecordFileDuration(F)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getSavePath$p(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$playMusic(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->playMusic()V

    return-void
.end method

.method public static final synthetic access$resetPlayState(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->resetPlayState()V

    return-void
.end method

.method public static final synthetic access$showStopPlayingState(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->showStopPlayingState()V

    return-void
.end method

.method public static final synthetic access$stopPlayingAudio(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    return-void
.end method

.method private final formatRecordFileDuration(F)D
    .registers 8

    const/16 v0, 0x64

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 233
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    div-double/2addr v0, v2

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L  # 60.0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_19

    return-wide v4

    :cond_19
    return-wide v0
.end method

.method private static final nextStep$lambda$8(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 259
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "activity.dataBinding.musicEditLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->bottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "activity.dataBinding.bottomLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v4, v3, p1

    mul-float v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 263
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 264
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x1

    cmpg-float p1, p1, v3

    if-nez p1, :cond_5c

    const/4 p1, 0x1

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    if-eqz p1, :cond_c2

    .line 267
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    const-string v2, "music_url"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    const-string v2, "music_path"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 271
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "activity.dataBinding.tvTitle.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "music_name"

    .line 269
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    .line 274
    new-instance p1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    .line 275
    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->setFromRecordState(Z)V

    .line 276
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "进入录音文件编辑状态,2"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setCurrentState(Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;)V

    :cond_c2
    return-void
.end method

.method private final playMusic()V
    .registers 10

    .line 203
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v4, "activity.dataBinding.vMusicCutout"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v3

    .line 205
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5, v6, v7}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v4

    .line 206
    new-instance v5, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;

    invoke-direct {v5, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->playAudioByCut(Landroid/content/Context;Ljava/lang/String;IILcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method private final playRecordAudio()V
    .registers 3

    .line 178
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 179
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    .line 180
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->resetPlayState()V

    return-void

    .line 183
    :cond_13
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->playMusic()V

    return-void
.end method

.method private final resetExitListener()V
    .registers 3

    .line 249
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivExit:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final resetExitListener$lambda$7(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    .line 251
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    const-class p1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->checkShowSaveDialogOrFinish(Ljava/lang/Class;)V

    return-void
.end method

.method private final resetPlayState()V
    .registers 3

    .line 241
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivCenter:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final showStopPlayingState()V
    .registers 3

    .line 245
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivCenter:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final stopPlayingAudio()V
    .registers 3

    .line 227
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 228
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAudioByCut(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private final updateKidsViews()V
    .registers 7

    .line 187
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_1b

    :cond_1a
    move-object v1, v3

    :goto_1b
    const/high16 v2, 0x42340000  # 45.0f

    if-nez v1, :cond_20

    goto :goto_2b

    .line 189
    :cond_20
    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 190
    :goto_2b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v5, :cond_40

    move-object v3, v4

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_40
    if-nez v3, :cond_43

    goto :goto_4e

    .line 191
    :cond_43
    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_4e
    const/high16 v2, 0x42a00000  # 80.0f

    if-nez v1, :cond_53

    goto :goto_5d

    .line 192
    :cond_53
    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_5d
    if-nez v1, :cond_60

    goto :goto_6a

    .line 193
    :cond_60
    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_6a
    if-nez v3, :cond_6d

    goto :goto_77

    .line 194
    :cond_6d
    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_77
    if-nez v3, :cond_7a

    goto :goto_84

    .line 195
    :cond_7a
    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 196
    :goto_84
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->editMusicName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static final updateUI$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    .line 57
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 58
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_internet_error:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;II)V

    return-void

    .line 61
    :cond_1d
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->showGeneratingMusicPop(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateUI$lambda$3$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 3

    const-string p2, "$isCanceled"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 64
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getUploadManager()Lcom/codemao/toolssdk/manager/CMTUploadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->destroy()V

    .line 65
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop()V

    return-void
.end method

.method private static final updateUI$lambda$3$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isCanceled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v1, "activity.dataBinding.vMusicCutout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2, v3, v4}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".wav"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getFileCacheDir()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->generateRandomAccessFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 74
    iget-object v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    if-eqz v4, :cond_81

    .line 75
    sget-object v5, Lcom/codemao/toolssdk/utils/MusicClipUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/MusicClipUtils;

    .line 76
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v6

    .line 77
    iget-object v7, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->savePath:Ljava/lang/String;

    int-to-long v9, v1

    int-to-long v11, v0

    .line 75
    invoke-virtual/range {v5 .. v12}, Lcom/codemao/toolssdk/utils/MusicClipUtils;->clipByDSP(Landroid/content/Context;Ljava/lang/String;Ljava/io/RandomAccessFile;JJ)V

    .line 83
    :cond_81
    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_8d

    .line 84
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop()V

    return-void

    .line 87
    :cond_8d
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_94

    goto :goto_95

    :cond_94
    const/4 v3, 0x0

    :goto_95
    if-eqz v3, :cond_a9

    .line 88
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop()V

    .line 89
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    const/4 p1, 0x5

    const-string v0, "数据异常"

    invoke-static {p0, v0, p1}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_be

    .line 91
    :cond_a9
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getUploadManager()Lcom/codemao/toolssdk/manager/CMTUploadManager;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;II)V

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v3, v2, v4, v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->getTokenAndUploadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :goto_be
    return-void
.end method

.method private static final updateUI$lambda$4(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->playRecordAudio()V

    return-void
.end method

.method private static final updateUI$lambda$5(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCallingState()I

    move-result p1

    sget-object v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/CTConstType;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->getRECORD_STATE_CALLING()I

    move-result v0

    if-ne p1, v0, :cond_1f

    .line 134
    sget-object p1, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;->INSTANCE:Lcom/codemao/toolssdk/func/record/RecordConflictUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;->showForbidToast(Landroid/content/Context;)V

    return-void

    .line 137
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setCurrentState(Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;)V

    .line 138
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    .line 139
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->resetPlayedIndex()V

    .line 140
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->resetData()V

    return-void
.end method

.method private static final updateUI$lambda$6(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->nextStep()V

    return-void
.end method


# virtual methods
.method public nextStep()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 256
    fill-array-data v0, :array_60

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x190

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 282
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->bottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 284
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->editMusicName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    nop

    :array_60
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public onStop()V
    .registers 1

    .line 290
    invoke-super {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->onStop()V

    .line 291
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->stopPlayingAudio()V

    return-void
.end method

.method public updateUI()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->progress:Lcom/codemao/toolssdk/view/progress/CircleProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvCountDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->recordTimerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->totalDuration:F

    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->recordDuration:F

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->recordDuration:F

    invoke-direct {p0, v3}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->formatRecordFileDuration(F)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x73

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSaveRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->viewRed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivCenter:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->isKids:Z

    if-eqz v3, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v2, 0x0

    :goto_a4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->editMusicName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivCenter:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->isKids:Z

    if-eqz v0, :cond_ff

    .line 126
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateKidsViews()V

    .line 127
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCallingState()I

    move-result v0

    sget-object v1, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/CTConstType;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->getRECORD_STATE_CALLING()I

    move-result v1

    if-eq v0, v1, :cond_ff

    .line 128
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->playRecordAudio()V

    .line 131
    :cond_ff
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->resetExitListener()V

    .line 132
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->recordDuration:F

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setTotalSeconds(F)V

    .line 143
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    .line 144
    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setSeekChangeListener(Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;)V

    .line 169
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->resetPlayState()V

    .line 170
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutState()V

    .line 172
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
