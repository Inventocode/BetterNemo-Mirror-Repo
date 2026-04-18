.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;
.super Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;
.source "EditMusicFileState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditMusicFileState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditMusicFileState.kt\ncom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,972:1\n1851#2,2:973\n1851#2,2:975\n1851#2,2:977\n*S KotlinDebug\n*F\n+ 1 EditMusicFileState.kt\ncom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState\n*L\n881#1:973,2\n900#1:975,2\n919#1:977,2\n*E\n"
.end annotation


# instance fields
.field private adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

.field private currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

.field private isAnalyzingData:Z

.field private isFromRecordState:Z

.field private isGenerateCanceled:Z

.field private loadingDialog:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private musicPath:Ljava/lang/String;

.field private musicUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private originTotalDuration:F

.field private playingThread:Ljava/lang/Thread;

.field private final showDownloadingViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;


# direct methods
.method public static synthetic $r8$lambda$0D7gp0pSBVNga1L0yQ9fhgt5F3I(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewMusicFile$lambda$18(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5CgNaNloQHx2tqXc7Z1BMaBSe-A(Lkotlin/jvm/functions/Function1;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewMusicFile$lambda$18$lambda$17(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8lt10sJng9-GXf8NsO5AbX1yZzQ(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playMusic$lambda$16$lambda$15(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJIxVPpEzCSyNIimLy0Y2BK5C4c(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadMusicFile$lambda$12(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ab0QqJ4aWIAzcph9hNqNEoHzzGQ(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadMusicFile$lambda$10(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GC2Kkz8CvgcHL90RD4HTNef6k5c(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadDataFromUrl$lambda$9(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I9ZvJE8k88ZtWKghdpvp0AQH4yE(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$4(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MLuZQagx5G4Epeu5OsVGMzqG7pU(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$5(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MmHWuTWwqCQhQi7ZqQkUs0DN7uM(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged$lambda$14$lambda$13(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4PYNJySwRVApQgjRyNt-9L1C90(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yz7cxpBVM4medx3eOwWedsenvmI(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadMusicFile$lambda$11(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aY21pT2h5QlqWVCTuC5Dv4CAXuI(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$7(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dl7Y3lxLDxWmfYe4ZQ4qRJ9OsOY(ZLcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showErrorContent$lambda$22(ZLcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwICeCpmFA_edpNf54Q0Q7yAqMw(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged$lambda$14(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eL8yoqNcgSwHNlbqdrS135Zxkvo(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->setOnClickListenerByTouch$lambda$19(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hdQegdMTufKyYzMCGG3aZPMQ9H4(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$6(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o1bIJi7YztpXUWAHndKwWMGnagU(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p5LJKbK6l8Y7Gwoy1qtrwufJiiU(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playMusic$lambda$16(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPCnf4IPPzXuz9GspUZ-SDIQ_fs(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rm96iu6XeS7N2jeur5KVmpWEKng(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->confirmMusicFile$lambda$8(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z5NcjKEoWbhgGRnvU8j_-7PDWDY(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 14

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicUrl:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->name:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicPath:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;-><init>(IIZZIILcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/View;

    .line 868
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivRecover:Landroid/widget/ImageView;

    const-string v2, "activity.dataBinding.ivRecover"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 869
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivUndo:Landroid/widget/ImageView;

    const-string v2, "activity.dataBinding.ivUndo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 870
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->editMusicName:Landroid/widget/ImageView;

    const-string v2, "activity.dataBinding.editMusicName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 871
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    const-string v2, "activity.dataBinding.tvTotalDuration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 872
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    const-string v2, "activity.dataBinding.tvToEditPage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 873
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "activity.dataBinding.musicEditLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 874
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v2, "activity.dataBinding.vMusicCutout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 875
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->bottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "activity.dataBinding.bottomLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 876
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->btnCorrect:Landroid/widget/TextView;

    const-string v2, "activity.dataBinding.btnCorrect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 877
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditGroup:Landroidx/constraintlayout/widget/Group;

    const-string v1, "activity.dataBinding.musicEditGroup"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 867
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showDownloadingViewList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkFasterEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFasterEnable()V

    return-void
.end method

.method public static final synthetic access$checkLouderEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkLouderEnable()V

    return-void
.end method

.method public static final synthetic access$checkLowerEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkLowerEnable()V

    return-void
.end method

.method public static final synthetic access$checkSofterEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkSofterEnable()V

    return-void
.end method

.method public static final synthetic access$dismissMusicDownloading(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->dismissMusicDownloading()V

    return-void
.end method

.method public static final synthetic access$formatRecordFileDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;F)D
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->formatRecordFileDuration(F)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$generateNewStep(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdp$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/dsp/AudioDispatcher;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getCurrentActionStep$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-object p0
.end method

.method public static final synthetic access$getCurrentCutOutDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)D
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->getCurrentCutOutDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getOriginTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->originTotalDuration:F

    return p0
.end method

.method public static final synthetic access$getPlayingThread$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Ljava/lang/Thread;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playingThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static final synthetic access$initTotalDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->initTotalDuration()V

    return-void
.end method

.method public static final synthetic access$isAnalyzingData$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    return p0
.end method

.method public static final synthetic access$isGenerateCanceled$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isGenerateCanceled:Z

    return p0
.end method

.method public static final synthetic access$notifyDbSPLDataChanged(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$playMusic(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playMusic()V

    return-void
.end method

.method public static final synthetic access$playWithNewDbSPLData(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playWithNewDbSPLData()V

    return-void
.end method

.method public static final synthetic access$pointToNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->pointToNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method public static final synthetic access$resetPlayState(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->resetPlayState()V

    return-void
.end method

.method public static final synthetic access$setAnalyzingData$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    return-void
.end method

.method public static final synthetic access$setGenerateCanceled$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isGenerateCanceled:Z

    return-void
.end method

.method public static final synthetic access$setMusicPath$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showErrorContent(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;Z)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showErrorContent(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$showStopPlayingState(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showStopPlayingState()V

    return-void
.end method

.method public static final synthetic access$stopPlayingAudio(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    return-void
.end method

.method public static final synthetic access$updateCurrentStepMusicClipMs(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateCurrentStepMusicClipMs()V

    return-void
.end method

.method public static final synthetic access$updateStatus(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateStatus(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method public static final synthetic access$updateUndoRecoverStepsUI(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUndoRecoverStepsUI()V

    return-void
.end method

.method private final addAudioProcessor()V
    .registers 11

    .line 717
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeedFactor()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->changeCountFactor(D)V

    .line 718
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeed()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2f

    .line 719
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeedFactor()D

    move-result-wide v2

    .line 720
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_2f

    new-instance v4, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;

    invoke-direct {v4, v2, v3}, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;-><init>(D)V

    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 722
    :cond_2f
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getVolume()I

    move-result v0

    if-eq v0, v1, :cond_49

    .line 723
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getVolumeFactor()D

    move-result-wide v0

    .line 724
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v2, :cond_49

    new-instance v3, Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-direct {v3, v0, v1}, Lcom/codemao/toolssdk/dsp/GainProcessor;-><init>(D)V

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    :cond_49
    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    .line 728
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->originTotalDuration:F

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills(F)I

    move-result v2

    .line 729
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->originTotalDuration:F

    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills(F)I

    move-result v3

    sub-int v4, v3, v2

    int-to-double v4, v4

    const/16 v6, 0x3e8

    int-to-double v6, v6

    mul-double v6, v6, v0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_7e

    const-wide v0, 0x409f400000000000L  # 2000.0

    div-double v0, v4, v0

    .line 734
    :cond_7e
    iget-object v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getFadeIn()Z

    move-result v4

    const-wide v5, 0x408f400000000000L  # 1000.0

    if-eqz v4, :cond_9d

    .line 735
    iget-object v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v4, :cond_9d

    new-instance v7, Lcom/codemao/toolssdk/dsp/FadeIn;

    int-to-double v8, v2

    div-double/2addr v8, v5

    invoke-direct {p0, v8, v9}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->rangeNumber(D)D

    move-result-wide v8

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/codemao/toolssdk/dsp/FadeIn;-><init>(DD)V

    invoke-virtual {v4, v7}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 737
    :cond_9d
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getFadeOut()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 738
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v2, :cond_b8

    .line 739
    new-instance v4, Lcom/codemao/toolssdk/dsp/FadeOut;

    int-to-double v7, v3

    div-double/2addr v7, v5

    sub-double/2addr v7, v0

    .line 740
    invoke-direct {p0, v7, v8}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->rangeNumber(D)D

    move-result-wide v5

    .line 739
    invoke-direct {v4, v0, v1, v5, v6}, Lcom/codemao/toolssdk/dsp/FadeOut;-><init>(DD)V

    .line 738
    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    :cond_b8
    return-void
.end method

.method private final checkFadeInOpen()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getFadeIn()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 248
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFadeIn:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_fade_in_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFadeIn:Landroid/widget/TextView;

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_fade_in_open:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_45

    .line 251
    :cond_27
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFadeIn:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_fade_in_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFadeIn:Landroid/widget/TextView;

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_fade_in_close:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_45
    return-void
.end method

.method private final checkFadeOutOpen()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getFadeOut()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 238
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFadeOut:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_fade_out_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFadeOut:Landroid/widget/TextView;

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_fade_out_open:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_45

    .line 241
    :cond_27
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFadeOut:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_fade_out_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFadeOut:Landroid/widget/TextView;

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_fade_out_close:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_45
    return-void
.end method

.method private final checkFasterEnable()V
    .registers 9

    .line 461
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeed()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const v3, 0x3e99999a  # 0.3f

    if-lt v0, v2, :cond_3b

    .line 462
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setSpeed(I)V

    .line 463
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickFasterArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 464
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFaster:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 465
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFaster:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_a0

    .line 466
    :cond_3b
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->getCurrentCutOutDuration()D

    move-result-wide v4

    const v0, 0x3f4ccccd  # 0.8f

    float-to-double v6, v0

    mul-double v4, v4, v6

    const-wide v6, 0x407f400000000000L  # 500.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_76

    .line 467
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickFasterArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFaster:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 469
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFaster:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_a0

    .line 471
    :cond_76
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickFasterArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFaster:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 473
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFaster:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_a0
    return-void
.end method

.method private final checkLouderEnable()V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getVolume()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3b

    .line 432
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setVolume(I)V

    .line 433
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLouderArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivLouder:Landroid/widget/ImageView;

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 435
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvLouder:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_65

    .line 437
    :cond_3b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLouderArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivLouder:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 439
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvLouder:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_65
    return-void
.end method

.method private final checkLowerEnable()V
    .registers 8

    .line 444
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeed()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3e99999a  # 0.3f

    if-gtz v0, :cond_39

    .line 445
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setSpeed(I)V

    .line 446
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLowerArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivLower:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 448
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvLower:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_9e

    .line 449
    :cond_39
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->getCurrentCutOutDuration()D

    move-result-wide v3

    const v0, 0x3f99999a  # 1.2f

    float-to-double v5, v0

    mul-double v3, v3, v5

    const-wide v5, 0x41124f8000000000L  # 300000.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_74

    .line 450
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLowerArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 451
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivLower:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 452
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvLower:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_9e

    .line 454
    :cond_74
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLowerArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivLower:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 456
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvLower:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_9e
    return-void
.end method

.method private final checkSofterEnable()V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getVolume()I

    move-result v0

    if-gtz v0, :cond_39

    .line 419
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setVolume(I)V

    .line 420
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickSofterArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSofter:Landroid/widget/ImageView;

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 422
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvSofter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_63

    .line 424
    :cond_39
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickSofterArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSofter:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 426
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvSofter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_63
    return-void
.end method

.method private final checkStatusBindingInited()V
    .registers 5

    .line 889
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-nez v0, :cond_3e

    .line 891
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    move-result-object v0

    .line 890
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 892
    invoke-virtual {v0}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    if-nez v0, :cond_1e

    goto :goto_27

    :cond_1e
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    :goto_27
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    :cond_3b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3e
    return-void
.end method

.method private final checkToPlayMusic(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 4

    .line 257
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getStartMs()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getStartMs()I

    move-result v1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getEndMs()I

    move-result p1

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getEndMs()I

    move-result v0

    if-eq p1, v0, :cond_19

    goto :goto_1d

    .line 262
    :cond_19
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playWithNewDbSPLData()V

    goto :goto_46

    .line 258
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getStartMs()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setStartMills(I)V

    .line 259
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getEndMs()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setEndMills(I)V

    .line 260
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playMusic()V

    :goto_46
    return-void
.end method

.method private final confirmMusicFile()V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz v0, :cond_1c

    .line 268
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState:Z

    if-eqz v0, :cond_18

    .line 269
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->edit$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 273
    :cond_18
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->onlyChangeNameForResult()V

    return-void

    .line 276
    :cond_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    if-nez v0, :cond_42

    .line 277
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState:Z

    if-eqz v0, :cond_3e

    .line 278
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_41

    .line 280
    :cond_3e
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->onlyChangeNameForResult()V

    :goto_41
    return-void

    .line 285
    :cond_42
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    .line 286
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->resetPlayState()V

    .line 287
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->showGeneratingMusicPop(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isGenerateCanceled:Z

    .line 294
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$confirmMusicFile$2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$confirmMusicFile$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewMusicFile(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final confirmMusicFile$lambda$8(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isGenerateCanceled:Z

    .line 289
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    .line 290
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getUploadManager()Lcom/codemao/toolssdk/manager/CMTUploadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->destroy()V

    .line 291
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop()V

    return-void
.end method

.method private final dismissLoadDialog()V
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadingDialog:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method private final dismissMusicDownloading()V
    .registers 4

    .line 919
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showDownloadingViewList:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 919
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 920
    :cond_17
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickTitleArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 921
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->initViewVisible()V

    .line 922
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz v0, :cond_48

    .line 923
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    goto :goto_43

    :cond_42
    move-object v1, v2

    :goto_43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 924
    iput-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    :cond_48
    return-void
.end method

.method private final formatRecordFileDuration(F)D
    .registers 6

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    const/16 v2, 0x64

    const/high16 v3, 0x43fa0000  # 500.0f

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_15

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 619
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_11
    double-to-float p1, v2

    float-to-double v2, p1

    div-double/2addr v2, v0

    return-wide v2

    :cond_15
    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 621
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    goto :goto_11
.end method

.method private final generateNewMusicFile(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 747
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda16;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final generateNewMusicFile$lambda$18(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function1;)V
    .registers 19

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v0, "activity.dataBinding.vMusicCutout"

    const-string v1, "this$0"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$callback"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getFileCacheDir()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->generateRandomAccessFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->getAudioDispatcher()Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v1

    iput-object v1, v12, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    .line 756
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    move-result-object v1

    const-string v3, "adp!!.format"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v3

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5, v4, v6}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v0

    int-to-float v3, v3

    .line 760
    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v4

    mul-float v3, v3, v4

    const/16 v4, 0x3e8

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-long v10, v3

    int-to-float v0, v0

    .line 761
    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v1

    mul-float v0, v0, v1

    div-float/2addr v0, v4

    float-to-long v14, v0

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->addAudioProcessor()V

    .line 764
    iget-object v0, v12, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_dc

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_ca

    :cond_c8
    move-object/from16 v16, v6

    :goto_ca
    new-instance v7, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;

    move-object v1, v7

    move-wide v3, v10

    move-wide v5, v14

    move-object v14, v7

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;-><init>(Ljava/io/RandomAccessFile;JJLcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V

    invoke-virtual {v0, v14}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 821
    :cond_dc
    iget-object v0, v12, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_f4

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->run()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_e3} :catch_e4

    goto :goto_f4

    :catch_e4
    move-exception v0

    .line 823
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda20;

    invoke-direct {v1, v13}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_f4
    :goto_f4
    return-void
.end method

.method private static final generateNewMusicFile$lambda$18$lambda$17(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 825
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final generateNewStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;
    .registers 3

    .line 488
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 489
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 490
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setPreStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 491
    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 492
    :goto_23
    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v1

    if-nez v1, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setPreStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    :goto_2d
    return-object v0
.end method

.method private final getAudioDispatcher()Lcom/codemao/toolssdk/dsp/AudioDispatcher;
    .registers 13

    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 626
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v10, v0, 0x2

    .line 631
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicPath:Ljava/lang/String;

    .line 634
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v3

    .line 635
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/high16 v7, -0x4010000000000000L  # -1.0

    const v9, 0xac44

    const/4 v11, 0x0

    .line 633
    invoke-static/range {v3 .. v11}, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->fromPipe(Landroid/content/Context;Landroid/net/Uri;DDIII)Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v0

    const-string v1, "fromPipe(\n            ac…  bufferOverlap\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentCutOutDuration()D
    .registers 5

    .line 478
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->originTotalDuration:F

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds(F)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeedFactor()D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private final initTotalDuration()V
    .registers 6

    .line 384
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 387
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    .line 388
    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->originTotalDuration:F

    .line 389
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setTotalSeconds(F)V

    .line 390
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds(F)F

    move-result v0

    .line 391
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->formatRecordFileDuration(F)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final initViewVisible()V
    .registers 3

    .line 350
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->bottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditGroup:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 353
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final loadDataFromUrl()V
    .registers 2

    .line 357
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda11;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final loadDataFromUrl$lambda$9(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadDataFromUrl$1$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadMusicFile(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final loadMusicFile(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getFileCacheDir()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState:Z

    if-eqz v0, :cond_47

    .line 530
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicPath:Ljava/lang/String;

    .line 531
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p2

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda19;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 536
    :cond_47
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicUrl:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "http"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 537
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    sget-object v3, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DownloadFileUtils;

    iget-object v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicUrl:Ljava/lang/String;

    sget-object v6, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$3;->INSTANCE:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$3;

    new-instance v7, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;

    invoke-direct {v7, p0, v5, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$4;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v8, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;

    invoke-direct {v8, p0, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$loadMusicFile$5;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {v3 .. v8}, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_8b

    .line 552
    :cond_7f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_8b
    return-void
.end method

.method private static final loadMusicFile$lambda$10(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$loadComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final loadMusicFile$lambda$11(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showMusicDownloading()V

    return-void
.end method

.method private static final loadMusicFile$lambda$12(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$loadFail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final notifyDbSPLDataChanged(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 605
    invoke-static {p0, v0, p1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showEditLoadingDialog$default(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;ILjava/lang/Object;)V

    .line 606
    new-instance p1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p3, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda15;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 613
    :cond_10
    invoke-static {p0, p3, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged$actionFun(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :goto_13
    return-void
.end method

.method private static final notifyDbSPLDataChanged$actionFun(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 564
    :try_start_0
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->getAudioDispatcher()Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    .line 565
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->addAudioProcessor()V

    .line 566
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$actionFun$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 598
    :cond_15
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->run()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    move-exception p0

    .line 600
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_24
    :goto_24
    return-void
.end method

.method static synthetic notifyDbSPLDataChanged$default(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x1

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    .line 560
    sget-object p2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$1;->INSTANCE:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$notifyDbSPLDataChanged$1;

    .line 559
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final notifyDbSPLDataChanged$lambda$14(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onFail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged$actionFun(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 608
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final notifyDbSPLDataChanged$lambda$14$lambda$13(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->dismissLoadDialog()V

    return-void
.end method

.method private final onlyChangeNameForResult()V
    .registers 5

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
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

    .line 336
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicUrl:Ljava/lang/String;

    const-string v2, "music_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicPath:Ljava/lang/String;

    const-string v2, "music_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "music_duration"

    const-wide/16 v2, 0x0

    .line 341
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 346
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->edit$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final playMusic()V
    .registers 10

    .line 645
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    .line 646
    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$playedOnStart$1;

    invoke-direct {v4, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$playedOnStart$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 650
    new-instance v5, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$playedComplete$1;

    invoke-direct {v5, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$playedComplete$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 654
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v1, "activity.dataBinding.vMusicCutout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v6}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v7

    .line 655
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v6}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v3

    .line 656
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda14;

    move-object v0, v8

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda14;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playingThread:Ljava/lang/Thread;

    .line 713
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final playMusic$lambda$16(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 20

    move-object v12, p0

    move-object/from16 v13, p4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playedOnStart"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playedComplete"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    :try_start_14
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->getAudioDispatcher()Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v0

    iput-object v0, v12, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_21

    .line 659
    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move-object v2, v0

    if-nez v2, :cond_26

    return-void

    .line 661
    :cond_26
    invoke-virtual {v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 660
    invoke-static {v0, v1, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 665
    invoke-virtual {v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    div-int v3, v0, v1

    .line 666
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->addAudioProcessor()V

    .line 667
    iget-object v0, v12, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_56

    move/from16 v1, p1

    int-to-long v8, v1

    move/from16 v7, p2

    int-to-long v10, v7

    new-instance v14, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;

    move-object v1, v14

    move-object v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p2

    invoke-direct/range {v1 .. v11}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;ILcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IJJ)V

    invoke-virtual {v0, v14}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 705
    :cond_56
    iget-object v0, v12, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->run()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_5d} :catch_5e

    goto :goto_6e

    :catch_5e
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda17;

    invoke-direct {v1, v13}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private static final playMusic$lambda$16$lambda$15(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$playedComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final playWithNewDbSPLData()V
    .registers 8

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    .line 408
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    .line 409
    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playWithNewDbSPLData$1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playWithNewDbSPLData$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playWithNewDbSPLData$2;

    invoke-direct {v4, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playWithNewDbSPLData$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->notifyDbSPLDataChanged$default(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final pointToNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 482
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 483
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setPreStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method private final rangeNumber(D)D
    .registers 5

    const/16 v0, 0xa

    int-to-double v0, v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private final resetPlayState()V
    .registers 3

    .line 519
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivPlay:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final setOnClickListenerByTouch(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 835
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final setOnClickListenerByTouch$lambda$19(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "$onPress"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const-string v0, "v"

    const/4 v1, 0x1

    if-eqz p3, :cond_20

    if-eq p3, v1, :cond_19

    const/4 p0, 0x3

    if-eq p3, p0, :cond_19

    goto :goto_26

    .line 841
    :cond_19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 838
    :cond_20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    return v1
.end method

.method private final showEditLoadingDialog(Ljava/lang/String;)V
    .registers 5

    .line 858
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadingDialog:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_18

    .line 859
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->dismissLoadDialog()V

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadingDialog:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 862
    :cond_18
    sget-object v0, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;->Companion:Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;->generateXPop(Landroid/content/Context;Ljava/lang/String;)Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadingDialog:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p1, :cond_29

    .line 863
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_29
    return-void
.end method

.method static synthetic showEditLoadingDialog$default(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-string p1, "音频调节中..."

    .line 857
    :cond_6
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showEditLoadingDialog(Ljava/lang/String;)V

    return-void
.end method

.method private final showErrorContent(Ljava/lang/String;Z)V
    .registers 7

    .line 900
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showDownloadingViewList:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 900
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 901
    :cond_18
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickTitleArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 902
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkStatusBindingInited()V

    .line 903
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->editMusicName:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->btnCorrect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    const/4 v3, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->groupShowError:Landroidx/constraintlayout/widget/Group;

    goto :goto_4d

    :cond_4c
    move-object v0, v3

    :goto_4d
    if-nez v0, :cond_50

    goto :goto_53

    :cond_50
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 906
    :goto_53
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz v0, :cond_5a

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->groupLoading:Landroidx/constraintlayout/widget/Group;

    goto :goto_5b

    :cond_5a
    move-object v0, v3

    :goto_5b
    if-nez v0, :cond_5e

    goto :goto_61

    :cond_5e
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 907
    :goto_61
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz v0, :cond_68

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->tvErrorText:Landroid/widget/TextView;

    goto :goto_69

    :cond_68
    move-object v0, v3

    :goto_69
    if-nez v0, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    :goto_6f
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz p1, :cond_75

    iget-object v3, p1, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->tvRetry:Landroid/widget/TextView;

    :cond_75
    if-nez v3, :cond_78

    goto :goto_82

    :cond_78
    if-eqz p2, :cond_7d

    const-string p1, "点击重试"

    goto :goto_7f

    :cond_7d
    const-string p1, "退出"

    :goto_7f
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    :goto_82
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz p1, :cond_92

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->tvRetry:Landroid/widget/TextView;

    if-eqz p1, :cond_92

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda9;-><init>(ZLcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_92
    return-void
.end method

.method static synthetic showErrorContent$default(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const-string p1, "下载失败，请点击重试"

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    const/4 p2, 0x1

    .line 899
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showErrorContent(Ljava/lang/String;Z)V

    return-void
.end method

.method private static final showErrorContent$lambda$22(ZLcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 3

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_b

    .line 911
    invoke-direct {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadDataFromUrl()V

    goto :goto_12

    .line 913
    :cond_b
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_12
    return-void
.end method

.method private final showMusicDownloading()V
    .registers 5

    .line 881
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->showDownloadingViewList:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 881
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 882
    :cond_18
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickTitleArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 883
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkStatusBindingInited()V

    .line 884
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->groupLoading:Landroidx/constraintlayout/widget/Group;

    goto :goto_32

    :cond_31
    move-object v0, v3

    :goto_32
    if-nez v0, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 885
    :goto_38
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz v0, :cond_3e

    iget-object v3, v0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->groupShowError:Landroidx/constraintlayout/widget/Group;

    :cond_3e
    if-nez v3, :cond_41

    goto :goto_44

    :cond_41
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_44
    return-void
.end method

.method private final showStopPlayingState()V
    .registers 3

    .line 523
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivPlay:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final stopPlayingAudio()V
    .registers 4

    .line 510
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 511
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 512
    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->isStopped()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    if-eqz v1, :cond_1b

    .line 513
    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stop()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    :cond_1b
    return-void
.end method

.method private final updateCurrentStepMusicClipMs()V
    .registers 7

    .line 395
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v2, "activity.dataBinding.vMusicCutout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setStartMs(I)V

    .line 396
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v4, v5}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setEndMs(I)V

    return-void
.end method

.method private final updateStatus(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 2

    .line 401
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->pointToNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 402
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playWithNewDbSPLData()V

    .line 403
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUndoRecoverStepsUI()V

    return-void
.end method

.method private static final updateUI$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    .line 76
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->statusBinding:Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    if-eqz p1, :cond_14

    .line 77
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_44

    .line 78
    :cond_14
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    if-eqz p1, :cond_25

    goto :goto_3b

    .line 80
    :cond_25
    iget-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState:Z

    if-eqz p1, :cond_33

    .line 81
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    const-class p1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->checkShowSaveDialogOrFinish(Ljava/lang/Class;)V

    goto :goto_44

    .line 83
    :cond_33
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_44

    .line 79
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    const-class p1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->checkShowSaveDialogOrFinish(Ljava/lang/Class;)V

    :goto_44
    return-void
.end method

.method private static final updateUI$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->adp:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->isStopped()Z

    move-result p1

    if-nez p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    if-eqz v0, :cond_1a

    .line 121
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    .line 122
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->resetPlayState()V

    return-void

    .line 125
    :cond_1a
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playMusic()V

    return-void
.end method

.method private static final updateUI$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 130
    :cond_e
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->set(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 132
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUndoRecoverStepsUI()V

    .line 133
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFasterEnable()V

    .line 134
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkLowerEnable()V

    .line 135
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkLouderEnable()V

    .line 136
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkSofterEnable()V

    .line 137
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFadeInOpen()V

    .line 138
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFadeOutOpen()V

    .line 139
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkToPlayMusic(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method private static final updateUI$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 143
    :cond_e
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->set(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 145
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUndoRecoverStepsUI()V

    .line 146
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFasterEnable()V

    .line 147
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkLowerEnable()V

    .line 148
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkLouderEnable()V

    .line 149
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkSofterEnable()V

    .line 150
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFadeInOpen()V

    .line 151
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFadeOutOpen()V

    .line 152
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkToPlayMusic(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method private static final updateUI$lambda$4(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    .line 214
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getFadeIn()Z

    move-result v2

    xor-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setFadeIn(Z)V

    .line 216
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFadeInOpen()V

    .line 217
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateStatus(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method private static final updateUI$lambda$5(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isAnalyzingData:Z

    .line 222
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getFadeOut()Z

    move-result v2

    xor-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setFadeOut(Z)V

    .line 224
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->checkFadeOutOpen()V

    .line 225
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateStatus(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method private static final updateUI$lambda$6(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playWithNewDbSPLData()V

    return-void
.end method

.method private static final updateUI$lambda$7(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->confirmMusicFile()V

    return-void
.end method

.method private final updateUndoRecoverStepsUI()V
    .registers 3

    .line 497
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 498
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivUndo:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_undo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 500
    :cond_18
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivUndo:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_undo_disabble:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    :goto_27
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->currentActionStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 503
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivRecover:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_recover:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4e

    .line 505
    :cond_3f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivRecover:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_recover_disabble:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4e
    return-void
.end method


# virtual methods
.method public final isFromRecordState()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState:Z

    return v0
.end method

.method public onStop()V
    .registers 1

    .line 64
    invoke-super {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->onStop()V

    .line 65
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->stopPlayingAudio()V

    return-void
.end method

.method public final setFromRecordState(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->isFromRecordState:Z

    return-void
.end method

.method public updateUI()V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "music_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_13

    move-object v0, v1

    :cond_13
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->musicUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "music_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    move-object v1, v0

    :goto_27
    iput-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->name:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->initViewVisible()V

    .line 73
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivExit:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_close_2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivExit:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->loadDataFromUrl()V

    .line 89
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    .line 90
    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setSeekChangeListener(Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivUndo:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivRecover:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickFasterArea:Landroid/view/View;

    const-string v1, "activity.dataBinding.clickFasterArea"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$6;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$6;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->setOnClickListenerByTouch(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 169
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLowerArea:Landroid/view/View;

    const-string v1, "activity.dataBinding.clickLowerArea"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$8;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$8;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$9;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$9;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->setOnClickListenerByTouch(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 183
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickLouderArea:Landroid/view/View;

    const-string v1, "activity.dataBinding.clickLouderArea"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$10;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$10;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$11;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$11;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->setOnClickListenerByTouch(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 197
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickSofterArea:Landroid/view/View;

    const-string v1, "activity.dataBinding.clickSofterArea"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$12;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$12;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$13;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$13;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->setOnClickListenerByTouch(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 211
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickFadeInArea:Landroid/view/View;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickFadeOutArea:Landroid/view/View;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickRobotArea:Landroid/view/View;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->btnCorrect:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
