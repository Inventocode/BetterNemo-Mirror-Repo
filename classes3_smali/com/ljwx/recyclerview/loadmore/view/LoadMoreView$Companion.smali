.class public final Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;
.super Ljava/lang/Object;
.source "LoadMoreView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCommonViews$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final getCommonViews()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->access$getCommonViews$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final setStateLayout(II)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 34
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
