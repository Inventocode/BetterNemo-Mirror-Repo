.class public Lcom/ljwx/baseapp/vm/empty/EmptyAndroidViewModel;
.super Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;
.source "EmptyAndroidViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseAndroidViewModel<",
        "Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public createRepository()Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;
    .registers 2

    .line 10
    new-instance v0, Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;

    invoke-direct {v0}, Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/empty/EmptyAndroidViewModel;->createRepository()Lcom/ljwx/baseapp/vm/empty/EmptyDataRepository;

    move-result-object v0

    return-object v0
.end method
