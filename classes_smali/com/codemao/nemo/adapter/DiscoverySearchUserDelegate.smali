.class public Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;
.super Ljava/lang/Object;
.source "DiscoverySearchUserDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private key:Ljava/lang/String;

.field private nameWitdh:I

.field private userCallBack:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->nameWitdh:I

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->userCallBack:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->nameWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;I)I
    .registers 2

    .line 31
    iput p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->nameWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->userCallBack:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;",
            ">;I)V"
        }
    .end annotation

    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    if-nez p2, :cond_9

    return-void

    .line 70
    :cond_9
    iget v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->nameWitdh:I

    if-gtz v0, :cond_18

    .line 71
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;-><init>(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    :cond_18
    const v0, 0x7f0a0912

    .line 79
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->key:Ljava/lang/String;

    const/4 v5, 0x2

    iget v6, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->nameWitdh:I

    const-string v4, "#6F60DD"

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_2d
    const v0, 0x7f0a08aa

    .line 82
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getTotal_likes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0925

    .line 83
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getN_works()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "个作品"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;-><init>(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->isFollowed()Z

    move-result v0

    const v1, 0x7f0a0854

    if-eqz v0, :cond_a7

    .line 95
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "已关注"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0800cf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cf

    .line 99
    :cond_a7
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0800d0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "关注"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :goto_cf
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_f3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getId()J

    move-result-wide v2

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_f3

    .line 105
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_fb

    .line 107
    :cond_f3
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_fb
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;-><init>(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0a043c

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01a3

    return v0
.end method

.method public getNameWitdh()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->nameWitdh:I

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->key:Ljava/lang/String;

    return-void
.end method
