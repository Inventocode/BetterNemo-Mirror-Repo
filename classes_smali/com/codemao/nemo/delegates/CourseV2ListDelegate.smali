.class public final Lcom/codemao/nemo/delegates/CourseV2ListDelegate;
.super Ljava/lang/Object;
.source "CourseV2TopDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private isPad:Z

.field private final needShowDot:Z

.field private onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;


# direct methods
.method public static synthetic $r8$lambda$79P1O8AGmeFfulkGwsoO6_2rcjY(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->convert$lambda$1(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J5khoOUFzSi7Ki_vtdCq_nVujLk(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(ZLcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->needShowDot:Z

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    .line 166
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->isPad:Z

    return-void
.end method

.method public static final synthetic access$isPad$p(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;)Z
    .registers 1

    .line 162
    iget-boolean p0, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->isPad:Z

    return p0
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Landroid/view/View;)V
    .registers 5

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$subjectModel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getPackageId()J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectMoreClickListener(IJZ)V

    :cond_1f
    return-void
.end method

.method private static final convert$lambda$1(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Landroid/view/View;)V
    .registers 5

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$subjectModel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getPackageId()J

    move-result-wide p2

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectMoreClickListener(IJZ)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_124

    .line 178
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-nez p2, :cond_11

    goto/16 :goto_124

    .line 179
    :cond_11
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getItemList()Ljava/util/List;

    move-result-object p3

    const v0, 0x7f0a0179

    .line 180
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.getView(R.id.cmHorLayoutWithFooter)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/view/CourseListSlipeLayout;

    .line 181
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->hasInit()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_9d

    .line 184
    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->showMore(Z)V

    .line 185
    new-instance v2, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v2, v1, v4, v4}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-boolean v2, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->isPad:Z

    if-eqz v2, :cond_41

    const/16 v5, 0x22

    goto :goto_43

    :cond_41
    const/16 v5, 0x1c

    :goto_43
    const/16 v6, 0x9

    const/16 v7, 0x14

    if-eqz v2, :cond_4c

    const/16 v2, 0x1e

    goto :goto_4e

    :cond_4c
    const/16 v2, 0x14

    :goto_4e
    invoke-virtual {v0, v5, v6, v2}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setTitleMarginVer(III)V

    .line 187
    invoke-virtual {v0, v7}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setTitleTvSize(I)V

    const/16 v2, 0xe

    .line 188
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setMoreTvSize(I)V

    const/16 v2, 0x10

    .line 189
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setMoreIvSize(I)V

    .line 190
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->hightLightMore()V

    .line 191
    invoke-virtual {v0, p3}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setDatas(Ljava/util/List;)V

    .line 192
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setTitle(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->hightLightMore()V

    .line 195
    new-instance v2, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->getDatas()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 196
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v5, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;

    invoke-direct {v5, p0, v0}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;-><init>(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/codemao/nemo/view/CourseListSlipeLayout;)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 214
    new-instance v1, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;

    iget-object v5, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    invoke-direct {v1, v5}, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;-><init>(Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V

    invoke-virtual {v2, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 215
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setHasInit(Z)V

    goto :goto_b0

    .line 218
    :cond_9d
    invoke-virtual {v0, p3}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setDatas(Ljava/util/List;)V

    .line 219
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->resetScroll()V

    .line 220
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 222
    :cond_b0
    :goto_b0
    iget-boolean v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->needShowDot:Z

    if-eqz v1, :cond_d5

    .line 224
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getPackageId()J

    move-result-wide v1

    const-wide/16 v5, 0x3

    cmp-long v7, v1, v5

    if-nez v7, :cond_d0

    .line 225
    sget-object v1, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {v1}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->checkShowPop()Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "3"

    .line 227
    invoke-static {v1}, Lcom/codemao/nemo/util/SprefUtil;->getCurUserHasShowDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d0

    const/4 v1, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v1, 0x0

    .line 230
    :goto_d1
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setDotVisible(Z)V

    goto :goto_d8

    .line 232
    :cond_d5
    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setDotVisible(Z)V

    .line 235
    :goto_d8
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setTitle(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "全部"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getCourseCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v2, 0x8282

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setMoreText(Ljava/lang/String;)V

    .line 237
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget-boolean v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->isPad:Z

    if-eqz v1, :cond_108

    const/4 v1, 0x4

    goto :goto_109

    :cond_108
    const/4 v1, 0x2

    :goto_109
    if-le p3, v1, :cond_10c

    goto :goto_10d

    :cond_10c
    const/4 v3, 0x0

    :goto_10d
    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setLoadMoreScrollEnable(Z)V

    .line 238
    new-instance p3, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;)V

    .line 241
    new-instance v1, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;)V

    .line 244
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->setHandleLoadMoreListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->getLl_more()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_124
    :goto_124
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01cd

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 174
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectList:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
