.class public Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 326
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public getHeadersCount()I
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$100(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$300(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1a

    .line 409
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 411
    :cond_1a
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 414
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_31

    .line 415
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 417
    :cond_31
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    if-lt p1, v0, :cond_1e

    .line 448
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 449
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 450
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 424
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 425
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->isHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 426
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$200(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 428
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->isFooter(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/16 p1, 0x2711

    return p1

    .line 432
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_47

    .line 433
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_47

    .line 435
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    .line 436
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$800(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_3f

    return p1

    .line 437
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IRecyclerView require itemViewType in adapter should be less than 10000 "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    const/4 p1, 0x0

    return p1
.end method

.method public getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isFooter(I)Z
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$300(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 346
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public isHeader(I)Z
    .registers 3

    if-ltz p1, :cond_1c

    .line 341
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$100(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1c

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$200(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 458
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 371
    invoke-virtual {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 374
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 376
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1b

    .line 377
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1b

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1b
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-virtual {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 390
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_27

    .line 393
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_27

    .line 395
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 396
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_27

    .line 398
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$400(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 359
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$500(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->createRVBaseViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    return-object p1

    :cond_19
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_45

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$600(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 362
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$600(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;

    move-result-object p2

    invoke-interface {p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;->generateFooterView()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$702(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    .line 363
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$700(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->createRVBaseViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 366
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 469
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 470
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
