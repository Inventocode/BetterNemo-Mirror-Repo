.class public Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaterialUploadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialUploadBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Jc6lfrmhQjwBlcHjFzcL9WR2mjM(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;Lcom/codemao/creativecenter/bean/MaterialUploadBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->lambda$onBindViewHolder$0(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialUploadBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mData:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Landroid/view/View;)V
    .registers 7

    .line 55
    iget-object p2, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioSize:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long p2, v0, v2

    if-gez p2, :cond_15

    .line 56
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;

    if-eqz p2, :cond_20

    .line 57
    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;->onAudioClick(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    goto :goto_20

    .line 60
    :cond_15
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/codemao/creativecenter/R$string;->creative_nemo_limit_size:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 20
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;I)V
    .registers 8

    .line 43
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;

    .line 44
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    .line 45
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->setData(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    .line 46
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->tvSizeUpload:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->byteToMB(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p2, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v4, v0, v2

    if-gez v4, :cond_46

    .line 48
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->ivAudio:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_audio_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->tvSizeUpload:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$color;->sketch_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5e

    .line 51
    :cond_46
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->ivAudio:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_audio_unable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;->tvSizeUpload:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$color;->creative_text_upload_unable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :goto_5e
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;
    .registers 5

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_uplaod:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialUplaodBinding;

    .line 38
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialUploadBean;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->mData:Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;

    return-void
.end method
