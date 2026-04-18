.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoPublishedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 110
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;)V
    .registers 5

    const-string v0, "itemHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nemoWorkPublishedListItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    instance-of p2, p2, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    const-string/jumbo v0, "流程-nemo"

    if-eqz p2, :cond_16

    const-string p2, "position是"

    .line 112
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
