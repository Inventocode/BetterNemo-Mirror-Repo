.class public final Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;
.super Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;
.source "CodeLabVideoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;


# instance fields
.field private completeContainer:Landroid/view/ViewGroup;

.field private videoCompleted:Z

.field private videoData:Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

.field private videoListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-Z9_rEnJapfTxbzFjRRp0mMzrz4(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->viewListener$lambda$2(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OrpQ2HtxsgHDfophPH1RrztBUcQ(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->initView$lambda$1$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;-><init>()V

    return-void
.end method

.method private static final initView$lambda$1$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->playCompleteCallWeb(ZZ)V

    return-void
.end method

.method private final playCompleteCallWeb(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoCompleted:Z

    if-eqz p2, :cond_1b

    .line 85
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_14
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "点击完成,通知前端"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method private static final viewListener$lambda$2(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->replay()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 96
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->destroy()V

    return-void
.end method

.method public initData()V
    .registers 5

    .line 37
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->initData()V

    .line 39
    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    instance-of v2, v0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    if-eqz v2, :cond_19

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    :cond_19
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoData:Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_33

    :catch_1c
    move-exception v0

    .line 41
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "数据获取异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public initView()V
    .registers 4

    .line 46
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->initView()V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    sget v1, Lcom/codemao/toolssdk/R$id;->button_complete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_35

    .line 48
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoData:Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;->isFinal()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_28

    const-string v1, "完成学习"

    goto :goto_2a

    :cond_28
    const-string v1, "继续学习"

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    sget v1, Lcom/codemao/toolssdk/R$id;->play_complete_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->completeContainer:Landroid/view/ViewGroup;

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoData:Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;->getEnableSeek()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_57

    :cond_56
    const/4 v0, 0x1

    :goto_57
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->enableSeekBar(Z)V

    return-void
.end method

.method public final isPlayFinish()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoCompleted:Z

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoData:Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->setItemAndPrepare(Ljava/lang/String;)V

    return-void
.end method

.method protected playCompleteEnd()V
    .registers 3

    .line 70
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->playCompleteEnd()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->playCompleteCallWeb(ZZ)V

    return-void
.end method

.method public final setPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->videoListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method protected showCompleteTips(Z)V
    .registers 3

    .line 65
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->showCompleteTips(Z)V

    .line 66
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->completeContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    goto :goto_11

    :cond_8
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x8

    :goto_e
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_11
    return-void
.end method

.method protected viewListener()V
    .registers 3

    .line 58
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->viewListener()V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    sget v1, Lcom/codemao/toolssdk/R$id;->button_again:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    return-void
.end method
