.class final Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ItemDiffCallback.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/diff/ItemDiffCallback;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TItem;TItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;

    invoke-direct {v0}, Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;-><init>()V

    sput-object v0, Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;->INSTANCE:Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/diff/ItemDiffCallback$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
