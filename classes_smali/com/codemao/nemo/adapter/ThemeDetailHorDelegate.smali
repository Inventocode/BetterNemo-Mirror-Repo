.class public Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;
.super Ljava/lang/Object;
.source "ThemeDetailHorDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/SubjectInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private isPad:Z

.field private scrolledIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/codemao/nemo/bean/ScrollPositionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$p3oaKuEjGUq3GNvyGFCd47r4x6A(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->lambda$convert$0(Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->context:Landroid/app/Activity;

    .line 47
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->isPad:Z

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->scrolledIds:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->scrolledIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->isPad:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Landroid/app/Activity;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->getSubjectsIds(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getSubjectsIds(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/SubjectInfo;

    .line 162
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private synthetic lambda$convert$0(Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;Landroid/view/View;)V
    .registers 12

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    const-string v0, "主题页-点击更多按钮"

    invoke-static {v0, p4}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    iget-object v1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->getSubjectsIds(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v4, "主题页"

    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->goThemeDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public cleanScrolledIds()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->scrolledIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectInfo;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/SubjectInfo;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const v1, 0x7f0a0128

    .line 67
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;

    .line 68
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->hasInit()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_bf

    const/16 v2, 0x1c

    const/16 v5, 0xe

    .line 69
    invoke-virtual {v1, v2, v5}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setTitleMarginVer(II)V

    .line 70
    invoke-virtual {v1, v3}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->showMore(Z)V

    .line 71
    new-instance v2, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$1;

    invoke-direct {v2, p0, p3}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$1;-><init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;I)V

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setOnScrollCallback(Lcom/codemao/nemo/listener/OnScrollCallback;)V

    .line 82
    new-instance v2, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    iget-object v6, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->context:Landroid/app/Activity;

    invoke-direct {v2, v6, v4, v4}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->isPad:Z

    const/16 v6, 0x14

    if-eqz v2, :cond_46

    sget-object v2, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    const v7, 0x7f070250

    invoke-virtual {v2, v7}, Lcom/codemao/nemo/util/text/NemoTextUtils;->fetchDimenTxtSize(I)I

    move-result v2

    goto :goto_48

    :cond_46
    const/16 v2, 0x14

    :goto_48
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setTitleTvSize(I)V

    .line 85
    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->isPad:Z

    if-eqz v2, :cond_58

    sget-object v2, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    const v5, 0x7f07024d

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/util/text/NemoTextUtils;->fetchDimenTxtSize(I)I

    move-result v5

    :cond_58
    invoke-virtual {v1, v5}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setMoreTvSize(I)V

    .line 86
    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->isPad:Z

    if-eqz v2, :cond_69

    sget-object v2, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    const v5, 0x7f07024c

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/util/text/NemoTextUtils;->fetchDimenTxtSize(I)I

    move-result v2

    goto :goto_6b

    :cond_69
    const/16 v2, 0x10

    :goto_6b
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setMoreIvSize(I)V

    .line 87
    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->isPad:Z

    if-eqz v2, :cond_74

    const/16 v6, 0x1e

    :cond_74
    invoke-virtual {v1, v6}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setTitleMargin(I)V

    .line 88
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->hightLightMore()V

    .line 90
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setDatas(Ljava/util/List;)V

    .line 91
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setTitle(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->hightLightMore()V

    .line 93
    new-instance v2, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v5, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getDatas()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 94
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v5, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;

    invoke-direct {v5, p0, v1}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;-><init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)V

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 116
    new-instance p1, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;

    iget-object v5, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->context:Landroid/app/Activity;

    invoke-direct {p1, v5}, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;-><init>(Landroid/app/Activity;)V

    .line 117
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v2, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 119
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    invoke-virtual {v1, v3}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setHasInit(Z)V

    goto :goto_103

    .line 122
    :cond_bf
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->scrolledIds:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    .line 123
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getScrollStart()I

    move-result v2

    .line 124
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getScrollEnd()I

    move-result v5

    if-nez p1, :cond_e4

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->scrolledIds:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    invoke-direct {v7, v2, v5}, Lcom/codemao/nemo/bean/ScrollPositionInfo;-><init>(II)V

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e7

    .line 128
    :cond_e4
    invoke-virtual {p1, v2, v5}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->setStartAndEnd(II)V

    .line 130
    :goto_e7
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setDatas(Ljava/util/List;)V

    .line 131
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setTitle(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->resetScroll()V

    .line 133
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 135
    :goto_103
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x2

    if-le p1, v2, :cond_10f

    goto :goto_110

    :cond_10f
    const/4 v3, 0x0

    :goto_110
    invoke-virtual {v1, v3}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setLoadMoreScrollEnable(Z)V

    .line 136
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->setThemeId(Ljava/lang/String;)V

    .line 137
    new-instance p1, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, p3, p2}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->setHandleLoadMoreListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getLl_more()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$3;-><init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01c7

    return v0
.end method

.method public getScrolledIds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/codemao/nemo/bean/ScrollPositionInfo;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->scrolledIds:Ljava/util/Map;

    return-object v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
