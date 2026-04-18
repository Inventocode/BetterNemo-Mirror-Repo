.class final Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DeviceInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/DeviceInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;,
        Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 280
    check-cast p1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;->onBindViewHolder(Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;->getContentTv()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-virtual {p2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;
    .registers 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01a2

    const/4 v1, 0x0

    .line 297
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 298
    new-instance p2, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
