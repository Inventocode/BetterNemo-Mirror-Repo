.class Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;
.super Ljava/lang/Object;
.source "RecyclerRelativeLayout.java"

# interfaces
.implements Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RecyclerRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDownloadItem(ILjava/lang/String;)V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_16

    .line 278
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 281
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1902(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onCancelDownloadItem(ILjava/lang/String;)V

    return-void
.end method

.method public onChangeNameItem(ILjava/lang/String;)V
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 272
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onChangeNameItem(ILjava/lang/String;)V

    return-void
.end method

.method public onClick(ILjava/lang/String;)V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_67

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x2bc

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onEditWork(ILjava/lang/String;)V

    goto :goto_61

    .line 206
    :cond_38
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink()Z

    move-result p2

    if-eqz p2, :cond_61

    .line 207
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setNeedExpand(Z)V

    .line 208
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setShrink(Z)V

    .line 209
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/codemao/nemo/view/RVAdapter;->setI(IZ)V

    .line 211
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->requestLayout()V

    goto :goto_77

    .line 213
    :cond_67
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v0, 0xc8

    invoke-static {p2, v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 214
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_77
    return-void
.end method

.method public onCopyItem(ILjava/lang/String;)V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1802(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 264
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x708

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onCopyItem(ILjava/lang/String;)V

    return-void
.end method

.method public onDeleteBcm(ILjava/lang/String;)V
    .registers 6

    .line 296
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_16

    .line 297
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 300
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x2bc

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 301
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1902(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z

    .line 302
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 303
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onDeleteBcm(ILjava/lang/String;)V

    return-void
.end method

.method public onDeleteItem(ILjava/lang/String;)V
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_d

    return-void

    .line 229
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1702(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z

    .line 230
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x2bc

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 232
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onDeleteItem(ILjava/lang/String;)V

    return-void
.end method

.method public onEditWork(ILjava/lang/String;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onEditWork(ILjava/lang/String;)V

    return-void
.end method

.method public onRedownload(ILjava/lang/String;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_d

    return-void

    .line 311
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onRedownload(ILjava/lang/String;)V

    return-void
.end method

.method public onScrollTo(ILjava/lang/String;)V
    .registers 5

    .line 289
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 290
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v0, 0xc8

    invoke-static {p2, v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 291
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onShareItem(ILjava/lang/String;)V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onShareItem(ILjava/lang/String;)V

    return-void
.end method

.method public onUploadItem(ILjava/lang/String;)V
    .registers 8

    .line 237
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 238
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setNeedShrink(Z)V

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setShrink(Z)V

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->copyCard()Lcom/codemao/nemo/bean/CardVO;

    move-result-object v0

    const-string v4, "uploading"

    .line 242
    invoke-virtual {v0, v4}, Lcom/codemao/nemo/bean/CardVO;->setUploadStatus(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v4}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/codemao/nemo/view/RVAdapter;->setI(IZ)V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    new-instance v3, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
