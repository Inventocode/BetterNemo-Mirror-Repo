.class public Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TrendsRecTopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bgColors:[I

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isPad:Z

.field private mAvatarWidth:I

.field private mItemWidth:I

.field private textColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 30
    fill-array-data v1, :array_42

    iput-object v1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->bgColors:[I

    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_56

    iput-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->textColors:[I

    .line 39
    iput-object p2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->datas:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->context:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->isPad:Z

    if-eqz p1, :cond_30

    const/high16 p1, 0x42a20000  # 81.0f

    .line 43
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->mItemWidth:I

    const/high16 p1, 0x42640000  # 57.0f

    .line 44
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->mAvatarWidth:I

    goto :goto_40

    :cond_30
    const/high16 p1, 0x42780000  # 62.0f

    .line 46
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->mItemWidth:I

    const/high16 p1, 0x42480000  # 50.0f

    .line 47
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->mAvatarWidth:I

    :goto_40
    return-void

    nop

    :array_42
    .array-data 4
        0x7f060196
        0x7f060197
        0x7f060198
        0x7f060199
        0x7f06019a
        0x7f06019b
        0x7f06019c
        0x7f06019d
    .end array-data

    :array_56
    .array-data 4
        0x7f06019e
        0x7f06019f
        0x7f0601a0
        0x7f0601a1
        0x7f0601a2
        0x7f0601a3
        0x7f0601a4
        0x7f0601a5
    .end array-data
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;)Landroid/content/Context;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 26
    check-cast p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;I)V
    .registers 8

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/TrendsRecInfo;

    .line 64
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 65
    iget v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->mAvatarWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 66
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 67
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 70
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    iget v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->mItemWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 72
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->isPad:Z

    if-eqz v2, :cond_42

    const/high16 v2, 0x41500000  # 13.0f

    goto :goto_44

    :cond_42
    const/high16 v2, 0x41600000  # 14.0f

    :goto_44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvTag:Lcom/codemao/nemo/view/ColorTextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getRecommend_slogan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvTag:Lcom/codemao/nemo/view/ColorTextView;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->textColors:[I

    rem-int/lit8 v4, p2, 0x8

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvTag:Lcom/codemao/nemo/view/ColorTextView;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->bgColors:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    .line 79
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvTag:Lcom/codemao/nemo/view/ColorTextView;

    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->isPad:Z

    if-eqz v2, :cond_92

    const/high16 v2, 0x41300000  # 11.0f

    goto :goto_94

    :cond_92
    const/high16 v2, 0x41400000  # 12.0f

    :goto_94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget-object v1, p1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvTag:Lcom/codemao/nemo/view/ColorTextView;

    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->isPad:Z

    if-eqz v2, :cond_a0

    const/high16 v2, 0x42280000  # 42.0f

    goto :goto_a2

    :cond_a0
    const/high16 v2, 0x42780000  # 62.0f

    :goto_a2
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 81
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;-><init>(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;ILcom/codemao/nemo/bean/TrendsRecInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;
    .registers 5

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01df

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;-><init>(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;Landroid/view/View;)V

    return-object p2
.end method
