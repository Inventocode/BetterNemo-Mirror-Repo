.class public Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;
.super Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
.source "EmptyDataRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public createServer()Ljava/lang/Object;
    .registers 2

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method
