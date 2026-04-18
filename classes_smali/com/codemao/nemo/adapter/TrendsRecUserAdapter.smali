.class public Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TrendsRecUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;,
        Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;",
        ">;"
    }
.end annotation


# instance fields
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

.field private followCallBack:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;",
            "Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->datas:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->followCallBack:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;

    .line 40
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->followCallBack:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 31
    check-cast p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;I)V
    .registers 8

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/TrendsRecInfo;

    .line 55
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    .line 57
    :cond_f
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivFrame:Lcom/codemao/nemo/view/AvatarFrameImagView;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/view/AvatarFrameImagView;->setUserLevel(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v2, v3}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 59
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getTop_like_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivWorkCover1:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 61
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvWorkName1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getTop_like_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvPraiseNum1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getTop_like_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getN_likes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvViewNum1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getTop_like_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getN_views()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivWorkCover2:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 65
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvWorkName2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvPraiseNum2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getN_likes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvViewNum2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getN_views()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card1:Landroid/view/View;

    new-instance v3, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$1;

    invoke-direct {v3, p0, p2, v0}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$1;-><init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;ILcom/codemao/nemo/bean/TrendsRecInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card2:Landroid/view/View;

    new-instance v3, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;

    invoke-direct {v3, p0, p2, v0}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;-><init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;ILcom/codemao/nemo/bean/TrendsRecInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$3;

    invoke-direct {v0, p0, p2, v1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$3;-><init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;ILcom/codemao/nemo/bean/TrendsRecUserInfo;)V

    .line 93
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivFrame:Lcom/codemao/nemo/view/AvatarFrameImagView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getRecommend_slogan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivSign:Lcom/codemao/nemo/view/UserSignImagView;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getAuthor_level()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/view/UserSignImagView;->setUserLevel(IZ)V

    .line 98
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivSign:Lcom/codemao/nemo/view/UserSignImagView;

    new-instance v2, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;

    invoke-direct {v2, p0, p2, v1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;-><init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;ILcom/codemao/nemo/bean/TrendsRecUserInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getAuthor_level()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10b

    .line 108
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    const/high16 v2, 0x42500000  # 52.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_110

    .line 111
    :cond_10b
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    :goto_110
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->isFollowed()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 114
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvFollow:Landroid/widget/TextView;

    const v2, 0x7f08007b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvFollow:Landroid/widget/TextView;

    const-string/jumbo v2, "已关注"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_137

    .line 117
    :cond_127
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvFollow:Landroid/widget/TextView;

    const v2, 0x7f08007a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvFollow:Landroid/widget/TextView;

    const-string/jumbo v2, "关注"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_137
    iget-object p1, p1, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvFollow:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;

    invoke-direct {v0, p0, v1, p2}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;-><init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;Lcom/codemao/nemo/bean/TrendsRecUserInfo;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;
    .registers 5

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01f2

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;-><init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;Landroid/view/View;)V

    return-object p2
.end method
