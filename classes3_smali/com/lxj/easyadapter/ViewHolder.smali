.class public final Lcom/lxj/easyadapter/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/easyadapter/ViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/lxj/easyadapter/ViewHolder$Companion;


# instance fields
.field private final convertView:Landroid/view/View;

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/lxj/easyadapter/ViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lxj/easyadapter/ViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/lxj/easyadapter/ViewHolder;->Companion:Lcom/lxj/easyadapter/ViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "convertView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/lxj/easyadapter/ViewHolder;->convertView:Landroid/view/View;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/lxj/easyadapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final getConvertView()Landroid/view/View;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/lxj/easyadapter/ViewHolder;->convertView:Landroid/view/View;

    return-object v0
.end method

.method public final getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/lxj/easyadapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 18
    iget-object v0, p0, Lcom/lxj/easyadapter/ViewHolder;->convertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/lxj/easyadapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    const-string p1, "null cannot be cast to non-null type T of com.lxj.easyadapter.ViewHolder.getView"

    .line 21
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getViewOrNull(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/lxj/easyadapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 27
    iget-object v0, p0, Lcom/lxj/easyadapter/ViewHolder;->convertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/lxj/easyadapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :cond_15
    instance-of p1, v0, Landroid/view/View;

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0
.end method

.method public final setText(ILjava/lang/CharSequence;)Lcom/lxj/easyadapter/ViewHolder;
    .registers 4

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_e

    goto :goto_11

    .line 35
    :cond_e
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    return-object p0
.end method
