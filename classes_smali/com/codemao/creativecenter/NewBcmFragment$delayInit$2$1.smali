.class final Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 8

    .line 640
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eq v0, v1, :cond_21

    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-ne v0, v1, :cond_22

    :cond_21
    return-void

    .line 641
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getLoadTimeoutMills()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$startLoadTimeout(Lcom/codemao/creativecenter/NewBcmFragment;J)V

    .line 642
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 643
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarInterface()Lcom/codemao/creativecenter/view/SideBarInterface;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->hasVideo()V

    .line 646
    :cond_45
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    if-ne v0, v1, :cond_b2

    .line 647
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarInterface()Lcom/codemao/creativecenter/view/SideBarInterface;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->setLandscapeMode()V

    .line 648
    :cond_64
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getWebTopToolsView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->setScreenSelect(Z)V

    .line 649
    :cond_71
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_b2

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_b2

    .line 650
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v1, v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getWebTopToolsView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->getRvScreens()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    goto :goto_8f

    :cond_8e
    move-object v1, v3

    .line 651
    :goto_8f
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v4, v4, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getWebTopToolsView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    move-result-object v4

    if-eqz v4, :cond_9e

    invoke-virtual {v4}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->getIvDelScreen()Landroid/widget/ImageView;

    move-result-object v4

    goto :goto_9f

    :cond_9e
    move-object v4, v3

    .line 652
    :goto_9f
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v5, v5, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getWebTopToolsView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    move-result-object v5

    if-eqz v5, :cond_ae

    invoke-virtual {v5}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->getFlScreenLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    goto :goto_af

    :cond_ae
    move-object v5, v3

    .line 649
    :goto_af
    invoke-virtual {v0, v1, v4, v5}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->initScreenSelectViews(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 655
    :cond_b2
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$changeLayout(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 656
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v1, v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBcmWeb$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativestore/dsbridge/DWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/WebUtil;->initBcmWeb(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 657
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->loadWorkspace()V

    .line 658
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-nez v0, :cond_ea

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_ea
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    if-nez v0, :cond_f1

    goto :goto_149

    .line 662
    :cond_f1
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_11e

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_11e

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v1, v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v1

    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v4, v4, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getMHelper$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/synergic/SynergicHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v5, v5, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v6

    if-eqz v6, :cond_11b

    iget-object v3, v6, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flCover:Landroid/widget/FrameLayout;

    :cond_11b
    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->init(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/synergic/SynergicHelper;Lcom/codemao/creativecenter/view/LocalBcmView;Landroid/widget/FrameLayout;)V

    .line 663
    :cond_11e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_12b

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->loadBcm(Z)V

    .line 664
    :cond_12b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/NewBcmFragment;->actorScrollTo(I)V

    .line 665
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_148

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->llCurrentActor:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_148

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_148
    return-void

    .line 659
    :cond_149
    :goto_149
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The instance of BcmVO in DataStore is null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->onLoadBcmError(Ljava/lang/Exception;)V

    return-void
.end method
