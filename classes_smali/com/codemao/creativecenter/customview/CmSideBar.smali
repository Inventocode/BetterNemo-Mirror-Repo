.class public Lcom/codemao/creativecenter/customview/CmSideBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmSideBar.java"

# interfaces
.implements Lcom/codemao/creativecenter/view/SideBarInterface;


# instance fields
.field private isShowSlectcor:Z

.field private showUpload:Z

.field private sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

.field private sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmSideBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->isShowSlectcor:Z

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->showUpload:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    return-object p0
.end method


# virtual methods
.method public addLeftTopView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public changeSWStatus(I)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(I)V

    return-void
.end method

.method public clickRunOrStop()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    invoke-interface {v0}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickRunOrStop()V

    return-void
.end method

.method public getBottomView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunView()Landroid/view/View;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSidebarBinding()Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    return-object v0
.end method

.method public getSw()Landroid/view/View;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasVideo()V
    .registers 3

    .line 187
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez v0, :cond_18

    .line 188
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmSwitchView;->hasVideo()V

    return-void
.end method

.method public hideSlectcor()V
    .registers 9

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->isShowSlectcor:Z

    .line 161
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    const v2, 0x3fa66666  # 1.3f

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3fa66666  # 1.3f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0xfa

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 165
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 166
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 167
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->flCurrentActor:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isHasVideo()Z
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmSwitchView;->isHasVideo()Z

    move-result v0

    return v0
.end method

.method public isShowSlectcor()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->isShowSlectcor:Z

    return v0
.end method

.method public setCurrentAcotr(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_25

    .line 173
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 174
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 175
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 176
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_block_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_46

    .line 178
    :cond_25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40a00000  # 5.0f

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 179
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 180
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadByfitCenter(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 181
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_block_actor:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_46
    return-void
.end method

.method public setLandscapeMode()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandscapeMode:Landroidx/databinding/ObservableField;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setScreenSelect(Z)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setShowUpload(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->showUpload:Z

    return-void
.end method

.method public setSidebarVM(Lcom/codemao/creativecenter/vm/SidebarVM;Ljava/lang/String;Z)V
    .registers 7

    .line 48
    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->showUpload:Z

    .line 49
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_layout_sidebar:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    .line 52
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->setSidebar(Lcom/codemao/creativecenter/customview/CmSideBar;)V

    .line 54
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0, p2}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setWorkId(Ljava/lang/String;)V

    if-nez p3, :cond_31

    .line 56
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :cond_31
    iget-object p2, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    new-instance p3, Lcom/codemao/creativecenter/customview/CmSideBar$1;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/CmSideBar$1;-><init>(Lcom/codemao/creativecenter/customview/CmSideBar;)V

    invoke-virtual {p2, p3}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 114
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    new-instance p3, Lcom/codemao/creativecenter/customview/CmSideBar$2;

    invoke-direct {p3, p0, p1}, Lcom/codemao/creativecenter/customview/CmSideBar$2;-><init>(Lcom/codemao/creativecenter/customview/CmSideBar;Lcom/codemao/creativecenter/vm/SidebarVM;)V

    invoke-virtual {p2, p3}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setStatusChangeListener(Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;)V

    return-void
.end method

.method public showSlectcor()V
    .registers 10

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->isShowSlectcor:Z

    .line 151
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3fa66666  # 1.3f

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3fa66666  # 1.3f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0xfa

    .line 152
    invoke-virtual {v8, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 153
    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 154
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 155
    invoke-virtual {v8}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 156
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->flCurrentActor:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showUpload(Z)V
    .registers 4

    .line 129
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->showUpload:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_11

    .line 130
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 132
    :cond_11
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar;->sidebarBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_18
    return-void
.end method
