.class public Lcom/codemao/nemo/adapter/CardPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CardPagerAdapter.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/CardAdapter;


# instance fields
.field private mBaseElevation:F

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/cardview/widget/CardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mData:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mViews:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/CardPagerAdapter;Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/CardPagerAdapter;->goBcm(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method private bind(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILandroid/view/View;)V
    .registers 6

    const v0, 0x7f0a0373

    .line 103
    :try_start_3
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 104
    new-instance v0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;-><init>(Lcom/codemao/nemo/adapter/CardPagerAdapter;Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 110
    iget-object p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/codemao/nemo/util/GlideUtils;->loadBcm(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method

.method private goBcm(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 12

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    add-int/2addr p3, v4

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "选择模版页-点击模版卡片"

    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setTemplateId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setTemplateRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    new-instance p3, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {p3}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    .line 93
    iput v0, p3, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 94
    iget-object v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 97
    iget-boolean p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {p3, p2}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 98
    invoke-static {p1, p3}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    return-void
.end method


# virtual methods
.method public addCardItem(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 82
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mViews:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBaseElevation()F
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mBaseElevation:F

    return v0
.end method

.method public getCardViewAt(I)Landroidx/cardview/widget/CardView;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    return-object p1
.end method

.method public getCount()I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0080

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/codemao/nemo/adapter/CardPagerAdapter;->bind(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILandroid/view/View;)V

    const p1, 0x7f0a0100

    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 71
    iget v1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mBaseElevation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_38

    .line 72
    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mBaseElevation:F

    .line 75
    :cond_38
    iget v1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mBaseElevation:F

    sget v2, Lcom/codemao/nemo/listener/ShadowTransformer;->MAX_ELEVATION_FACTOR:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 76
    iget-object v1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
