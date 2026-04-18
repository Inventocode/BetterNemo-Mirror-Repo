.class public Lcom/codemao/creativecenter/customview/CreateDebugView;
.super Landroid/widget/RelativeLayout;
.source "CreateDebugView.java"


# instance fields
.field private activity:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private blurView:Landroid/view/View;

.field private chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private flScene:Landroid/widget/FrameLayout;

.field private getRuntimeVaribleMsg:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

.field private isLandscapeMode:Z

.field private isList1ChooseShow:Z

.field private ivDebug:Landroid/widget/ImageView;

.field private ivList:Landroid/widget/ImageView;

.field private ivListEmpty:Landroid/widget/ImageView;

.field private ivMoreList1:Landroid/widget/ImageView;

.field private ivMoreList2:Landroid/widget/ImageView;

.field private ivScene:Landroid/widget/ImageView;

.field private ivVariable:Landroid/widget/ImageView;

.field private iv_blur:Landroid/widget/ImageView;

.field private list1Id:Ljava/lang/String;

.field private list2Id:Ljava/lang/String;

.field private listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

.field private listAdapter2:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

.field private listIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listStrs1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listStrs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;"
        }
    .end annotation
.end field

.field private llList:Landroid/widget/RelativeLayout;

.field private llMenu:Landroid/view/View;

.field private llMenuBottom:Landroid/widget/LinearLayout;

.field private rlEmpty:Landroid/widget/LinearLayout;

.field private rlListName1:Landroid/widget/RelativeLayout;

.field private rlListName2:Landroid/widget/RelativeLayout;

.field private rvList1:Landroidx/recyclerview/widget/RecyclerView;

.field private rvList2:Landroidx/recyclerview/widget/RecyclerView;

.field private rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

.field private rvScene:Landroidx/recyclerview/widget/RecyclerView;

.field private rvVariable:Landroidx/recyclerview/widget/RecyclerView;

.field private sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

.field private tvListEmpty:Landroid/widget/TextView;

.field private tvListName1:Landroid/widget/TextView;

.field private tvListName2:Landroid/widget/TextView;

.field private tvRoleName1:Landroid/widget/TextView;

.field private tvRoleName2:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private type:I

.field private variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

.field private variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;"
        }
    .end annotation
.end field

.field private web:Lcom/codemao/creativestore/dsbridge/DWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 93
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isList1ChooseShow:Z

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/view/View;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->blurView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/ImageView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->iv_blur:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    return p0
.end method

.method static synthetic access$1102(Lcom/codemao/creativecenter/customview/CreateDebugView;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    return p1
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/customview/CreateDebugView;I)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->changeState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/customview/CreateDebugView;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->doCloseAnim()V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/view/LocalBcmView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isList1ChooseShow:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list1Id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/creativecenter/customview/CreateDebugView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list1Id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/codemao/creativecenter/customview/CreateDebugView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->getRuntimeVaribleMsg:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    return-object p0
.end method

.method private calculateSceneSpanSize()I
    .registers 3

    .line 625
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_f

    const/high16 v0, 0x43b30000  # 358.0f

    .line 626
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v0

    goto :goto_15

    :cond_f
    const/high16 v0, 0x43930000  # 294.0f

    .line 628
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v0

    .line 630
    :goto_15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_1d

    const/4 v0, 0x3

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x2

    :goto_1e
    return v0
.end method

.method private changeState(I)V
    .registers 9

    .line 418
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->showEmpty()V

    .line 419
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    if-eq v0, v1, :cond_11

    const/4 v0, 0x0

    goto :goto_13

    :cond_11
    const/16 v0, 0x8

    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->flScene:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1f

    const/4 v0, 0x0

    goto :goto_21

    :cond_1f
    const/16 v0, 0x8

    :goto_21
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvVariable:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2d

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x8

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-eq v0, v1, :cond_3a

    const/4 v0, 0x0

    goto :goto_3c

    :cond_3a
    const/16 v0, 0x8

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llList:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_48

    const/4 v0, 0x0

    goto :goto_4a

    :cond_48
    const/16 v0, 0x8

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivScene:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-ne v0, v4, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 425
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivVariable:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-ne v0, v5, :cond_61

    const/4 v0, 0x1

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 426
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivList:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-ne v0, v6, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 427
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivDebug:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-eq v0, v1, :cond_79

    const/4 v0, 0x1

    goto :goto_7a

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 428
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a8

    .line 434
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 437
    :cond_a8
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_b5

    .line 438
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    :cond_b5
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    if-eqz p1, :cond_db

    .line 442
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x10

    .line 443
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 444
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 447
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 448
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    :cond_db
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-eq p1, v1, :cond_11c

    if-eqz p1, :cond_118

    if-eq p1, v4, :cond_108

    if-eq p1, v5, :cond_f8

    if-eq p1, v6, :cond_e8

    goto :goto_155

    .line 480
    :cond_e8
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_155

    .line 476
    :cond_f8
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_variable_overview:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_155

    .line 472
    :cond_108
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_switch_screens:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_155

    .line 469
    :cond_118
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->doOpenAnim()V

    goto :goto_155

    .line 453
    :cond_11c
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->setCurrentScene(Lcom/codemao/creativestore/bean/SceneVO;)V

    .line 454
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 455
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 456
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, ""

    .line 457
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list1Id:Ljava/lang/String;

    .line 458
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    .line 459
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 460
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 461
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter2:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 462
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 464
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->notifyViewModelList()V

    .line 465
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_155
    return-void
.end method

.method private doCloseAnim()V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 496
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, -0x3e380000  # -25.0f

    .line 498
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/customview/CreateDebugView$9;

    invoke-direct {v2, p0, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView$9;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 514
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private doOpenAnim()V
    .registers 4

    .line 487
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 488
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    const/high16 v2, -0x3e380000  # -25.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 490
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 491
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private initSceneListSize()V
    .registers 8

    .line 589
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->calculateSceneSpanSize()I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1a

    .line 591
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 594
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 595
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v2, :cond_36

    .line 596
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41e00000  # 28.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 598
    :cond_36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42600000  # 56.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    mul-int v2, v2, v0

    mul-int v3, v1, v0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 600
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 601
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 602
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 603
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 604
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initSize()V
    .registers 4

    .line 213
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_114

    .line 214
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000  # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42000000  # 32.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 216
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41d80000  # 27.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 217
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 218
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42a40000  # 82.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 219
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivListEmpty:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43200000  # 160.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivListEmpty:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivDebug:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000  # 50.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivDebug:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivScene:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000  # 36.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 224
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivScene:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivVariable:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivVariable:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivList:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivList:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_114
    return-void
.end method

.method private resortList()V
    .registers 9

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 700
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 701
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 702
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->getRuntimeVaribleMsg:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;->getVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/VariableVO;

    .line 703
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "any"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 704
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->isIs_global()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 705
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 707
    :cond_40
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 709
    :cond_44
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "list"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 710
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->isIs_global()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 711
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 713
    :cond_5a
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 718
    :cond_5e
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 719
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 720
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 721
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 722
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 723
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 724
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/VariableVO;

    .line 725
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/VariableVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_94
    return-void
.end method

.method private showEmpty()V
    .registers 6

    .line 899
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_28

    .line 900
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListEmpty:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_nemo_no_variable_data:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlEmpty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_24

    :cond_22
    const/16 v1, 0x8

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_50

    :cond_28
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4b

    .line 903
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListEmpty:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_nemo_no_list_data:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlEmpty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_45

    goto :goto_47

    :cond_45
    const/16 v1, 0x8

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_50

    .line 906
    :cond_4b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_50
    return-void
.end method

.method private updateList()V
    .registers 10

    .line 761
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :cond_c
    const/4 v1, -0x1

    goto :goto_55

    .line 764
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list1Id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 765
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list1Id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_34

    .line 767
    :cond_21
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 773
    :goto_34
    iget-boolean v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    if-nez v4, :cond_c

    .line 774
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 775
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v0, :cond_4f

    if-nez v0, :cond_54

    goto :goto_55

    :cond_4f
    move v1, v3

    goto :goto_55

    :cond_51
    if-nez v0, :cond_54

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    :goto_55
    const/16 v3, 0x8

    const-string v4, "·"

    if-ltz v0, :cond_eb

    .line 793
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs1:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 794
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/VariableVO;->getValueForDebug()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 795
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/VariableVO;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list1Id:Ljava/lang/String;

    .line 796
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/VariableVO;->isIs_global()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 797
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName1:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_bb

    .line 799
    :cond_96
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName1:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/VariableVO;->getEntity_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName1:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    :goto_bb
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListName1:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v6, Lcom/codemao/creativecenter/customview/CreateDebugView$10;

    invoke-direct {v6, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$10;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    .line 804
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 803
    invoke-virtual {v0, v5, v6}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_e6

    .line 806
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs1:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 807
    :cond_e6
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_eb
    if-ltz v1, :cond_17d

    .line 810
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 811
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->getValueForDebug()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 812
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->list2Id:Ljava/lang/String;

    .line 813
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/VariableVO;->isIs_global()Z

    move-result v5

    if-eqz v5, :cond_128

    .line 814
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14d

    .line 816
    :cond_128
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/VariableVO;->getEntity_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    :goto_14d
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListName2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/customview/CreateDebugView$11;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$11;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    .line 821
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 820
    invoke-virtual {v1, v0, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_178

    .line 823
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 824
    :cond_178
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter2:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_17d
    return-void
.end method

.method private updateUI()V
    .registers 12

    .line 829
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v0, :cond_8f

    .line 830
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivMoreList1:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_16

    const/4 v6, 0x0

    goto :goto_18

    :cond_16
    const/16 v6, 0x8

    :goto_18
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivMoreList2:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_27

    const/4 v6, 0x0

    goto :goto_29

    :cond_27
    const/16 v6, 0x8

    :goto_29
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, 0x0

    goto :goto_39

    :cond_38
    const/4 v6, 0x4

    :goto_39
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_48

    const/4 v6, 0x1

    goto :goto_49

    :cond_48
    const/4 v6, 0x0

    :goto_49
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 835
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_58

    const/4 v6, 0x0

    goto :goto_5a

    :cond_58
    const/16 v6, 0x8

    :goto_5a
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v3, :cond_69

    const/4 v6, 0x4

    goto :goto_6a

    :cond_69
    const/4 v6, 0x0

    :goto_6a
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_79

    const/4 v6, 0x1

    goto :goto_7a

    :cond_79
    const/4 v6, 0x0

    :goto_7a
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 839
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v3, :cond_8a

    const/16 v6, 0x8

    goto :goto_8b

    :cond_8a
    const/4 v6, 0x0

    :goto_8b
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e5

    .line 841
    :cond_8f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivMoreList1:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_9b

    const/4 v6, 0x0

    goto :goto_9d

    :cond_9b
    const/16 v6, 0x8

    :goto_9d
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivMoreList2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_b1

    const/4 v6, 0x0

    goto :goto_b2

    :cond_b1
    const/4 v6, 0x4

    :goto_b2
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_c1

    const/4 v6, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v6, 0x0

    :goto_c2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 846
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_d1

    const/4 v6, 0x0

    goto :goto_d3

    :cond_d1
    const/16 v6, 0x8

    :goto_d3
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 850
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 853
    :goto_e5
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 854
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 855
    iget-boolean v7, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    if-nez v7, :cond_185

    .line 856
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x10

    const/16 v9, 0xe

    if-ge v7, v3, :cond_140

    .line 857
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 858
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v7, 0x42600000  # 56.0f

    invoke-static {v3, v7}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0, v3, v5, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 859
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v3, v5, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 860
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v3, -0x1

    .line 861
    invoke-virtual {v0, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 862
    invoke-virtual {v6, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 863
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {v3, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->setCenter(Z)V

    goto :goto_17b

    .line 865
    :cond_140
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v2, v5, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 866
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v6, v2, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 867
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 868
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 869
    sget v2, Lcom/codemao/creativecenter/R$id;->middle:I

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 870
    invoke-virtual {v6, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 871
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {v2, v5}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->setCenter(Z)V

    .line 873
    :goto_17b
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    :cond_185
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1aa

    .line 877
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isList1ChooseShow:Z

    if-eqz v0, :cond_19c

    .line 878
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1aa

    .line 880
    :cond_19c
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    if-nez v0, :cond_1aa

    .line 881
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1aa
    :goto_1aa
    return-void
.end method


# virtual methods
.method public bindBlurView(Landroid/view/View;Lcom/codemao/creativestore/dsbridge/DWebView;Lcom/codemao/creativecenter/view/LocalBcmView;)V
    .registers 4

    .line 128
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->blurView:Landroid/view/View;

    .line 129
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->web:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 130
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    return-void
.end method

.method public changeType(I)V
    .registers 3

    .line 609
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    if-ne v0, p1, :cond_5

    return-void

    .line 613
    :cond_5
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    .line 614
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->changeState(I)V

    return-void
.end method

.method public getList(Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_6c

    .line 671
    iget-object v0, p1, Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;->result:Lcom/codemao/creativestore/bean/GetRuntimeListMsg;

    if-nez v0, :cond_7

    goto :goto_6c

    .line 674
    :cond_7
    iget-object v0, p1, Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p1, Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_6c

    .line 677
    :cond_1e
    new-instance v0, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->getRuntimeVaribleMsg:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    .line 678
    iget-object p1, p1, Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;->result:Lcom/codemao/creativestore/bean/GetRuntimeListMsg;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/GetRuntimeListMsg;->getVariable_dict()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;->setVariables(Ljava/util/List;)V

    .line 679
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 680
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 681
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 682
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->resortList()V

    .line 683
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvVariable:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    if-eqz p1, :cond_50

    .line 684
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->notifyViewModelList()V

    .line 685
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 687
    :cond_50
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->updateUI()V

    .line 688
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->showEmpty()V

    .line 689
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5f

    return-void

    .line 692
    :cond_5f
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->updateList()V

    .line 693
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->transformData()V

    .line 694
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public getType()I
    .registers 2

    .line 619
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->type:I

    return v0
.end method

.method public getVariable(Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_5f

    .line 731
    iget-object v0, p1, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;->result:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    if-nez v0, :cond_7

    goto :goto_5f

    .line 734
    :cond_7
    iget-object v0, p1, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p1, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_5f

    .line 737
    :cond_1e
    iget-object p1, p1, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;->result:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    .line 738
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->getRuntimeVaribleMsg:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    if-eqz p1, :cond_5f

    .line 739
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;->getVariables()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2b

    goto :goto_5f

    .line 742
    :cond_2b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 743
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 744
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 745
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->resortList()V

    .line 746
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvVariable:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    if-eqz p1, :cond_4d

    .line 747
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->notifyViewModelList()V

    .line 748
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 750
    :cond_4d
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->showEmpty()V

    .line 751
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->updateUI()V

    .line 752
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5c

    return-void

    .line 755
    :cond_5c
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->updateList()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public hide()V
    .registers 3

    const/16 v0, 0x8

    .line 888
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 892
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    if-nez v0, :cond_23

    .line 893
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_23
    return-void
.end method

.method public init(Z)V
    .registers 6

    .line 237
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->isLandscapeMode:Z

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listIds:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs1:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs2:Ljava/util/List;

    .line 243
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 244
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 247
    :cond_36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_view_create_debug:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 248
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_scene:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    .line 249
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_menu:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenu:Landroid/view/View;

    .line 250
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_scene:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivScene:Landroid/widget/ImageView;

    .line 251
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_variable:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivVariable:Landroid/widget/ImageView;

    .line 252
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_list:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivList:Landroid/widget/ImageView;

    .line 253
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_blur:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->iv_blur:Landroid/widget/ImageView;

    .line 254
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_list1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    .line 255
    sget v0, Lcom/codemao/creativecenter/R$id;->rl_empty:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlEmpty:Landroid/widget/LinearLayout;

    .line 256
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_list:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llList:Landroid/widget/RelativeLayout;

    .line 257
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_list2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_role_name1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName1:Landroid/widget/TextView;

    .line 259
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_role_name2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvRoleName2:Landroid/widget/TextView;

    .line 260
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_list_name1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListName1:Landroid/widget/TextView;

    .line 261
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_list_name2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListName2:Landroid/widget/TextView;

    .line 262
    sget v0, Lcom/codemao/creativecenter/R$id;->rl_list_name1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    .line 263
    sget v0, Lcom/codemao/creativecenter/R$id;->rl_list_name2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    .line 264
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_list_empty:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivListEmpty:Landroid/widget/ImageView;

    .line 265
    sget v0, Lcom/codemao/creativecenter/R$id;->fl_scene:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->flScene:Landroid/widget/FrameLayout;

    .line 266
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_memu_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->llMenuBottom:Landroid/widget/LinearLayout;

    .line 267
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_list_empty:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvListEmpty:Landroid/widget/TextView;

    .line 268
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_choose_list1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivMoreList1:Landroid/widget/ImageView;

    .line 269
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_choose_list2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivMoreList2:Landroid/widget/ImageView;

    .line 270
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_choose_list:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_variable:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvVariable:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->tvTitle:Landroid/widget/TextView;

    .line 273
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_debug:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivDebug:Landroid/widget/ImageView;

    .line 274
    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variables:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    .line 275
    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs1:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    .line 276
    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listStrs2:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter2:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    .line 277
    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->lists:Ljava/util/List;

    new-instance v3, Lcom/codemao/creativecenter/customview/CreateDebugView$2;

    invoke-direct {v3, p0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView$2;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)V

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    .line 303
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 304
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 305
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvVariable:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 306
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 307
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter1:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 308
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvListChoose:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 309
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->listAdapter2:Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 310
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvVariable:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->variableAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 311
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivScene:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreateDebugView$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$3;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivVariable:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreateDebugView$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$4;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivList:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreateDebugView$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$5;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->ivDebug:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreateDebugView$6;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$6;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreateDebugView$7;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView$7;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rlListName2:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView$8;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->initSize()V

    return-void
.end method

.method public initData(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V
    .registers 12

    .line 639
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 640
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getVariableList()V

    .line 641
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->initSceneListSize()V

    const/4 v0, 0x1

    .line 643
    invoke-virtual {p0, v0, p2}, Lcom/codemao/creativecenter/customview/CreateDebugView;->setBlur(ZZ)V

    const/4 p2, 0x0

    .line 645
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 647
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_34

    .line 648
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    move-object v3, p2

    move-object v6, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    .line 649
    invoke-virtual {p2, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->setCurrentScene(Lcom/codemao/creativestore/bean/SceneVO;)V

    .line 650
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_56

    .line 652
    :cond_34
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_4a

    .line 654
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {p1, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->setCurrentScene(Lcom/codemao/creativestore/bean/SceneVO;)V

    goto :goto_51

    .line 656
    :cond_4a
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentSceneIndex()I

    move-result v2

    invoke-virtual {p1, v2, v1, v0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    .line 658
    :goto_51
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_56
    const/4 p1, -0x1

    .line 660
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->changeState(I)V

    .line 661
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->transformData()V

    .line 662
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->chooseAdapter:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestory()V
    .registers 2

    .line 666
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public setBlur(ZZ)V
    .registers 7

    .line 134
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->iv_blur:Landroid/widget/ImageView;

    const-string p2, "#FF221D4E"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void

    .line 139
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->isInBlock()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 140
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->web:Lcom/codemao/creativestore/dsbridge/DWebView;

    goto :goto_21

    :cond_1f
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->blurView:Landroid/view/View;

    :goto_21
    if-eqz v0, :cond_26

    if-eqz p2, :cond_26

    return-void

    :cond_26
    if-eqz v0, :cond_2b

    if-nez p1, :cond_2b

    return-void

    :cond_2b
    if-eqz p1, :cond_32

    .line 147
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView;->iv_blur:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 151
    :cond_32
    new-instance p2, Lcom/codemao/creativecenter/customview/CreateDebugView$1;

    invoke-direct {p2, p0, v1, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView$1;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Landroid/view/View;Z)V

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
