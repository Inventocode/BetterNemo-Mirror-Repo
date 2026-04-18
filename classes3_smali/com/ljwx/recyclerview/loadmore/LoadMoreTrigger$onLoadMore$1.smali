.class final Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoadMoreTrigger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;

    invoke-direct {v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;-><init>()V

    sput-object v0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;->INSTANCE:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 1

    return-void
.end method
