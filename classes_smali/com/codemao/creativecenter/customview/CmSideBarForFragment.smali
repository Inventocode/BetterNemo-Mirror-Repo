.class public Lcom/codemao/creativecenter/customview/CmSideBarForFragment;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmSideBarForFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/view/SideBarInterface;


# instance fields
.field private isPad:Z

.field private isShowSlectcor:Z

.field private screenHeight:I

.field private sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

.field private sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

.field private sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

.field private workId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isShowSlectcor:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    return-object p0
.end method

.method private init()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    .line 181
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    .line 182
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->workId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setWorkId(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;-><init>(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 214
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$4;-><init>(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setStatusChangeListener(Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;)V

    return-void
.end method

.method private initPad()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    .line 76
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->workId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setWorkId(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->screenHeight:I

    if-lez v0, :cond_27

    mul-int/lit16 v0, v0, 0x10c

    .line 90
    div-int/lit16 v0, v0, 0x300

    .line 93
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->topview:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    :cond_27
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$1;-><init>(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$2;-><init>(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setStatusChangeListener(Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;)V

    return-void
.end method


# virtual methods
.method public addLeftTopView(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    const/4 v1, -0x1

    if-eqz v0, :cond_18

    .line 323
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->topview:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_27

    .line 326
    :cond_18
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->topview:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_27
    return-void
.end method

.method public changeSWStatus(I)V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    if-eqz v0, :cond_a

    .line 343
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(I)V

    goto :goto_11

    .line 345
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(I)V

    :goto_11
    return-void
.end method

.method public clickRunOrStop()V
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    invoke-interface {v0}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickRunOrStop()V

    return-void
.end method

.method public getBottomView()Landroid/view/View;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    if-eqz v0, :cond_7

    .line 359
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->bottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->bottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public getRunView()Landroid/view/View;
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isPad:Z

    if-eqz v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->run:Landroid/widget/ImageView;

    return-object v0

    .line 337
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->run:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSw()Landroid/view/View;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    return-object v0

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    return-object v0
.end method

.method public hasVideo()V
    .registers 1

    return-void
.end method

.method public hideSlectcor()V
    .registers 14

    .line 261
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const-wide/16 v3, 0xfa

    const/4 v5, 0x0

    if-eqz v0, :cond_4a

    .line 262
    iput-boolean v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isShowSlectcor:Z

    .line 263
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v7, 0x3f8ccccd  # 1.1f

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x3f8ccccd  # 1.1f

    const/high16 v10, 0x3f800000  # 1.0f

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v11, v5

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v12, v5

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 264
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 265
    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 266
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 267
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 268
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->flCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_89

    .line 270
    :cond_4a
    iput-boolean v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isShowSlectcor:Z

    .line 271
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f8ccccd  # 1.1f

    const/high16 v7, 0x3f800000  # 1.0f

    const v8, 0x3f8ccccd  # 1.1f

    const/high16 v9, 0x3f800000  # 1.0f

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v10, v5

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v11, v5

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 272
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 273
    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 274
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 276
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->flCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_89
    return-void
.end method

.method public isHasVideo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isShowSlectcor()Z
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isShowSlectcor:Z

    return v0
.end method

.method public setCurrentAcotr(Ljava/lang/String;Z)V
    .registers 7

    .line 284
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    const/4 v1, 0x4

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, 0x40a00000  # 5.0f

    if-eqz v0, :cond_4b

    if-eqz p2, :cond_2b

    .line 286
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 287
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 288
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {p1, p2, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 289
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_block_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8c

    .line 291
    :cond_2b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 292
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 293
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadByfitCenter(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 294
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_block_actor:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8c

    :cond_4b
    if-eqz p2, :cond_6d

    .line 298
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 299
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 300
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {p1, p2, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 301
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_block_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8c

    .line 303
    :cond_6d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 304
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 305
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadByfitCenter(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 306
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_block_actor:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_8c
    return-void
.end method

.method public setLandscapeMode()V
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandscapeMode:Landroidx/databinding/ObservableField;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setScreenSelect(Z)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    if-eqz v0, :cond_a

    .line 230
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_11

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_11
    return-void
.end method

.method public setShowUpload(Z)V
    .registers 2

    return-void
.end method

.method public setSidebarVM(Lcom/codemao/creativecenter/vm/SidebarVM;Ljava/lang/String;Z)V
    .registers 4

    .line 53
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->workId:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->screenHeight:I

    .line 55
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    .line 56
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isPad:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2c

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/codemao/creativecenter/R$layout;->creative_layout_sidebar_for_fragment_pad:I

    invoke-static {p1, p3, p0, p2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    goto :goto_3e

    .line 60
    :cond_2c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/codemao/creativecenter/R$layout;->creative_layout_sidebar_for_fragment:I

    invoke-static {p1, p3, p0, p2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    .line 64
    :goto_3e
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isPad:Z

    if-eqz p1, :cond_46

    .line 65
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->initPad()V

    goto :goto_49

    .line 67
    :cond_46
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->init()V

    :goto_49
    return-void
.end method

.method public showSlectcor()V
    .registers 13

    .line 241
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa

    const/4 v4, 0x1

    if-eqz v0, :cond_48

    .line 242
    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isShowSlectcor:Z

    .line 243
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f8ccccd  # 1.1f

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x3f8ccccd  # 1.1f

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v10, v5

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v11, v5

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 245
    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 246
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 247
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 248
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBindingPad:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->flCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_87

    .line 250
    :cond_48
    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->isShowSlectcor:Z

    .line 251
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f8ccccd  # 1.1f

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x3f8ccccd  # 1.1f

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v10, v5

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v11, v5

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 252
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 253
    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 254
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 255
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 256
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->flCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_87
    return-void
.end method

.method public showUpload(Z)V
    .registers 2

    return-void
.end method
