.class Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
.source "DiscoveryFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->initIndicator(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

.field final synthetic val$size:I

.field final synthetic val$titles:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$J6MNExibGdxLRR_WFLWYdEsmueA(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->lambda$getTitleView$0(ILandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;ILjava/util/List;)V
    .registers 4

    .line 267
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    iput p2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->val$size:I

    iput-object p3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->val$titles:Ljava/util/List;

    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$getTitleView$0(ILandroid/view/View;)V
    .registers 3

    .line 282
    iget-object p2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {p2, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$400(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->val$size:I

    return v0
.end method

.method public getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .registers 5

    .line 294
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 295
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 296
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd  # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/high16 v1, 0x4008000000000000L  # 3.0

    .line 298
    invoke-static {p1, v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    const-wide/high16 v1, 0x3ff8000000000000L  # 1.5

    .line 299
    invoke-static {p1, v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setRoundRadius(F)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    .line 300
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$200(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/high16 p1, 0x41f00000  # 30.0f

    goto :goto_57

    :cond_55
    const/high16 p1, 0x41b00000  # 22.0f

    :goto_57
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineWidth(F)V

    return-object v0
.end method

.method public getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .registers 6

    .line 275
    new-instance v0, Lcom/codemao/nemo/view/indicator/ScaleTransitionPagerTitleView;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/view/indicator/ScaleTransitionPagerTitleView;-><init>(Landroid/content/Context;)V

    .line 276
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->val$titles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 277
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$200(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    const v2, 0x7f070250

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/util/text/NemoTextUtils;->fetchDimenTxtSize(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_25

    :cond_23
    const/high16 v1, 0x41900000  # 18.0f

    :goto_25
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    .line 280
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    .line 282
    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getCurUserHasShowTabIndicatorPop()Z

    move-result p2

    if-nez p2, :cond_6c

    const-string p2, "课程"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 285
    sget-object p1, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {p1}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->checkShowPop()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$300(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V

    :cond_6c
    return-object v0
.end method
