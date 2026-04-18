.class public Lcom/codemao/nemo/activity/CloudActivityV2;
.super Lcom/giu/xzz/mvp/MvpActivity;
.source "CloudActivityV2.java"

# interfaces
.implements Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;


# instance fields
.field midView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

.field right_view:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field root:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabView:Lcom/codemao/nemo/view/CustomTabView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpActivity;-><init>()V

    return-void
.end method

.method private init()V
    .registers 7

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    .line 72
    invoke-static {v1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->getInstance(I)Lcom/codemao/nemo/fragment/CloudWorkFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 73
    invoke-static {v1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->getInstance(I)Lcom/codemao/nemo/fragment/CloudWorkFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, " Nemo "

    const-string v4, " Kitten "

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->tabView:Lcom/codemao/nemo/view/CustomTabView;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->tabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/codemao/nemo/activity/CloudActivityV2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CloudActivityV2$1;-><init>(Lcom/codemao/nemo/activity/CloudActivityV2;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d003a

    return v0
.end method

.method protected createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 2

    .line 124
    new-instance v0, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V

    return-object v0
.end method

.method public get2Activity()Landroid/app/Activity;
    .registers 1

    return-object p0
.end method

.method public get2Intent()Landroid/content/Intent;
    .registers 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getChildView()Landroid/view/View;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->right_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->root:Landroid/view/View;

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "云端作品页"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a048c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_30

    const v0, 0x7f0a0620

    if-eq p1, v0, :cond_10

    goto :goto_4d

    .line 115
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击搜索"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->exitAnim()V

    goto :goto_4d

    .line 111
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_4d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    .line 66
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudActivityV2;->midView:Landroid/widget/TextView;

    const-string v0, "云端作品"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CloudActivityV2;->init()V

    return-void
.end method

.method protected toolBarId()I
    .registers 2

    const v0, 0x7f0a07bf

    return v0
.end method
