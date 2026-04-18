.class public Lcom/codemao/nemo/delegates/CourseListBottomDelegate;
.super Ljava/lang/Object;
.source "CourseListBottomDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private margeTop:I

.field private onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

.field private paddEnd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->context:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    const/high16 v0, 0x41a00000  # 20.0f

    if-eqz p1, :cond_10

    const/high16 p1, 0x41f00000  # 30.0f

    goto :goto_12

    :cond_10
    const/high16 p1, 0x41a00000  # 20.0f

    :goto_12
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->paddEnd:I

    .line 40
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    if-eqz p1, :cond_20

    const/high16 v0, 0x42200000  # 40.0f

    :cond_20
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->margeTop:I

    .line 41
    iput-object p2, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 57
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    .line 58
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 60
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    .line 61
    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->generateSubjectListModels(Lcom/codemao/nemo/bean/CourseV2ResponseItem;)Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2f
    const p2, 0x7f0a088f

    .line 64
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->margeTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const p2, 0x7f0a0983

    .line 65
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->paddEnd:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const p2, 0x7f0a0989

    .line 66
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->paddEnd:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 68
    new-instance p2, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 69
    new-instance p3, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;

    const/4 v0, 0x0

    new-instance v1, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/delegates/CourseListBottomDelegate$1;-><init>(Lcom/codemao/nemo/delegates/CourseListBottomDelegate;)V

    invoke-direct {p3, v0, v1}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;-><init>(ZLcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V

    invoke-virtual {p2, p3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    const p3, 0x7f0a0681

    .line 93
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0211

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    return p1
.end method
