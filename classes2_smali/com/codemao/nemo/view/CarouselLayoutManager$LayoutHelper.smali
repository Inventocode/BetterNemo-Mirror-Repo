.class Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutHelper"
.end annotation


# instance fields
.field private mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

.field private mMaxVisibleItems:I

.field private final mReusedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScrollOffset:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    .line 1072
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;
    .registers 1

    .line 1061
    iget-object p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I
    .registers 1

    .line 1061
    iget p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I
    .registers 2

    .line 1061
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I
    .registers 1

    .line 1061
    iget p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I
    .registers 2

    .line 1061
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p1
.end method

.method static synthetic access$312(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I
    .registers 3

    .line 1061
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return v0
.end method

.method static synthetic access$320(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I
    .registers 3

    .line 1061
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return v0
.end method

.method private createLayoutOrder()Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;
    .registers 3

    .line 1141
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1142
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1144
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    .line 1145
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz v1, :cond_6

    return-object v1

    .line 1150
    :cond_1e
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;-><init>(Lcom/codemao/nemo/view/CarouselLayoutManager$1;)V

    return-object v0
.end method

.method private fillLayoutOrder()V
    .registers 5

    .line 1133
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_15

    .line 1134
    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    aget-object v3, v2, v1

    if-nez v3, :cond_12

    .line 1135
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->createLayoutOrder()Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method

.method private varargs recycleItems([Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)V
    .registers 7

    .line 1126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    aget-object v2, p1, v1

    .line 1128
    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method


# virtual methods
.method initLayoutOrder(I)V
    .registers 4

    .line 1081
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    if-eqz v0, :cond_7

    array-length v1, v0

    if-eq v1, p1, :cond_13

    :cond_7
    if-eqz v0, :cond_c

    .line 1083
    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->recycleItems([Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)V

    .line 1085
    :cond_c
    new-array p1, p1, [Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    .line 1086
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->fillLayoutOrder()V

    :cond_13
    return-void
.end method

.method setLayoutOrder(IIF)V
    .registers 5

    .line 1102
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    aget-object p1, v0, p1

    .line 1103
    invoke-static {p1, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$602(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;I)I

    .line 1104
    invoke-static {p1, p3}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$102(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;F)F

    return-void
.end method
