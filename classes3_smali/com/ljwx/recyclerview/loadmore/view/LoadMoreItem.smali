.class public final Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;
.super Ljava/lang/Object;
.source "LoadMoreItem.kt"


# instance fields
.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "loading"

    .line 6
    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setState(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->state:Ljava/lang/String;

    return-void
.end method
