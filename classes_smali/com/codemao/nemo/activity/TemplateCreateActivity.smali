.class public Lcom/codemao/nemo/activity/TemplateCreateActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "TemplateCreateActivity.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation
.end field

.field private mCardAdapter:Lcom/codemao/nemo/adapter/CardPagerAdapter;

.field private mCardShadowTransformer:Lcom/codemao/nemo/listener/ShadowTransformer;

.field private mPosition:I

.field mTvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvEnter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvIndex:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/TemplateCreateActivity;I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/TemplateCreateActivity;->showItem(I)V

    return-void
.end method

.method private setPadding()V
    .registers 11

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 111
    invoke-static {p0}, Lcom/codemao/nemo/util/ToolUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    const/high16 v2, 0x41700000  # 15.0f

    const/high16 v3, 0x40000000  # 2.0f

    const v4, 0x4495a000  # 1197.0f

    const/high16 v5, 0x44580000  # 864.0f

    if-eqz v1, :cond_4b

    const/16 v1, 0xf

    .line 112
    sput v1, Lcom/codemao/nemo/listener/ShadowTransformer;->MAX_ELEVATION_FACTOR:I

    .line 113
    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x44340000  # 720.0f

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v8

    float-to-int v8, v9

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v6, 0x4423c000  # 655.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v0

    mul-float v6, v6, v5

    div-float/2addr v6, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    .line 115
    iget-object v3, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    float-to-int v1, v1

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v4, 0x42480000  # 50.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_67

    .line 117
    :cond_4b
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v6, 0x43b90000  # 370.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v0

    mul-float v6, v6, v5

    div-float/2addr v6, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    .line 118
    iget-object v3, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    float-to-int v1, v1

    const/high16 v4, 0x40a00000  # 5.0f

    mul-float v4, v4, v0

    float-to-int v4, v4

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v3, v1, v4, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_67
    return-void
.end method

.method private showItem(I)V
    .registers 5

    .line 102
    iput p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mPosition:I

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 104
    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvIndex:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvName:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvContent:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method clickClose(Landroid/view/View;)V
    .registers 10
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a037b

    if-eq p1, v0, :cond_e0

    const v0, 0x7f0a0843

    if-eq p1, v0, :cond_10

    goto/16 :goto_fc

    .line 132
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->list:Ljava/util/List;

    iget v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击立即创作（模板创建内）"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mPosition:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setTemplateId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mPosition:I

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setTemplateRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    .line 136
    iput v2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 137
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 140
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 141
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/BcmHelper;->enterModule(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    goto :goto_fc

    .line 128
    :cond_e0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_fc
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0060

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "选择模版页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 60
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/codemao/nemo/adapter/CardPagerAdapter;

    invoke-direct {p1}, Lcom/codemao/nemo/adapter/CardPagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mCardAdapter:Lcom/codemao/nemo/adapter/CardPagerAdapter;

    .line 63
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getTemplates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->list:Ljava/util/List;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2e

    .line 65
    iget-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 66
    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mCardAdapter:Lcom/codemao/nemo/adapter/CardPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/adapter/CardPagerAdapter;->addCardItem(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_1c

    :cond_2e
    const/4 p1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/TemplateCreateActivity;->showItem(I)V

    .line 70
    new-instance v0, Lcom/codemao/nemo/listener/ShadowTransformer;

    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mCardAdapter:Lcom/codemao/nemo/adapter/CardPagerAdapter;

    new-instance v3, Lcom/codemao/nemo/activity/TemplateCreateActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/TemplateCreateActivity$1;-><init>(Lcom/codemao/nemo/activity/TemplateCreateActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/listener/ShadowTransformer;-><init>(Landroidx/viewpager/widget/ViewPager;Lcom/codemao/nemo/adapter/CardAdapter;Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mCardShadowTransformer:Lcom/codemao/nemo/listener/ShadowTransformer;

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mCardAdapter:Lcom/codemao/nemo/adapter/CardPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mCardShadowTransformer:Lcom/codemao/nemo/listener/ShadowTransformer;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 79
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TemplateCreateActivity;->setPadding()V

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvContent:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;-><init>(Lcom/codemao/nemo/activity/TemplateCreateActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
