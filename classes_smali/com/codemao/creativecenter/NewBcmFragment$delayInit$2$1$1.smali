.class final Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewBcmFragment.kt\ncom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1\n*L\n1#1,3510:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 13

    .line 666
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-切换角色"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 667
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    const-string v1, "v"

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_42

    .line 668
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getLandScreenHeight()I

    move-result v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v2, v2, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getFullScreenWebViewContentPadding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_76

    .line 670
    :cond_42
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_77

    :cond_5d
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    .line 671
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v2, v2, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40c00000  # 6.0f

    .line 670
    invoke-static {v2, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    :goto_76
    sub-int/2addr v0, v2

    :goto_77
    move v7, v0

    .line 675
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v2, v2, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v2, v2, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 676
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 677
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->offsetY(I)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->offsetX(I)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 681
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 683
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v1, v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_de

    .line 684
    new-instance v1, Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 688
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v8

    .line 689
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    iget-object v9, p1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    .line 690
    invoke-static {v9}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object p1

    if-eqz p1, :cond_d8

    iget-object v3, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->llCurrentActor:Landroid/widget/LinearLayout;

    :cond_d8
    move-object v10, v3

    move-object v4, v1

    .line 684
    invoke-direct/range {v4 .. v10}, Lcom/codemao/creativecenter/pop/CurrentActorsPop;-><init>(Landroid/content/Context;IILcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Landroid/view/View;)V

    move-object v3, v1

    .line 682
    :cond_de
    invoke-virtual {v0, v3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 694
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
