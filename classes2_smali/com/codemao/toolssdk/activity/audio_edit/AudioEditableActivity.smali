.class public final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AudioEditableActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;

.field private static lastEditTime:J


# instance fields
.field private basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private callingState:I

.field private currentState:Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

.field public dataBinding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

.field private final fileCacheDir:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private generatingPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private isKnKids:Z

.field private preTitleClickMills:J

.field private uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;


# direct methods
.method public static synthetic $r8$lambda$K6otmJdFal9z9DF6WafV83CDnvA(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initTitleView$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hg1yuv2Lz3sdqWJeuvb6Er5Qe9Q(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYExZAaCHN9_6uus_joWlzfUFX8(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->marginLeft$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->Companion:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$fileCacheDir$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$fileCacheDir$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->fileCacheDir:Lkotlin/jvm/functions/Function0;

    .line 98
    new-instance v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;-><init>(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    .line 100
    sget-object v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/CTConstType;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->getRECORD_STATE_END()I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->callingState:I

    return-void
.end method

.method public static final synthetic access$getLastEditTime$cp()J
    .registers 2

    .line 47
    sget-wide v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->lastEditTime:J

    return-wide v0
.end method

.method public static final synthetic access$setLastEditTime$cp(J)V
    .registers 2

    .line 47
    sput-wide p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->lastEditTime:J

    return-void
.end method

.method private static final dismissGeneratingMusicPop$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->generatingPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_c
    return-void
.end method

.method private final fullScreen()V
    .registers 3

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    goto :goto_14

    :cond_f
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_14
    return-void
.end method

.method private final hideBottomUIMenu()V
    .registers 5

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 110
    :goto_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_34

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 112
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_2c

    .line 114
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_2c
    if-nez v1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v3, 0x2

    .line 115
    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_3b

    :cond_34
    if-nez v0, :cond_37

    goto :goto_3b

    :cond_37
    const/16 v1, 0x1002

    .line 118
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_3b
    const/16 v1, 0x1c

    if-lt v2, v1, :cond_45

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    const/4 v1, 0x1

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 125
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4f
    return-void
.end method

.method private final initPopupWindow(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 273
    const-class v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 274
    new-instance p1, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    const-string v3, "是否退出编辑？"

    const-string v4, "确认退出后编辑内容将不保存"

    const-string v5, "取消"

    const-string v6, "退出"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 276
    :cond_18
    const-class v0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 277
    new-instance p1, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    const-string v2, "确认退出录音？"

    const-string v3, "确认退出后本次录音将不保存"

    const-string v4, "取消"

    const-string v5, "确定"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_2f
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 283
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 287
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->setListener(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;)V

    :cond_4e
    return-void
.end method

.method private final initState()V
    .registers 8

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "edit_music"

    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 182
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "进入录音文件编辑状态"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    goto :goto_2b

    .line 185
    :cond_1f
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "进入录音倒计时状态"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    .line 181
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setCurrentState(Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "kn_kids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->isKnKids:Z

    .line 189
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final initTitleView()V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->clickTitleArea:Landroid/view/View;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initTitleView$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Landroid/view/View;)V
    .registers 13

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->isKnKids:Z

    if-eqz p1, :cond_a

    return-void

    .line 153
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    iget-wide v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->preTitleClickMills:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_19

    .line 155
    iput-wide v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->preTitleClickMills:J

    goto :goto_22

    :cond_19
    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-gez p1, :cond_22

    return-void

    .line 159
    :cond_22
    :goto_22
    iput-wide v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->preTitleClickMills:J

    .line 160
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->currentState:Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    instance-of v0, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    if-nez v0, :cond_2e

    instance-of p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    if-eqz p1, :cond_62

    .line 161
    :cond_2e
    sget-object p1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->Companion:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;

    new-instance v10, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    const/16 v1, 0x14

    .line 162
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "dataBinding.tvTitle.text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    const-string v2, ""

    const-string v4, ""

    move-object v0, v10

    .line 161
    invoke-direct/range {v0 .. v9}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x1

    .line 163
    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initTitleView$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initTitleView$1$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    .line 161
    invoke-virtual {p1, p0, v10, v0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;->open(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;ZLcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;)V

    :cond_62
    return-void
.end method

.method private final marginLeft()V
    .registers 4

    .line 234
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getNotchMargin()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1d

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getNotchMargin()F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 239
    :cond_1d
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private static final marginLeft$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 242
    iget-boolean v2, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    if-ne v2, v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_17

    iget-object v2, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_40

    .line 244
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 245
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    .line 246
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setNotchMargin(F)V

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 248
    :goto_34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_40
    return-void
.end method


# virtual methods
.method public final calculateRecordVolume(Lcom/codemao/toolssdk/dsp/AudioEvent;)F
    .registers 3

    const-string v0, "audioEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->calculateSoundVolume(Lcom/codemao/toolssdk/dsp/AudioEvent;)F

    move-result p1

    return p1
.end method

.method public final calculateSoundVolume(Lcom/codemao/toolssdk/dsp/AudioEvent;)F
    .registers 12

    const-string v0, "audioEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->calculateMax([F)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 328
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x3

    int-to-double v2, v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fc999999999999aL  # 0.2

    sub-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL  # 0.01

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move-wide v0, v2

    .line 330
    :goto_2c
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getdBSPL()D

    move-result-wide v4

    const/4 p1, 0x1

    int-to-double v6, p1

    .line 331
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4054000000000000L  # 80.0

    div-double/2addr v4, v8

    sub-double/2addr v6, v4

    const-wide v4, 0x3fd3333333333333L  # 0.3

    sub-double/2addr v6, v4

    cmpl-double p1, v6, v2

    if-lez p1, :cond_45

    move-wide v2, v6

    :cond_45
    double-to-float p1, v2

    float-to-double v2, p1

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    mul-double v2, v2, v0

    double-to-float p1, v2

    return p1
.end method

.method public final checkShowSaveDialogOrFinish(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1d

    .line 260
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 262
    :cond_1d
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initPopupWindow(Ljava/lang/Class;)V

    .line 263
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_36

    .line 264
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_3c

    .line 266
    :cond_36
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final dismissGeneratingMusicPop()V
    .registers 2

    .line 309
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final generateRandomAccessFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .registers 4

    if-eqz p1, :cond_b

    .line 343
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_3f

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "music_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".wav"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->fileCacheDir:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_3f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_57

    .line 351
    :cond_4e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 353
    :cond_57
    :goto_57
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 354
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "rw"

    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCallingState()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->callingState:I

    return v0
.end method

.method public final getCurrentState()Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->currentState:Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    return-object v0
.end method

.method public final getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dataBinding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "dataBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFileCacheDir()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->fileCacheDir:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getUploadManager()Lcom/codemao/toolssdk/manager/CMTUploadManager;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    return-object v0
.end method

.method public final isKnKids()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->isKnKids:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 255
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivExit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->hideBottomUIMenu()V

    .line 133
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->fullScreen()V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setDataBinding(Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;)V

    .line 135
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initState()V

    .line 137
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->marginLeft()V

    .line 138
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initTitleView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->uploadManager:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->destroy()V

    .line 322
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->fileCacheDir:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 323
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "activity栈顶启用"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 315
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 316
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "录音activity触发onStop"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->currentState:Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->onStop()V

    :cond_11
    return-void
.end method

.method public final setCallingState(I)V
    .registers 2

    .line 100
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->callingState:I

    return-void
.end method

.method public final setCurrentState(Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->currentState:Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    if-eqz p1, :cond_7

    .line 95
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->updateUI()V

    :cond_7
    return-void
.end method

.method public final setDataBinding(Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dataBinding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    return-void
.end method

.method public final showGeneratingMusicPop(Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "closeCLickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 303
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 304
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 303
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->generatingPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p1, :cond_2a

    .line 305
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_2a
    return-void
.end method
