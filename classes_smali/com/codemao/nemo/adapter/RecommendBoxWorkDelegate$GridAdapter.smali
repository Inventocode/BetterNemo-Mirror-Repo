.class Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecommendBoxWorkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBoxData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;


# direct methods
.method public static synthetic $r8$lambda$2IF5YWWeW__61RCYF_Y2YxS8BpY(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;Lcom/codemao/nemo/bean/RecommendBoxData;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->lambda$onBindViewHolder$0(Lcom/codemao/nemo/bean/RecommendBoxData;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->this$0:Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->mBoxData:Ljava/util/List;

    return-void
.end method

.method private goWebBrowser(Ljava/lang/String;)V
    .registers 4

    .line 115
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->this$0:Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/codemao/nemo/bean/RecommendBoxData;Landroid/view/View;)V
    .registers 4

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a043c

    if-eq p2, v0, :cond_16

    const v0, 0x7f0a0912

    if-eq p2, v0, :cond_16

    .line 99
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/RecommendBoxData;->getContentUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->goWebBrowser(Ljava/lang/String;)V

    goto :goto_1d

    .line 96
    :cond_16
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/RecommendBoxData;->getAuthorHomepage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->goWebBrowser(Ljava/lang/String;)V

    :goto_1d
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->mBoxData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 69
    check-cast p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;I)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->mBoxData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/RecommendBoxData;

    .line 88
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/RecommendBoxData;->getPicture()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 89
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/RecommendBoxData;->getAuthorAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 90
    iget-object v0, p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->tvWorkName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/RecommendBoxData;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->tvAuthorName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/RecommendBoxData;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;Lcom/codemao/nemo/bean/RecommendBoxData;)V

    .line 103
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p2, p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->tvAuthorName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;
    .registers 5

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01e0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;->this$0:Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;

    invoke-direct {p2, v0, p1}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;-><init>(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;Landroid/view/View;)V

    return-object p2
.end method
