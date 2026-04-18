.class public Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;
.super Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;
.source "CodeLabWebBizFragment.kt"


# instance fields
.field private videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;


# direct methods
.method public static synthetic $r8$lambda$FHKlr22EIMuPsckOniGk8RJLFBs(Lkotlin/jvm/functions/Function2;Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->addCodeLabVideoFragment$lambda$1(Lkotlin/jvm/functions/Function2;Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$addCodeLabVideoFragment(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->addCodeLabVideoFragment(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$removeVideoFragment(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;)V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->removeVideoFragment()V

    return-void
.end method

.method private final addCodeLabVideoFragment(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->removeVideoFragment()V

    .line 39
    sget-object v0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;->getInstance(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;)Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    .line 40
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "创建videoFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    if-eqz p1, :cond_2f

    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->setPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    if-eqz p1, :cond_3b

    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->setLeftTopBack(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_3b
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    if-eqz p1, :cond_50

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget v0, Lcom/codemao/toolssdk/R$id;->code_lab_video_fragment:I

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_50
    return-void
.end method

.method private static final addCodeLabVideoFragment$lambda$1(Lkotlin/jvm/functions/Function2;Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Landroid/view/View;)V
    .registers 4

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "点击返回,通知前端"

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    if-eqz p0, :cond_21

    .line 50
    iget-object p2, p1, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;->isPlayFinish()Z

    move-result p2

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_21
    invoke-direct {p1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->removeVideoFragment()V

    return-void
.end method

.method private final removeVideoFragment()V
    .registers 4

    .line 27
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "移除video fragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    if-eqz v0, :cond_2b

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2b
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->videoFragment:Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->getCppManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance p2, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;)V

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method
