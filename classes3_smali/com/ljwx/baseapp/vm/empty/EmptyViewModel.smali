.class public Lcom/ljwx/baseapp/vm/empty/EmptyViewModel;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "EmptyViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepository()Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;
    .registers 2

    .line 8
    new-instance v0, Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;

    invoke-direct {v0}, Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/empty/EmptyViewModel;->createRepository()Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;

    move-result-object v0

    return-object v0
.end method
