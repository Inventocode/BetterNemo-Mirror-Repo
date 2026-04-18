.class public final Lcom/codemao/midi/MidiPlayerActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "MidiPlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/MidiPlayerActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMidiPlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MidiPlayerActivity.kt\ncom/codemao/midi/MidiPlayerActivity\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,741:1\n37#2,2:742\n*E\n*S KotlinDebug\n*F\n+ 1 MidiPlayerActivity.kt\ncom/codemao/midi/MidiPlayerActivity\n*L\n178#1,2:742\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/midi/MidiPlayerActivity$Companion;


# instance fields
.field private BASE_MIDI_INDEX:I

.field private final BASE_MIDI_NAME:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private cmMidiFile:Lcom/codemao/midi/javax/CMMidiFile;

.field private existNameStr:Ljava/lang/String;

.field private existNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private final isPadMode:Z

.field private mCommonPop:Lcom/codemao/midi/view/pop/common/CommonPadFullPop;

.field private midiDialogPopOne:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

.field private midiMaterialBean:Lcom/codemao/midi/bean/MidiMaterialBean;

.field private midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

.field private midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

.field private preMidiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/midi/MidiPlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/midi/MidiPlayerActivity;->Companion:Lcom/codemao/midi/MidiPlayerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    .line 40
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->isPadMode:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNames:Ljava/util/List;

    .line 90
    sget v0, Lcom/codemao/midi/R$string;->midi_default_midi_name:I

    iput v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->BASE_MIDI_NAME:I

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->BASE_MIDI_INDEX:I

    .line 98
    new-instance v0, Lcom/codemao/midi/bean/MidiMaterialBean;

    invoke-direct {v0}, Lcom/codemao/midi/bean/MidiMaterialBean;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiMaterialBean:Lcom/codemao/midi/bean/MidiMaterialBean;

    return-void
.end method

.method public static final synthetic access$dismissPianoView(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->dismissPianoView()V

    return-void
.end method

.method public static final synthetic access$getExistNameStr$p(Lcom/codemao/midi/MidiPlayerActivity;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNameStr:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFilePath$p(Lcom/codemao/midi/MidiPlayerActivity;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMidiDialogPopOne$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiDialogPopOne:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    return-object p0
.end method

.method public static final synthetic access$getMidiMaterialBean$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiMaterialBean;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiMaterialBean:Lcom/codemao/midi/bean/MidiMaterialBean;

    return-object p0
.end method

.method public static final synthetic access$getMidiModelConvertTools$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/view/midiview/MidiModelConvertTools;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    return-object p0
.end method

.method public static final synthetic access$getMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez p0, :cond_9

    const-string v0, "midiSettingInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getPreMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/midi/MidiPlayerActivity;->preMidiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    return-object p0
.end method

.method public static final synthetic access$notifyCleanImageViewState(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyCleanImageViewState()V

    return-void
.end method

.method public static final synthetic access$notifyPlayIcon(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyPlayIcon()V

    return-void
.end method

.method public static final synthetic access$scrollMidi(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->scrollMidi()V

    return-void
.end method

.method public static final synthetic access$showCustomDialogPop(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/midi/MidiPlayerActivity;->showCustomDialogPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$showPianoView(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->showPianoView()V

    return-void
.end method

.method public static final synthetic access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->stopMidi()V

    return-void
.end method

.method private final changeMode(Z)V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    const-string v1, "midiSettingInfo"

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v2, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->changeMode(I)V

    .line 189
    :cond_14
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v0, :cond_1b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "iv_piano_switch"

    const/4 v3, 0x0

    const-string v4, "v_midi"

    if-ne v0, v1, :cond_7d

    .line 190
    sget p1, Lcom/codemao/midi/R$id;->iv_piano_switch:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    sget p1, Lcom/codemao/midi/R$id;->iv_piano:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, "iv_piano"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->dismissPianoView()V

    .line 193
    sget p1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_c6

    .line 195
    :cond_7d
    sget v0, Lcom/codemao/midi/R$id;->iv_piano_switch:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_90

    .line 197
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->showPianoView()V

    .line 200
    :cond_90
    sget p1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    .line 201
    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 202
    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 203
    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    .line 204
    invoke-static {p0}, Lcom/codemao/midi/MidiPlayerActivityKt;->getPianoHeight(Landroid/content/Context;)I

    move-result v4

    .line 200
    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 208
    :goto_c6
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyCleanImageViewState()V

    .line 209
    sget p1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->resetContentWH(Z)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic changeMode$default(Lcom/codemao/midi/MidiPlayerActivity;ZILjava/lang/Object;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 187
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->changeMode(Z)V

    return-void
.end method

.method private final dismissPianoView()V
    .registers 10

    .line 531
    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->setHasShowPiano(Z)V

    .line 532
    sget v0, Lcom/codemao/midi/R$id;->iv_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "iv_piano"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 533
    sget v0, Lcom/codemao/midi/R$id;->v_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/PianoView;

    const-string v3, "v_piano"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_30

    return-void

    .line 536
    :cond_30
    invoke-static {p0}, Lcom/codemao/midi/MidiPlayerActivityKt;->getPianoHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    add-float/2addr v2, v3

    .line 538
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/PianoView;

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v3, v5, v1

    const/4 v6, 0x1

    aput v2, v5, v6

    const-string v7, "translationY"

    invoke-static {v0, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v5, "ObjectAnimator.ofFloat(v…\"translationY\", 0f, dp84)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    sget v5, Lcom/codemao/midi/R$id;->iv_piano_switch:I

    invoke-virtual {p0, v5}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-array v8, v4, [F

    aput v3, v8, v1

    aput v2, v8, v6

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v3, "ObjectAnimator.ofFloat(i…\"translationY\", 0f, dp84)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    new-instance v3, Lcom/codemao/midi/MidiPlayerActivity$dismissPianoView$1;

    invoke-direct {v3, p0}, Lcom/codemao/midi/MidiPlayerActivity$dismissPianoView$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x64

    .line 558
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v1

    aput-object v2, v4, v6

    .line 559
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 560
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private final fullWindow()V
    .registers 3

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private final initData()V
    .registers 6

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->type:I

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "midiFilePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->filePath:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "exitName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNameStr:Ljava/lang/String;

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 178
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNameStr:Ljava/lang/String;

    if-nez v0, :cond_32

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_32
    new-instance v3, Lkotlin/text/Regex;

    const-string v4, ":"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 38
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 178
    check-cast v0, [Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNames:Ljava/util/List;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_60

    .line 38
    :cond_58
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiMaterialBean:Lcom/codemao/midi/bean/MidiMaterialBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/midi/bean/MidiMaterialBean;->setId(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->filePath:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiMaterialBean:Lcom/codemao/midi/bean/MidiMaterialBean;

    invoke-virtual {v1, v0}, Lcom/codemao/midi/bean/MidiMaterialBean;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method private final initListener()V
    .registers 4

    .line 240
    sget v0, Lcom/codemao/midi/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget v0, Lcom/codemao/midi/R$id;->tv_complete:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    sget v0, Lcom/codemao/midi/R$id;->iv_goto_first:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$3;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$3;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    sget v0, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$4;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$4;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    sget v0, Lcom/codemao/midi/R$id;->iv_clean:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    sget v0, Lcom/codemao/midi/R$id;->iv_setting:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$6;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$6;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    sget v0, Lcom/codemao/midi/R$id;->v_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/PianoView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/PianoView;->setOnPianoItemClick(Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;)V

    .line 326
    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    new-instance v2, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;

    invoke-direct {v2, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->setOnMidiNoteEventListener(Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    new-instance v2, Lcom/codemao/midi/MidiPlayerActivity$initListener$9;

    invoke-direct {v2, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$9;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->setOnScrollListener(Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;)V

    .line 360
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$10;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$10;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->setOnPlayingAnimStopListener(Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;)V

    .line 369
    sget v0, Lcom/codemao/midi/R$id;->iv_help:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$11;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$11;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget v0, Lcom/codemao/midi/R$id;->iv_piano_switch:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$initListener$12;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$12;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initMidiSetting()V
    .registers 5

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 216
    iget v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->type:I

    if-nez v1, :cond_1a

    .line 217
    new-instance v1, Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-direct {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;-><init>()V

    iput-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 218
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->markName()V

    goto :goto_49

    .line 220
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "midiName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    sget-object v2, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v3, p0, Lcom/codemao/midi/MidiPlayerActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/lang/String;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 223
    iget-object v3, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    if-eqz v3, :cond_39

    invoke-virtual {v3, v2}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->convertMidiFile(Lcom/codemao/midi/javax/CMMidiFile;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v2

    if-eqz v2, :cond_39

    goto :goto_44

    :cond_39
    new-instance v2, Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-direct {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;-><init>()V

    goto :goto_44

    .line 225
    :cond_3f
    new-instance v2, Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-direct {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;-><init>()V

    .line 222
    :goto_44
    iput-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 227
    invoke-virtual {v2, v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    .line 229
    :goto_49
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    const-string v2, "midiSettingInfo"

    if-nez v1, :cond_52

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_52
    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_63

    .line 230
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_60

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_60
    invoke-virtual {v1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->setMode(I)V

    .line 232
    :cond_63
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->preMidiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v0, :cond_74

    .line 233
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v0, :cond_6e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6e
    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->copy()Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->preMidiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 235
    :cond_74
    invoke-virtual {p0}, Lcom/codemao/midi/MidiPlayerActivity;->changeInstrument()V

    return-void
.end method

.method private final markName()V
    .registers 4

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->BASE_MIDI_NAME:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->BASE_MIDI_INDEX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "midiSettingInfo"

    if-nez v1, :cond_30

    .line 647
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_2c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {v1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    return-void

    .line 650
    :cond_30
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->existNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 651
    iget v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->BASE_MIDI_INDEX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->BASE_MIDI_INDEX:I

    .line 652
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->markName()V

    goto :goto_4c

    .line 654
    :cond_42
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_49

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_49
    invoke-virtual {v1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    :goto_4c
    return-void
.end method

.method private final notifyCleanImageViewState()V
    .registers 5

    .line 404
    sget v0, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_start"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_16

    const/4 v0, 0x0

    :cond_16
    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 405
    :goto_21
    sget v2, Lcom/codemao/midi/R$id;->iv_clean:I

    invoke-virtual {p0, v2}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "iv_clean"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v3}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v3}, Lcom/codemao/midi/view/midiview/MidiView;->hasContent()Z

    move-result v3

    if-eqz v3, :cond_3f

    if-nez v0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private final notifyPlayIcon()V
    .registers 3

    .line 414
    sget v0, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_start"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_16

    const/4 v0, 0x0

    :cond_16
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_26

    .line 416
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->stopMidi()V

    goto :goto_29

    .line 418
    :cond_26
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->startMidi()V

    :goto_29
    return-void
.end method

.method private final notifyPlayingMidiViewState()V
    .registers 4

    .line 477
    sget v0, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "iv_start"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/codemao/midi/R$drawable;->midi_selector_stop_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    sget v0, Lcom/codemao/midi/R$id;->iv_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_piano"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 481
    sget v0, Lcom/codemao/midi/R$id;->iv_goto_first:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "iv_goto_first"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 482
    sget v0, Lcom/codemao/midi/R$id;->iv_setting:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "iv_setting"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 483
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyCleanImageViewState()V

    return-void
.end method

.method private final notifyStopMidiViewState()V
    .registers 5

    .line 488
    sget v0, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "iv_start"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/codemao/midi/R$drawable;->midi_selector_start_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    sget v0, Lcom/codemao/midi/R$id;->iv_goto_first:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_goto_first"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiView;->getOffsetMoveX()F

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 492
    sget v0, Lcom/codemao/midi/R$id;->iv_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_piano"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 493
    sget v0, Lcom/codemao/midi/R$id;->iv_setting:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_setting"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 494
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyCleanImageViewState()V

    return-void
.end method

.method private final scrollMidi()V
    .registers 4

    .line 410
    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getContentHeight()F

    move-result v0

    const/4 v2, 0x4

    int-to-float v2, v2

    div-float/2addr v0, v2

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/codemao/midi/view/midiview/MidiView;->smoothScrollTo(FF)V

    return-void
.end method

.method private final showCustomDialogPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    invoke-direct {v0, p0}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiDialogPopOne:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    .line 597
    invoke-virtual {v0, p1}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->contentStr(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p2}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    move-result-object v0

    .line 599
    invoke-virtual {v0, p3}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    move-result-object v0

    .line 600
    new-instance v7, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v7}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    move-result-object v0

    .line 603
    new-instance v7, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$2;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$2;-><init>(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v7}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    .line 609
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 612
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 613
    iget-object p2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiDialogPopOne:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private final showPianoView()V
    .registers 10

    .line 498
    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->setHasShowPiano(Z)V

    .line 499
    sget v0, Lcom/codemao/midi/R$id;->iv_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "iv_piano"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 500
    sget v0, Lcom/codemao/midi/R$id;->v_piano:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/PianoView;

    const-string v3, "v_piano"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_30

    return-void

    .line 503
    :cond_30
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/PianoView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 504
    invoke-static {p0}, Lcom/codemao/midi/MidiPlayerActivityKt;->getPianoHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    add-float/2addr v2, v4

    .line 506
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/PianoView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v2, v6, v3

    aput v4, v6, v1

    const-string v7, "translationY"

    invoke-static {v0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v6, "ObjectAnimator.ofFloat(v…\"translationY\", dp84, 0f)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    sget v6, Lcom/codemao/midi/R$id;->iv_piano_switch:I

    invoke-virtual {p0, v6}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    new-array v8, v5, [F

    aput v2, v8, v3

    aput v4, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "ObjectAnimator.ofFloat(i…\"translationY\", dp84, 0f)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance v4, Lcom/codemao/midi/MidiPlayerActivity$showPianoView$1;

    invoke-direct {v4, p0}, Lcom/codemao/midi/MidiPlayerActivity$showPianoView$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0x64

    .line 525
    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    .line 526
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 527
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private final startMidi()V
    .registers 17

    move-object/from16 v0, p0

    .line 424
    iget-object v1, v0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->calcPlayLineLeftTick()J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_f

    :cond_e
    move-wide v8, v2

    .line 425
    :goto_f
    iget-object v1, v0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->calcMidiViewMaxTick()J

    move-result-wide v2

    :cond_17
    move-wide v10, v2

    .line 427
    iget-object v1, v0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    const/4 v15, 0x0

    if-eqz v1, :cond_27

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->checkPlayRange$default(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;ZFFILjava/lang/Object;)Z

    move-result v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-nez v1, :cond_3c

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$string;->midi_no_note_to_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v0, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 442
    :cond_3c
    iget-object v6, v0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    if-eqz v6, :cond_65

    .line 437
    iget-object v7, v0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v7, :cond_49

    const-string v1, "midiSettingInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_49
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v15, v1

    .line 436
    invoke-static/range {v6 .. v15}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->convertWithRange$default(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;Lcom/codemao/midi/bean/MidiSettingInfo;JJZZILjava/lang/Object;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 443
    iput-object v1, v0, Lcom/codemao/midi/MidiPlayerActivity;->cmMidiFile:Lcom/codemao/midi/javax/CMMidiFile;

    .line 444
    sget-object v3, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v3}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "123"

    invoke-virtual {v3, v5, v1, v4}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    .line 450
    :cond_66
    :goto_66
    iget-object v1, v0, Lcom/codemao/midi/MidiPlayerActivity;->cmMidiFile:Lcom/codemao/midi/javax/CMMidiFile;

    if-eqz v1, :cond_95

    .line 451
    sget v3, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {v0, v3}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/view/midiview/MidiView;

    .line 452
    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiFile;->getMidiDuration()J

    move-result-wide v4

    .line 454
    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiFile;->getRealTickLength()J

    move-result-wide v6

    .line 451
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/codemao/midi/view/midiview/MidiView;->startMidiPlaying(JJ)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyPlayingMidiViewState()V

    goto :goto_95

    .line 461
    :cond_84
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/midi/R$string;->midi_no_note_to_play:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_95
    :goto_95
    return-void
.end method

.method private final stopMidi()V
    .registers 2

    .line 470
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    .line 471
    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 472
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->notifyStopMidiViewState()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public final changeInstrument()V
    .registers 8

    .line 671
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    const-string v3, "midiSettingInfo"

    if-nez v2, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v2

    const-string v4, "midiSettingInfo.instrument"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/codemao/midi/CMMidiHelper;->changeProgram(II)V

    .line 672
    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v2, :cond_2b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v2

    invoke-virtual {v1, v5, v2, v5}, Lcom/codemao/midi/CMMidiHelper;->changeMsbAndLsb(III)V

    .line 673
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_40

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_40
    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v1

    if-lez v1, :cond_90

    .line 674
    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v1

    .line 675
    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v2, :cond_51

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_51
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v2

    .line 676
    iget-object v4, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v4, :cond_5c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {v4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v4

    const-string v6, "midiSettingInfo.accompany"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v4

    .line 674
    invoke-virtual {v1, v2, v4}, Lcom/codemao/midi/CMMidiHelper;->changeProgram(II)V

    .line 678
    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_77

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_77
    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v1

    .line 680
    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v2, :cond_82

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_82
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v2

    .line 678
    invoke-virtual {v0, v1, v2, v5}, Lcom/codemao/midi/CMMidiHelper;->changeMsbAndLsb(III)V

    :cond_90
    return-void
.end method

.method public finish()V
    .registers 4

    .line 693
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 694
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_e

    const-string v2, "midiSettingInfo"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x7b

    .line 695
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 696
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 697
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->destroy()V

    return-void
.end method

.method public final finishWithOk(Landroid/content/Intent;)V
    .registers 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 688
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 689
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 659
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x18e

    if-ne p1, v0, :cond_3e

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3e

    const-string p1, "midiSettingInfo"

    const/4 p2, 0x0

    if-eqz p3, :cond_14

    .line 662
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    goto :goto_15

    :cond_14
    move-object p3, p2

    :goto_15
    instance-of v0, p3, Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object p2, p3

    :goto_1b
    check-cast p2, Lcom/codemao/midi/bean/MidiSettingInfo;

    if-eqz p2, :cond_3e

    .line 663
    invoke-virtual {p2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result p3

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v0, :cond_2a

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2a
    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p3, p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 664
    :goto_34
    iput-object p2, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    xor-int/2addr p1, v0

    .line 665
    invoke-direct {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->changeMode(Z)V

    .line 666
    invoke-virtual {p0}, Lcom/codemao/midi/MidiPlayerActivity;->changeInstrument()V

    nop

    :cond_3e
    return-void
.end method

.method public onBackPressed()V
    .registers 8

    .line 618
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiDialogPopOne:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-ne v0, v1, :cond_13

    .line 619
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiDialogPopOne:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_12
    return-void

    .line 622
    :cond_13
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->mCommonPop:Lcom/codemao/midi/view/pop/common/CommonPadFullPop;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-ne v0, v1, :cond_25

    .line 623
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->mCommonPop:Lcom/codemao/midi/view/pop/common/CommonPadFullPop;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_24
    return-void

    .line 626
    :cond_25
    sget-object v1, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MIDI画板"

    const-string v3, "MIDI画板-退出"

    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 627
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 108
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget-object p1, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$string;->midi_default_midi_name_with_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st…ult_midi_name_with_index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/codemao/midi/util/MidiConfigManager;->setDefaultMidiName(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->fullWindow()V

    .line 112
    iget-boolean p1, p0, Lcom/codemao/midi/MidiPlayerActivity;->isPadMode:Z

    if-eqz p1, :cond_21

    sget p1, Lcom/codemao/midi/R$layout;->midi_activity_midiplayer_pad:I

    goto :goto_23

    :cond_21
    sget p1, Lcom/codemao/midi/R$layout;->midi_activity_midiplayer:I

    :goto_23
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "window.decorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1706

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4c

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 124
    :cond_4c
    new-instance v1, Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;

    invoke-direct {v1, p1, v0}, Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 129
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->initData()V

    .line 130
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {p1}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/codemao/midi/CMMidiHelper;->init(Landroid/content/Context;)V

    .line 131
    new-instance p1, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/MidiView;

    const-string v2, "v_midi"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;-><init>(Lcom/codemao/midi/view/midiview/MidiView;)V

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    .line 132
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->initSheetList()V

    .line 133
    sget-object p1, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->INSTANCE:Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity;->midiModelConvertTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    invoke-virtual {p1, v1}, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->setMConverterTools(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;)V

    .line 134
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->initMidiSetting()V

    .line 135
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->initListener()V

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-static {p0, p1, v1, v2}, Lcom/codemao/midi/MidiPlayerActivity;->changeMode$default(Lcom/codemao/midi/MidiPlayerActivity;ZILjava/lang/Object;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/MidiView;

    new-instance v0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/codemao/midi/MidiPlayerActivity$onCreate$2;-><init>(Lcom/codemao/midi/MidiPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 140
    sget-object p1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p1}, Lcom/nemo/commonui/NemoUIConfigManager;->getShowMidiHelp()Z

    move-result p1

    if-nez p1, :cond_b2

    .line 141
    sget p1, Lcom/codemao/midi/R$id;->iv_help:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "iv_help"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_b2
    sget p1, Lcom/codemao/midi/R$id;->iv_help:I

    invoke-virtual {p0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;->INSTANCE:Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 707
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->mCommonPop:Lcom/codemao/midi/view/pop/common/CommonPadFullPop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 708
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity;->mCommonPop:Lcom/codemao/midi/view/pop/common/CommonPadFullPop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 710
    :cond_12
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 711
    sget-object v0, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->INSTANCE:Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->setMConverterTools(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;)V

    .line 712
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->destroy()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 701
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 702
    invoke-direct {p0}, Lcom/codemao/midi/MidiPlayerActivity;->stopMidi()V

    return-void
.end method
