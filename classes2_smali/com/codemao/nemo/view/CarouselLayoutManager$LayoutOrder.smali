.class Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutOrder"
.end annotation


# instance fields
.field private mItemAdapterPosition:I

.field private mItemPositionDiff:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/view/CarouselLayoutManager$1;)V
    .registers 2

    .line 1158
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F
    .registers 1

    .line 1158
    iget p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->mItemPositionDiff:F

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;F)F
    .registers 2

    .line 1158
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->mItemPositionDiff:F

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)I
    .registers 1

    .line 1158
    iget p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->mItemAdapterPosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;I)I
    .registers 2

    .line 1158
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->mItemAdapterPosition:I

    return p1
.end method
