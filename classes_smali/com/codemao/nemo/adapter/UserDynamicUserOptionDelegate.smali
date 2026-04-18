.class public Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;
.super Ljava/lang/Object;
.source "UserDynamicUserOptionDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/UserDynamicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;

.field private isOwner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->isOwner:Z

    .line 52
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;)Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;

    return-object p0
.end method

.method private getUserInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicUserInfo;
    .registers 4

    .line 104
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 105
    const-class v1, Lcom/codemao/nemo/bean/DynamicUserInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DynamicUserInfo;

    return-object p1
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;I)V"
        }
    .end annotation

    .line 67
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/UserDynamicInfo;

    if-nez p2, :cond_9

    return-void

    .line 71
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0913

    .line 72
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getDynamicOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a08f9

    .line 73
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getUpdated_at()J

    move-result-wide v1

    sget v3, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDetails_json()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->getUserInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicUserInfo;

    move-result-object p2

    if-nez p2, :cond_60

    return-void

    .line 78
    :cond_60
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043d

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0912

    .line 79
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0850

    .line 80
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "粉丝:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicUserInfo;->getFans_times()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0855

    .line 81
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "关注:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicUserInfo;->getAttention_times()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->isOwner:Z

    const v1, 0x7f0a03e2

    if-eqz v0, :cond_e0

    .line 83
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e9

    .line 92
    :cond_e0
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_e9
    const p3, 0x7f0a0663

    .line 94
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;-><init>(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DynamicUserInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01a8

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ATTENTION_USER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setOwner(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->isOwner:Z

    return-void
.end method
