.class public Lcom/codemao/creativecenter/customview/CmDisplayRoleView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmDisplayRoleView.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/ObserverAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CmDisplayRoleView$ButtonClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

.field private buttonClickListener:Lcom/codemao/creativecenter/customview/CmDisplayRoleView$ButtonClickListener;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private fullScreenChangeStylePop:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

.field private inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

.field private inflater:Landroid/view/LayoutInflater;

.field private final isPad:Z

.field private ivDelScreen:Landroid/widget/ImageView;

.field private lastClickSystemMills:J

.field private localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private mHelper:Lcom/codemao/creativecenter/synergic/SynergicHelper;

.field private roleViewShowAnimEnd:I

.field private roleViewShowAnimStart:I

.field private rvScreens:Landroidx/recyclerview/widget/RecyclerView;

.field private sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

.field private screenViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$UMJzyhuiM4s7pAawWzKvrHPDSEg(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->lambda$clickCollect$0(Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->isPad:Z

    const-wide/16 p2, 0x0

    .line 82
    iput-wide p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->lastClickSystemMills:J

    const-string p2, "layout_inflater"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflater:Landroid/view/LayoutInflater;

    .line 95
    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_view_create_role:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p0, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    .line 96
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->initScreenSelectViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private init()V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/ScrollToFirstLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/creativecenter/customview/ScrollToFirstLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 116
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_2d

    const/high16 v1, 0x42800000  # 64.0f

    goto :goto_2f

    :cond_2d
    const/high16 v1, 0x42400000  # 48.0f

    :goto_2f
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->screenViewHeight:I

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_44

    const/high16 v1, 0x40c00000  # 6.0f

    goto :goto_46

    :cond_44
    const/high16 v1, 0x40000000  # 2.0f

    :goto_46
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->roleViewShowAnimStart:I

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_5b

    const/high16 v1, 0x428c0000  # 70.0f

    goto :goto_5d

    :cond_5b
    const/high16 v1, 0x42480000  # 50.0f

    :goto_5d
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->roleViewShowAnimEnd:I

    return-void
.end method

.method private synthetic lambda$clickCollect$0(Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;
    .registers 8

    .line 291
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    .line 292
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isBackground()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 293
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_collect_scene_success:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_59

    .line 295
    :cond_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_collect_actor_success:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_59

    .line 298
    :cond_3a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 299
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_collect_fail:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_59

    .line 301
    :cond_52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 304
    :goto_59
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setUploading(Z)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public actorScrollto(IZ)V
    .registers 5

    .line 501
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->setCurrentPosition(I)V

    .line 502
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;ZI)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clickActorStyle(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 9

    .line 391
    iget-wide v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->lastClickSystemMills:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->lastClickSystemMills:J

    goto :goto_20

    .line 394
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    iget-wide v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->lastClickSystemMills:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1e

    return-void

    .line 398
    :cond_1e
    iput-wide v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->lastClickSystemMills:J

    .line 401
    :goto_20
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    iget-boolean v2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v2, :cond_30

    const-string/jumbo v2, "背景"

    goto :goto_33

    :cond_30
    const-string/jumbo v2, "角色"

    :goto_33
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "舞台编辑-横屏"

    const-string/jumbo v3, "舞台-角色造型"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 402
    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->mHelper:Lcom/codemao/creativecenter/synergic/SynergicHelper;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/synergic/SynergicHelper;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->fullScreenChangeStylePop:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    .line 403
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 406
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->fullScreenChangeStylePop:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    .line 407
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public clickAddActor(Landroid/view/View;)V
    .registers 10

    const-wide/16 v0, 0x3e8

    .line 364
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 367
    :cond_9
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v2, "舞台-添加角色"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 368
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->cacheCover()V

    .line 369
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_new_sprite:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x198f

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 372
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 373
    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->getWorkId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 374
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 375
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget-object v6, p1, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 376
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v7

    .line 369
    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/activity/MaterialActivity;->jumpActorMaterial(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public clickAddScene()V
    .registers 5

    .line 355
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v2, "舞台-增加屏幕"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 356
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 357
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 358
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->addNewScene(I)V

    return-void
.end method

.method public clickCollect(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 10

    .line 264
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v0

    if-nez v0, :cond_b2

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setUploading(Z)V

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v4

    .line 269
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v6

    iget-object v6, v6, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    :cond_5a
    new-instance v6, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    iget-object v7, v4, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v7, v4}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isBackground()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 275
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 276
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 279
    :cond_79
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 283
    :cond_7d
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 284
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_a0

    .line 286
    :cond_92
    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    move-object v0, v2

    .line 288
    :goto_a0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    new-instance v2, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->collectImages(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    :cond_b2
    return-void
.end method

.method public clickCopy(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 6

    .line 230
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v2, "舞台-角色复制"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 232
    new-instance v0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clickDel(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 244
    new-instance v0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clickDeleteScene()V
    .registers 5

    .line 382
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v2, "舞台-删除屏幕"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 383
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 384
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 385
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteScene(IZ)V

    return-void
.end method

.method public clickDisplay(Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 205
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 207
    :cond_6
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isVisible()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setVisible(Z)V

    .line 208
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p2, :cond_81

    .line 209
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isVisible()Z

    move-result p2

    const-string/jumbo v2, "背景"

    const-string/jumbo v3, "角色"

    const-string/jumbo v4, "舞台编辑-横屏"

    if-eqz p2, :cond_52

    .line 210
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v5

    iget-boolean v6, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v6, :cond_2f

    goto :goto_30

    :cond_2f
    move-object v2, v3

    :goto_30
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "舞台-角色可见性开"

    invoke-virtual {p2, v4, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    iget-boolean p2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p2, :cond_4c

    .line 212
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBackground(Ljava/lang/String;ZZ)V

    goto :goto_81

    .line 214
    :cond_4c
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p2, p1, v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->showActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    goto :goto_81

    .line 217
    :cond_52
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    iget-boolean v5, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v5, :cond_5f

    goto :goto_60

    :cond_5f
    move-object v2, v3

    :goto_60
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "舞台-角色可见性关"

    invoke-virtual {p2, v4, v2, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    iget-boolean p2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p2, :cond_7c

    .line 219
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBackground(Ljava/lang/String;ZZ)V

    goto :goto_81

    .line 221
    :cond_7c
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p2, p1, v0, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->showActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    :cond_81
    :goto_81
    return-void
.end method

.method public clickLock(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 9

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 182
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v1, :cond_41

    .line 185
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 187
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v1}, Lcom/codemao/creativecenter/view/LocalBcmView;->needHideWhenLock()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1d

    :cond_19
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    const/4 v3, 0x0

    const-string/jumbo v4, "舞台编辑-横屏"

    if-eqz v2, :cond_2e

    .line 192
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v5

    const-string/jumbo v6, "舞台-角色锁定"

    invoke-virtual {v5, v4, v6, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_38

    .line 194
    :cond_2e
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v5

    const-string/jumbo v6, "舞台-角色解锁"

    invoke-virtual {v5, v4, v6, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    :goto_38
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2, v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorLockedStatus(Ljava/lang/String;ZZZ)V

    :cond_41
    return-void
.end method

.method public clickMore(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 8

    .line 343
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeXClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 344
    :cond_7
    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    const-string/jumbo v1, "背景"

    const-string/jumbo v2, "角色"

    const-string/jumbo v3, "舞台编辑-横屏"

    if-nez v0, :cond_31

    .line 345
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v4

    iget-boolean v5, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v5, :cond_21

    goto :goto_22

    :cond_21
    move-object v1, v2

    :goto_22
    invoke-virtual {v4, v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "舞台-角色操作开"

    invoke-virtual {v0, v3, v2, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4d

    .line 347
    :cond_31
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v4

    iget-boolean v5, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v1, v2

    :goto_3f
    invoke-virtual {v4, v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "舞台-角色操作关"

    invoke-virtual {v0, v3, v2, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    :goto_4d
    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    return-void
.end method

.method public clickRename(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 7

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 314
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const-string/jumbo v2, "舞台编辑-横屏"

    const-string/jumbo v3, "舞台-角色名称编辑"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 317
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 318
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 319
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setDisplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v0

    new-instance v2, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 320
    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 318
    invoke-virtual {v1, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public finishDrag()V
    .registers 1

    return-void
.end method

.method public getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    return-object v0
.end method

.method public getButtonClickListener()Lcom/codemao/creativecenter/customview/CmDisplayRoleView$ButtonClickListener;
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->buttonClickListener:Lcom/codemao/creativecenter/customview/CmDisplayRoleView$ButtonClickListener;

    return-object v0
.end method

.method public getRvRoles()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneAdapter()Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    return-object v0
.end method

.method public getVisibleActorHeight()I
    .registers 4

    const/4 v0, 0x0

    .line 551
    :try_start_1
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    if-eqz v1, :cond_25

    .line 552
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 553
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 554
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return v0
.end method

.method public hideSceneEdit()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 452
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->roleViewShowAnimEnd:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->roleViewShowAnimStart:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 454
    new-instance v3, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$6;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$6;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0xa

    .line 462
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 463
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 464
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->screenViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 466
    new-instance v1, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$7;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$7;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 482
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public init(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/synergic/SynergicHelper;Lcom/codemao/creativecenter/view/LocalBcmView;Landroid/widget/FrameLayout;)V
    .registers 13

    .line 142
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 144
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 146
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->init()V

    .line 148
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    .line 149
    invoke-virtual {p2, p0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->addObserverAction(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    .line 150
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v4

    move-object v2, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/callback/ObserverAction;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    .line 151
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->adapter:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {p2, p3}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->setDragAdapter(Lcom/codemao/creativecenter/callback/OnItemChangeListener;)Lcom/codemao/creativecenter/customview/DragRecyclerView;

    .line 153
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 155
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {p2, p4}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->setDragImageView(Landroid/widget/FrameLayout;)V

    .line 156
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->showDragAnimation(Z)Lcom/codemao/creativecenter/customview/DragRecyclerView;

    const/4 p2, 0x1

    .line 158
    invoke-virtual {p1, p3, p3, p3, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    .line 160
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    new-instance p2, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$1;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public initScreenSelectViews()V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    iget-object v2, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->ivDelScreen:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->ivDelScreen:Landroid/widget/ImageView;

    .line 102
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 103
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public initScreenSelectViews(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 5

    .line 107
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->ivDelScreen:Landroid/widget/ImageView;

    .line 109
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 110
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public isPad()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->isPad:Z

    return v0
.end method

.method public isScreenEditShow()Z
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public rename(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    .line 542
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 545
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->renameActor(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method public replaceStyle(Lcn/codemao/android/sketch/model/ResultInfo;Z)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->fullScreenChangeStylePop:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    if-eqz v0, :cond_7

    .line 423
    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->replaceCurrentStyle(Lcn/codemao/android/sketch/model/ResultInfo;I)V

    :cond_7
    return-void
.end method

.method public sceneScrollto(IZ)V
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;ZI)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setButtonClickListener(Lcom/codemao/creativecenter/customview/CmDisplayRoleView$ButtonClickListener;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->buttonClickListener:Lcom/codemao/creativecenter/customview/CmDisplayRoleView$ButtonClickListener;

    return-void
.end method

.method public showSceneEdit()V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 432
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->roleViewShowAnimStart:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->roleViewShowAnimEnd:I

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    .line 433
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    new-instance v1, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$5;-><init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0xa

    .line 442
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 443
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 444
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->screenViewHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 445
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 446
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->screenViewHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 448
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->inflate:Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public updateActorStyle(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->fullScreenChangeStylePop:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->updateActorStyles(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public updateBackgroundStyle(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->fullScreenChangeStylePop:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    if-eqz v0, :cond_7

    .line 428
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->updateBackgroundStyles(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public updateSceneList(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->setCurrentPosition(I)V

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-nez p1, :cond_14

    .line 134
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->ivDelScreen:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_ic_create_delete_scene_unable:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b

    .line 136
    :cond_14
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->ivDelScreen:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_delate_screen:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1b
    return-void
.end method
