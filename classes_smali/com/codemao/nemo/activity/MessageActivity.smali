.class public Lcom/codemao/nemo/activity/MessageActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "MessageActivity.java"


# instance fields
.field adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

.field private counts:[I

.field customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private lastIndex:I

.field private messageCount:Lcom/codemao/nemo/bean/MessageCount;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 38
    iput-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity;->counts:[I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/MessageActivity;II)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/MessageActivity;->selectTab(II)V

    return-void
.end method

.method private initView()V
    .registers 8

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "点赞/收藏"

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "被再创作"

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 70
    fill-array-data v1, :array_94

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    .line 77
    invoke-static {v3}, Lcom/codemao/nemo/fragment/MessageFragment;->newInstance(I)Lcom/codemao/nemo/fragment/MessageFragment;

    move-result-object v4

    const/4 v5, 0x3

    .line 79
    invoke-static {v5}, Lcom/codemao/nemo/fragment/MessageFragment;->newInstance(I)Lcom/codemao/nemo/fragment/MessageFragment;

    move-result-object v5

    .line 81
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v4, p0, Lcom/codemao/nemo/activity/MessageActivity;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    if-eqz v4, :cond_56

    .line 89
    iget-object v5, p0, Lcom/codemao/nemo/activity/MessageActivity;->counts:[I

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/MessageCount;->getLike_collection_count()I

    move-result v4

    aput v4, v5, v6

    .line 91
    iget-object v4, p0, Lcom/codemao/nemo/activity/MessageActivity;->counts:[I

    iget-object v5, p0, Lcom/codemao/nemo/activity/MessageActivity;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/MessageCount;->getRe_create_count()I

    move-result v5

    aput v5, v4, v3

    .line 96
    :cond_56
    new-instance v3, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v3, p0, Lcom/codemao/nemo/activity/MessageActivity;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 98
    iget-object v2, p0, Lcom/codemao/nemo/activity/MessageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 99
    iget-object v2, p0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    iget-object v3, p0, Lcom/codemao/nemo/activity/MessageActivity;->counts:[I

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setCounts([I)V

    .line 100
    iget-object v2, p0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    iget-object v3, p0, Lcom/codemao/nemo/activity/MessageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 101
    iget-object v2, p0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setDrawable([I)V

    .line 102
    iget-object v1, p0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setTabs(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    new-instance v1, Lcom/codemao/nemo/activity/MessageActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/MessageActivity$1;-><init>(Lcom/codemao/nemo/activity/MessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setOnTabScrolledListener(Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;)V

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/codemao/nemo/activity/MessageActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/MessageActivity$2;-><init>(Lcom/codemao/nemo/activity/MessageActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    nop

    :array_94
    .array-data 4
        0x7f080498
        0x7f08049e
    .end array-data
.end method

.method private selectTab(II)V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity;->counts:[I

    iget v1, p0, Lcom/codemao/nemo/activity/MessageActivity;->lastIndex:I

    aget v0, v0, v1

    if-eqz v0, :cond_21

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-virtual {v0, v1, p2}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setItemCounts(II)V

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity;->counts:[I

    iget v1, p0, Lcom/codemao/nemo/activity/MessageActivity;->lastIndex:I

    aput p2, v0, v1

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/MessageReadEvent;

    iget v2, p0, Lcom/codemao/nemo/activity/MessageActivity;->lastIndex:I

    invoke-direct {v1, v2, p2}, Lcom/codemao/nemo/event/MessageReadEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 147
    :cond_21
    iput p1, p0, Lcom/codemao/nemo/activity/MessageActivity;->lastIndex:I

    return-void
.end method


# virtual methods
.method clickClose(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p1, p1}, Lcom/codemao/nemo/activity/MessageActivity;->selectTab(II)V

    const-string/jumbo p1, "消息页-点击返回"

    const/4 v0, 0x0

    .line 166
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0052

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "消息页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "messageCount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/MessageCount;

    iput-object p1, p0, Lcom/codemao/nemo/activity/MessageActivity;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    .line 50
    invoke-direct {p0}, Lcom/codemao/nemo/activity/MessageActivity;->initView()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 152
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/codemao/nemo/activity/MessageActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/MessageActivity$3;-><init>(Lcom/codemao/nemo/activity/MessageActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
