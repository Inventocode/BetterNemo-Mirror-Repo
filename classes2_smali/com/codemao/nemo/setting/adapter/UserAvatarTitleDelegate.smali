.class public final Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;
.super Ljava/lang/Object;
.source "UserAvatarTitleDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStartSpace$delegate:Lkotlin/Lazy;

.field private final mTopSpace$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;->INSTANCE:Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;->mStartSpace$delegate:Lkotlin/Lazy;

    .line 22
    sget-object v0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mTopSpace$2;->INSTANCE:Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mTopSpace$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;->mTopSpace$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMStartSpace()F
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;->mStartSpace$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getMTopSpace()F
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;->mTopSpace$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 39
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    if-nez p1, :cond_d

    return-void

    .line 43
    :cond_d
    instance-of p3, p2, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    if-eqz p3, :cond_2f

    const p3, 0x7f0a08fa

    .line 44
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    .line 45
    check-cast p2, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->getDes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0}, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;->getMStartSpace()F

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 47
    invoke-direct {p0}, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;->getMTopSpace()F

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    :cond_2f
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01fc

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 32
    :goto_a
    instance-of p2, p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    .line 33
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->getMItemType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method
