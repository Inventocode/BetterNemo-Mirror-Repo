.class final Landroidx/datastore/core/ReadException;
.super Landroidx/datastore/core/State;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/State<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final readException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "readException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Landroidx/datastore/core/State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/datastore/core/ReadException;->readException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getReadException()Ljava/lang/Throwable;
    .registers 2

    .line 66
    iget-object v0, p0, Landroidx/datastore/core/ReadException;->readException:Ljava/lang/Throwable;

    return-object v0
.end method
